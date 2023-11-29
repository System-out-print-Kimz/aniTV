import '../../app_exports.dart';

class AnimeListWidget extends StatelessWidget {
  final List<Anime> animeList;

  const AnimeListWidget({Key? key, required this.animeList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Set the number of columns in the grid
        crossAxisSpacing: 8.0, // Set the spacing between columns
        mainAxisSpacing: 8.0, // Set the spacing between rows
        childAspectRatio: 0.7, // Adjust the aspect ratio to control tile size
      ),
      itemCount: animeList.length,
      itemBuilder: (context, index) {
        final anime = animeList[index];
        return Card(
          elevation: 4.0,
          child: InkWell(
            onTap: () {
              // Handle tile tap, e.g., navigate to anime details screen
            },
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 250.0, // Set the maximum height of the card
                maxWidth: 200.0, // Set the maximum width of the card
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.network(
                      anime.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      anime.title,
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      anime.genre,
                      style: const TextStyle(fontSize: 14.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
