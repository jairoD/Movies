import 'package:get/get.dart';
import 'package:movies_example/models/movie.dart';
import 'package:movies_example/services/movies_services.dart';

class MoviesController extends GetxController {
  List<Movie> moviesNow = [];
  List<Movie> moviesTop = [];
  var fetchLoading = true;
  MoviesService moviesService = MoviesService();

  getNowPlaying() async {
    var fetchNow = await moviesService.getNowPlaying();
    var fetchTop = await moviesService.getTopRated();
    if (fetchNow.isNotEmpty) {
      moviesNow = fetchNow;
    }
    if (fetchTop.isNotEmpty) {
      moviesTop = fetchTop;
    }
    fetchLoading = false;
    update();
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    getNowPlaying();
  }
}
