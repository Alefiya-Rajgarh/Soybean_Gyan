class LearnData {
  final String name;
  final String image_path;

  LearnData({required this.name, required this.image_path});
}

final List<LearnData> learnings = [
  LearnData(
    name: "Video Gallery",
    image_path: "assets/images/learn/youtube.png",
  ),
  LearnData(
    name: "Farmer Advisory",
    image_path: "assets/images/sample image.jpg",
  ),
  LearnData(
    name: "Pre-disposing Factors",
    image_path: "assets/images/learn/prel.png",
  ),
  LearnData(
    name: "Good Agri Practices",
    image_path: "assets/images/learn/guidelines.jpg",
  ),
];
