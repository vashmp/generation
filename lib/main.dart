import 'package:flutter/material.dart';
import 'package:generation/core/datasources/remote/dio_remote_datasource.dart';
import 'package:generation/core/datasources/remote/interfaces/cat_remote_retrofit_repo.dart';
import 'package:generation/core/datasources/models/breed_model.dart';
import 'package:logger/logger.dart';

final logger = Logger();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CatListScreen(),
    );
  }
}

class CatListScreen extends StatefulWidget {
  const CatListScreen({super.key});

  @override
  State<CatListScreen> createState() => _CatListScreenState();
}

class _CatListScreenState extends State<CatListScreen> {
  late Future<List<BreedModel>> _catsFuture;

  @override
  void initState() {
    super.initState();
    final dio = DioRemoteDataSource().dio;
    final client = CatRemoteRetrofitRepo(dio);
    _catsFuture = client.getBreeds();
  }

  void _showCatDetails(BuildContext context, BreedModel cat) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (cat.image != null)
              Image.network(
                cat.image!.url,
                fit: BoxFit.cover,
                width: double.infinity,
              )
            else
              const SizedBox(
                width: double.infinity,
                height: 200,
                child: Center(
                  child: Icon(Icons.image_not_supported, size: 50),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cat.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(cat.description ?? 'Описание отсутствует'),
                ],
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Закрыть'),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cat Breeds')),
      body: FutureBuilder<List<BreedModel>>(
        future: _catsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Ошибка: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Нет данных'));
          }

          final cats = snapshot.data!;

          return GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1,
            ),
            itemCount: cats.length,
            itemBuilder: (context, index) {
              final cat = cats[index];

              return GestureDetector(
                onTap: () => _showCatDetails(context, cat),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: cat.image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  cat.image!.url,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : const Center(
                                child: Icon(
                                  Icons.image_not_supported,
                                  size: 30,
                                ),
                              ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        color: Colors.black.withOpacity(0.6),
                        child: Text(
                          cat.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
