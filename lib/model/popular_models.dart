class PopularMovies {
  String image;
  PopularMovies(this.image);

  static List<PopularMovies> getMovies() {
    List<PopularMovies> moviesList = [];
    moviesList.add(
      PopularMovies("images/img1.jpg"),
    );
    moviesList.add(
      PopularMovies("images/img2.jpg"),
    );
    moviesList.add(
      PopularMovies("images/img3.jpg"),
    );
    moviesList.add(
      PopularMovies("images/img4.jpg"),
    );
    moviesList.add(
      PopularMovies("images/img5.jpg"),
    );
    moviesList.add(
      PopularMovies("images/img6.jpg"),
    );
    moviesList.add(
      PopularMovies("images/img7.jpg"),
    );
    moviesList.add(
      PopularMovies("images/img8.jpg"),
    );
    moviesList.add(
      PopularMovies("images/img9.jpg"),
    );
    moviesList.add(
      PopularMovies("images/img10.jpg"),
    );
    moviesList.add(
      PopularMovies("images/img11.jpg"),
    );
    moviesList.add(
      PopularMovies("images/img12.jpg"),
    );

    return moviesList;
  }
}