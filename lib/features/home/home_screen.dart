import '../../app_exports.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiService _apiService = ApiService();
  List<Anime> _animeList = [];

  @override
  void initState() {
    super.initState();
    _fetchAnimeData();
  }

  Future<void> _fetchAnimeData() async {
    try {
      final List<Anime> animeList = await _apiService.fetchAnimeList();
      setState(() {
        _animeList = animeList;
      });
    } catch (error) {
      // Handle error
      print('Error fetching anime data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('aniTV'),
      ),
      body: AnimeListWidget(animeList: _animeList),
    );
  }
}