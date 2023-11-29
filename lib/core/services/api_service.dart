import '../../app_exports.dart';

class ApiService {
  Future<List<Anime>> fetchAnimeList() async {
    // Replace this with actual API call to fetch anime data
    await Future.delayed(const Duration(seconds: 2)); // Simulating a delay 
    return [
      Anime(
        title: 'Naruto',
        genre: 'Action',
        imageUrl: 'https://static.printler.com/media/photo/141208.jpg',
        description: 'Naruto Uzumaki wants to become the strongest ninja.',
      ),
      Anime(
        title: 'One Piece',
        genre: 'Adventure',
        imageUrl: 'https://static.printler.com/media/photo/147959.jpg',
        description: 'Monkey D. Luffy sets out to find the legendary One Piece treasure.',
      ),
      // Add more anime data as needed
    ];
  }
  // Add other API-related methods
}
