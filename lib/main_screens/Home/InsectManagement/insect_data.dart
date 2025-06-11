class Insect {
  final String name;
  final String title;
  final String identification;
  final String damage;
  final String management;
  final String image_path;

  Insect({
    required this.name,
    required this.title,
    required this.identification,
    required this.damage,
    required this.management,
    required this.image_path,
  });
}

final List<Insect> allInsects = [
  Insect(
    name: "Blue Beetle",
    title: "Blue Beetle (Cneorane sp.)",
    identification:
        "This insect is dark metallic blue (almost blackish) in colour, with an orange head. "
        "With little disturbance, it falls on the ground and shows feign-death.",
    damage:
        "Usually its peak period of activity is the first fortnight of July. During this period, it feeds on the cotyledons and"
        " young leaves, which results in stunted growth. On heavy infestation, plant population is greatly affected, and the yield loss"
        " is to the tune of 5 q/ha. Its infestation is more under high soil moisture conditions.",
    management:
        "Blue beetle can be effectively controlled by the spray of Quinalphos 25 EC @ 1.5 l/ha.",
    image_path: 'assets/images/Insect manage/blue beetle.jpg',
  ),
  Insect(
    name: "Bihar Hairy Caterpillar",
    title: "Bihar Hairy Caterpillar [Spilosoma obliqua]",
    identification:
        "Adult moths are light yellow or pink in colour. Wings are also light yellow with small black spots. Young larvae are dirty yellow which become brownish red later on. Larvae possess long bristles all over the body.",
    damage:
        "Newly hatched larvae are gregarious and skeletomize the leaves by feeding on the chlorophyll content. After 8-10 days, larvae scatter to neighboring plants and consume leaves. If timely control measures are not taken, population of larvae and the damage increase very rapidly. On heavy incidence, they completely denude the plants. This results in reduction in grain number and weight per pod and ultimately in yield. Larvae damage the crop from July-August to October",
    management:
        "Generally the Bihar hairy caterpillar can be found in abundant numbers on a single soybean plant and feed on foliage leaving only veins. These plants should be removed and destroyed for preventing its further spread. If needed, the crop should be sprayed with Triazophos 40 EC (0.8 l/ha) or Quinolphos 25 EC (1.5 l/ha) or Indoxacarb 14.5 SC (0.3 l/ha) or Chlorentraniliprol 18.5 SC (0.10 l/ha) to manage the pests.",
    image_path: 'assets/images/Insect manage/bihar caterpillar.jpg',
  ),
  Insect(
    name: "Brown Stripped Semilooper",
    title: "Brown Semilooper (Mocis undata Fabricious)",
    identification:
        "Adults are 3-4 cm large, brown coloured moths. Forewings have 3 dark brown bands, while the hind wings have smoky lines near the margins. Newly hatched larvae are greenish in colour, which become brownish on development. Grown-up larvae possess longitudinal pink and red stripes. Full-grown larvae are 4-5 cm long and make a typical semi-loop on movement.",
    damage:
        "Larvae feed on leaves from margin towards mid rib. On heavy incidence, they consume entire leaf. At later growth stage, they have also been found to feed on flowers and hard leaves. Damage results in less pods and ultimately less yield. Excess rains favour its damaging activity.",
    management: "Install 4-5 insect-specific pheromone traps per acre",
    image_path: 'assets/images/Insect manage/brown stripped semilooper.jpg',
  ),
  Insect(
    name: "Girdle Beetle",
    title: "Girdle Beetle",
    identification:
        "Girdle beetles are characterized by their dark brown or black color, with distinct red or yellow markings on their back. The body is oval-shaped and about 10-12 mm in length. They are usually found feeding on crops, particularly in the early stages of growth.",
    damage:
        "Girdle beetles cause damage to plants by feeding on the leaves and stems. This results in defoliation, stunted growth, and sometimes death of the plant. They can also transmit plant diseases, further weakening the crops.",
    management:
        "To manage girdle beetles, remove weeds around crops, as they serve as breeding sites. Use insecticides, especially those containing Pyrethroids or Neonicotinoids, to control their population. Regular monitoring of crops is essential for early detection.",
    image_path: 'assets/images/Insect manage/gridle beetle.jpg',
  ),
  Insect(
    name: "Gram Pod Borer",
    title: "Gram Pod Borer [Heliothis armigera (Hubner)]",
    identification:
        "Adult moths are dirty yellow or brownish in colour. Forewings have zigzag lines on the upper surface and a kidney-shaped black spot on the lower surface. Hind wings are white with a broad black area near the outer edge. Considerable variability has been observed for larval colour. They can be brown, pink, green, or yellowish, with differently coloured longitudinal lines over the body.",
    damage:
        "Prior to pod initiation, larvae feed on young leaves, retarding plant growth. Subsequently, they feed on buds, flowers, young pods, and seeds within the developed pods. Heavy incidence can reduce the yield by 90 per cent. This insect damages the crop from July to October.",
    management:
        "The crop should be sprayed with Indoxacarb 14.5SC @0.3 lit/ha.",
    image_path: 'assets/images/Insect manage/gram pod borer.jpg',
  ),
  Insect(
    name: "White Grub",
    title: "White Grub [Holotrichia consanguinea]",
    identification:
        "Adults are dark brown or black, nocturnal, found around the light source during nights. Grubs are dirty white with a semicircular body, and brown head and mouth parts.",
    damage:
        "Grubs feed on the roots inside the soil, which results in drying of plants. Dried plants can be pulled out even with a gentle jerk. Infested fields show patches of dried plants. Grubs remain active from July to September.",
    management: "The crop should be sprayed with chlorpyrifos",
    image_path: 'assets/images/Insect manage/white grub.jpg',
  ),
  Insect(
    name: "Leaf Folder",
    title: "Leaf Folder [Hedylepta indicata (Fabricius)]",
    identification:
        "Adults are medium-sized moths with creamish wings having brownish-black wavy lines. Larvae are shining green with an orange head.",
    damage:
        "Prior to pod initiation, larvae feed on young leaves, retarding plant growth. Subsequently, they feed on buds, flowers, young pods, and seeds within the developed pods. Heavy incidence can reduce the yield by 90%. This insect damages the crop from July to October.",
    management: "Install 4-5 insect-specific pheromone traps per acre",
    image_path: 'assets/images/Insect manage/leaf folder.jpg',
  ),
  Insect(
    name: "Leaf Miner",
    title: "Leaf Miner (Aproarema modicella Deventer)",
    identification:
        "Adults are light gray-coloured small moths. Fore wings have a white spot near the upper margin, whereas hind wings have a row of hairs on the margins. Larva is 6-8 mm long, dirty white or greenish in colour, with a posterior tapering body. The head is shining black.",
    damage:
        "Initially, larvae feed inside the leaf by mining between the two epidermal layers. This results in the typical crinkling of leaves. Later on, larvae feed on the leaf surface by remaining inside a silken web. Due to this feeding behaviour, leaves assume the shape of a 'beak'. Heavy incidence of leaf miner causes the crop to appear burnt, suffering a 40-70% yield loss. While it remains active throughout the kharif season, early infestation causes severe yield losses.",
    management: "Install 4-5 insect-specific pheromone traps per acre.",
    image_path: 'assets/images/Insect manage/leaf miner.jpg',
  ),
  Insect(
    name: "Stem Fly",
    title: "Stem Fly [Melanagromyza sojae (Zehntner)]",
    identification: "Adult is a shining black fly and about 2 mm in size. It lays eggs in cotyledons or first trifoliate. Damaging stage in maggot, which is creamish yellow in colour and 3-4 mm long in size",
    damage: "It damages the crop from germination till the end through several generations. Upto 7 days of germination, the damage is conspicuous. Maggots feed inside the plant by making zigzag tunnels. Due to early plant population to sub optimum. When attacked at later stage, although the plants do not dry up, but the stem tunneling results in reduction in number and weight of seeds per pod, and ultimately in yield. The maggot, before changing to pupa, cuts a small hole from inside for the escape of adult fly. Infested plants show typical leaf damage symptoms. About 20% yield loss can occur from stem fly damage depending upon the crop stage",
    management: "For management of stem fly treat the seed with Thiamethoxam 30 FS @ 10ml/ kg seed or Imidachloprid 48 FS @ 1.25ml/kg seed.",
    image_path: 'assets/images/Insect manage/stem fly.jpg',
  ),
  Insect(
    name: "Green Stink Bug",
    title: "Green Stink Bug (Nezara viridula Linnaeus)",
    identification: "Adults are about one and a half cm sap-sucking insects. Antennae are 5-segmented. After hatching from eggs, laid in groups, the nymphs remain congregated at one place for some time. Nymphs are light green with colored dots on the body.",
    damage: "Initially, newly hatched nymphs suck the sap in groups. After a few days, they move to the pods. Both adults and the nymphs suck the sap from seeds by piercing through the pod wall. Consequently, the seeds become shriveled, seed coat blackens, and the pods fall prematurely. About 80% reduction in yield has been found if the average population of this insect is even one adult per plant. It infests the crop at the podding stage (September-October).",
    management: "The crop should be sprayed with Quinolphos @1.5 lit/ha or Indoxacarb@333ml/ha",
    image_path: 'assets/images/Insect manage/green stink bug.jpg',
  ),
  Insect(
    name: "Tobacco Caterpillar",
    title: "Tobacco Caterpillar [Spodoptera litura (Fabricius)]",
    identification: "Adult moths possess golden brown forewings with white lines..",
    damage: "Newly hatched larvae feed gregariously on the chlorophyll content...",
    management: "Generally, the larvae of tobacco caterpillar can be found in abundant numbers..",
    image_path: 'assets/images/Insect manage/tabacco caterpillar.png',
  ),
  Insect(
    name: "White Fly",
    title: "White Fly (Bemisia tabaci Gennadius)",
    identification: "Adults are 1-2 mm in size and light yellow in colour. Wings are coated with white waxy covering. They are usually found on the under surface of leaves during day time. Nymphs are round or oval shaped and greenish in colour.",
    damage: "Adults are 1-2 mm in size and light yellow in colour. Wings are coated with white waxy covering. They are usually found on the under surface of leaves during day time. Nymphs are round or oval shaped and greenish in colour.",
    management: "For management of white fly (YMV), treat the seed with Thiamethoxam 30 FS @10ml/kg seed or Imidachloprid 48 FS @1.25 ml/kg seed. Further, if white fly is seen, spray the crop with Thiamethoxam 25WG @ 100g/500 litre water/ha.",
    image_path: 'assets/images/Insect manage/white fly.jpg',
  ),
  Insect(
    name: "Green Semiloopers",
    title: "Green Semiloopers [Chrysodeixis acuta Diachrysia orichalcea]",
    identification: "Predominantly two types of green semiloopers damage soybean the most. One - Adults have two silvery spots on each of the forewings. Larvae are pale green, with greenish-blue and white longitudinal lines on the body. Two - Adults have a large, triangular golden spot on each of the forewings. Larvae are green in colour with minute spines on the body. Both types of larvae form semilooper while in movement",
    damage: "Young larvae scratch the leaves, leaving only white membrane. Grown up larvae feed on leaves making differently shaped holes. On heavy incidence, only leaf-veins are seen on the plant. Defoliation may result up to 50% reduction in yield. These larvae reach their peak activity during August-September.",
    management: "The crop should be sprayed with Indoxacarb 14.5SC @0.3 lit/ha.",
    image_path: 'assets/images/Insect manage/green semilooper.png',
  ),
];
