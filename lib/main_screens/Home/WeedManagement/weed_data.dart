class Details {
  final String description;
  Details({required this.description});
}

class Weed {
  final String title;
  final image_path;
  final List<Details> details;

  Weed({required this.title, required this.image_path, required this.details});
}

final List<Weed> allweedDetail = [
  Weed(
    title: "Types of Weed",
    image_path: "assets/images/sample image.jpg",
    details: [],
  ),
  Weed(
    title: "Losses due to Weed",
    image_path: "assets/images/sample image.jpg",
    details: [
      Details(
        description:
            "Weeds cause soybean yield losses up to 70% if not controlled. Weed management is very important operation in Vertisols and associated soils because of continuous rains. Weeds compete with soybean for nutrition and other natural resources at very higher rate. Hence, their management is very essential at appropriate stage. Yield losses depend on the time of weed occurrence, types of weeds and duration of weeds present in the field.",
      ),
    ],
  ),
  Weed(
    title: " Weed Management Practices",
    image_path: "assets/images/sample image.jpg",
    details: [
      Details(
        description:
            "The soybean crop should be weed free at least till 45 days after sowing (DAS).",
      ),
      Details(
        description:
            "The priority-wise agronomic practices for this include two manual weeding (20 and 40 DAS) or intercultivation (Hand hoe/Dora/Kulpa). If it is not feasible due to continuous rains, then one can opt for chemical weed control.",
      ),
    ],
  ),
  Weed(
    title: "General Practices",
    image_path: "assets/images/sample image.jpg",
    details: [
      Details(
        description:
            "While using PPI herbicides, proper soil incorporation of herbicide must be ensured and it should be used only on moist soil.",
      ),
      Details(
        description:
            "In case of PPI or PE herbicide application, farmers are advised to intercultivate the soybean crop by Dora/ Kulpa in between 20 to 25 DAS.",
      ),
      Details(
        description:
            "To control the weeds effectively, it is very necessary to make the appropriate spraying solution and its uniform spray on entire area/weed foliage",
      ),
      Details(
        description:
            "Hence farmers are advised to use 500 litres of water per hectare along with recommended quantity of herbicides using Flat Fan or Flood Jet nozzle.",
      ),
      Details(
        description:
            "It is also advised that, farmers should not carry any intercultural operations (Dora/Kulpa) till 10 days after spraying of PPI or PE herbicides. Similarly, same herbicide may not be used every year.",
      ),
    ],
  ),
];
