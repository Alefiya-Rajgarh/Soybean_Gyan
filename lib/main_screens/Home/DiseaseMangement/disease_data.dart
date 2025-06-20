class disease {
  final String name;
  final String image_path;

  disease({required this.name, required this.image_path});
}

final List<disease> diseaseTypes = [
  disease(
    name: "Bacterial Diseases",
    image_path: "assets/images/Disease manage/sample image.jpg",
  ),
  disease(
    name: "Fungal Diseases",
    image_path: "assets/images/Disease manage/sample image.jpg",
  ),
  disease(
    name: "Viral Diseases",
    image_path: "assets/images/Disease manage/sample image.jpg",
  ),
];

class bacterial {
  final String name;
  final String description;
  final String symptoms;
  final String management;
  final String image_path;

  bacterial({
    required this.name,
    required this.description,
    required this.symptoms,
    required this.management,
    required this.image_path,
  });
}

final List<bacterial> allbacterialDisease = [
  bacterial(
    name: "Bacterial Blight",
    description: "",
    symptoms: "",
    management: "",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  bacterial(
    name: "Bacterial Pustule",
    description:
        "Causal Organism: Xanthomonas ax-onopodis pv. glycines Syn. Xanthomonas campestris pv. glycines (Nakano) Dye. It affects leaves, stems, pods, and seeds. Distributed throughout soybean-growing areas of India but more prevalent in Madhya Pradesh, Rajasthan, Himachal Pradesh, Uttaranchal, and the North Eastern States. The disease has the potential to cause 15-53% loss, but in India, maximum yield losses can go up to 37% with an average loss of 20% under favorable conditions. The loss is mainly due to defoliation, production of empty pods, and reduction in number and seed size. Warm (temperature around 28°C) and humid weather with frequent showers favor the disease. Unlike bacterial blight, bacterial pustule is not checked by high temperature.",
    symptoms:
        "1. On well-grown plants: The disease appears as minute, pale green elevated spots on interveinal areas on both sides of the leaves. Later on, small raised light gray to yellowish pustules are formed in the center of spots, usually on the undersurface, with a pale green halo around them. The pustules may coalesce into large spots. Leaves become ragged when dead areas are torn away by the wind. Spots may also develop on pods of susceptible varieties.",
    management:
        "Destruction of diseased crop residues/debris and deep summer ploughing. Use of disease-free and clean seeds harvested from healthy plants for cultivation. Cultivation of resistant varieties like PK327, PK416, PK1029, PK1042, JS71-05, JS90-41, Bragg, Himso1563, Indira Soya9, KHS2, MAUS32, NRC7, NRC37, SL96, VLS2, etc. Seed treatment with Streptocycline @500 mg/kg seed and spray of copper-oxychloride (1.6 kg) + Streptocycline (160g) or Kasugamycin/Validamycin (1.6 kg) + copper-oxy chloride (1.6 kg) in 800 liters of water/ha.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
];

class fungal {
  final String name;
  final String description;
  final String symptoms;
  final String management;
  final String image_path;

  fungal({
    required this.name,
    required this.description,
    required this.symptoms,
    required this.management,
    required this.image_path,
  });
}

final List<fungal> allfungalDisease = [
  fungal(
    name: "Charcoal Rot",
    description: "Causal Organism: Macrophomina phaseolina (Tassi) Goid., which also causes dry root rot, ashy or stem blight. The pathogen is soil and seed-borne. Dry conditions, relatively low soil moisture and nutrients, and temperatures ranging from 25°C to 35°C are favorable for the disease. It can cause up to 77% yield losses under congenial conditions. The disease is common in M.P., Rajasthan, Delhi, etc. It is one of the pathogens responsible for an epiphytotic that occurred in Guna district of M.P. in the 1997 season during the seedling stage, which caused substantial losses to plant stand and yield. It affects roots, stems, pods, and seeds.",
    symptoms: "1. Seed and Seedling: Seeds develop black discoloration. The fungus infects the root and stem bases of the plant, and the disease manifests as root rot and wilt. Infected seedlings exhibit reddish-brown discoloration at the point of emergence of the hypocotyl. Discoloration in the stem is evident at the soil level and above. Seedlings become weak and die prematurely. 2. Well-Grown Plant: Typical development of charcoal rot with light gray or silvery discoloration of epidermal and sub-epidermal tissues and light brown discoloration of internal tissues of the lower stem and upper tap root. Leaves become chlorotic, and wilting and drying of plants are apparent, leaving very low plant populations in the field. External lesions on the stem are also produced at a later stage. Production of abundant minute black sclerotia beneath the outer cortical tissues and in the pith region, which turn to silvery white to light black, is a diagnostic symptom of the disease.",
    management: "Crop rotation or mixed cropping with cotton or cereals. Timely use of the optimum dose of fertilizers. Use of less susceptible varieties like NRC 2, NRC 37, JS 71-05, LSB 1, MACS 13, etc. Maintenance of low plant population in the field where the disease appears in severe form to have vigorous plants. Flooding of the field 3-4 weeks before sowing or maintaining high soil moisture by irrigation, if possible, during crop growth. Seed treatment with captan or thiram @ 3 g/kg seed or use of Trichoderma harzianum or T. viride @ 4 to 5 g/kg seed.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Collar Rot or Sclerotial Blight",
    description: "Causal Organism: Sclerotium rolfsii Sacc. (Teleomorph Athelia rolfsii). The pathogen is soil borne. It affects stem bases and the lower part of the stem. The disease occurs throughout soybean growing areas of India but is most common in the states of Madhya Pradesh, Rajasthan, and Karnataka. The disease causes yield losses ranging from 30 to 40% under congenial climate. Hot (25°C to 35°C) and humid weather, well-aerated sandy or sandy loam soil, high soil moisture, high plant population, dense canopy cover, and a large amount of undecomposed organic matter from previous crops favor the disease.",
    symptoms: "I. Seed and seedling: Pathogen causes damping off in seedlings. Subsequent decay in the collar region results in drooping and wilting of seedlings. The most striking symptom is the formation of white cottony mats of mycelium around the collar region and sometimes on the soil (generally disappears during drought) with reddish brown to dark brown, globose to sub-globose sclerotia about the size of mustard seeds.\n2. Well-grown plant: Infection appears in the form of basal stem rot, wilt, and blighting of the leaves. The appearance of white cottony mats of mycelium around the collar region with sclerotia is also common. Under favorable conditions, sclerotia are even produced on the soil surface near infected plants.",
    management: "Pathogen perpetuates through soil, crop residues, and weeds; therefore, field sanitation, deep summer ploughing to bury debris and sclerotia to a depth of 15 to 25 cm help in reducing the disease. Crop rotation with maize, sorghum, etc. helps in containing the disease to some extent. Use of less susceptible variety NRC 37 will reduce the yield loss. Roguing and burning of infected plants check the spread of the disease. Seed treatment with thiram + carbendazim (2:1) @ 3 g/kg or Trichoderma viride @ 4-5 g/kg seed is effective. Soil application of neem cake @ 2.5 t/ha or soil drench with Chloroneb @ 20 kg/ha in disease hotspot areas is recommended.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Sclerotinia Stem Rot",
    description: "Causal Organism: Sclerotinia sclerotiorum. The pathogen is seed as well as soil borne. It affects Stem nodes, sometimes side branches and pods. Yield loss of 15% can occur due to this disease. Disease is favoured by cool (night temperature 10°C to 21°C), frequent rain and moist weather or wet conditions just prior to flowering to pod development stage. Continuous surface wetness for 42-72 hours is required for disease development.",
    symptoms: "1. On seed and seedling: Severely infected seeds become flat, small, and chalky.\n2. On well-grown plants: Disease generally appears at flowering stage and is characterized by water-soaked lesions at nodes of stem, which slowly turn to tan to white and spread acropetally and basipetally from nodes. Lesions later girdle the stem. Symptoms are rarely observed on the main stem at the soil line. Foliar symptoms appear 7-14 days after stem lesions as leaves become grayish green and eventually turn brown. Under conditions of excessive moisture, wilting of leaves is common. The stem is girdled by white fluffy mycelial growth on all diseased plant parts, which is a striking symptom of the disease. Numerous characteristic large, black, round to irregularly shaped sclerotia of varying sizes form externally on stems partially covered with dense white mycelium and internally in the stem pith and pods.",
    management: "Deep summer ploughing to bury plant debris. Integrating crop management by using clean seeds without sclerotia, having low plant population in the field, and rotation of soybean with non-leguminous and non-host crops. Avoiding planting of soybean directly after common bean/phaseolus spp., and sunflower etc. Seed treatment with Trichoderma viride @ 4-5 g or thiram + carbendazim (2:1) @ 3 g/kg seed.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Anthracnose & Pod Blight",
    description: "Causal Organism: Colletotrichum dematium f.sp. truncatum or Colletotrichum truncatum (Schw.) Andrus & W.D. Moore. The pathogen is highly seed-borne. It affects stems, petioles, leaves, and seeds. Anthracnose is visible throughout the soybean growing states of India. It generally causes 16 to 25% damage but sometimes loss in yield can be up to 100% especially when the disease appears in severe form during the seedling stage. Warm weather (temperature around 35°C) coupled with rain, dew, or fog, which can provide free moisture for periods of 12 hours or more, favors the infection of the disease.",
    symptoms: "1. Seed and Seedling: Infected seed becomes shriveled, moldy, and brown. Pre- and post-emergence damping off/mortality may occur when infected seeds are planted. Symptoms on cotyledons appear as dark brown sunken cankers.\n2. Well-grown plant: The crop is attacked at all stages of growth but symptoms are evident in the early reproductive stage on stems, petioles, and pods. Generally, irregular reddish to dark brown areas appear on infected parts first on the stem. Later on, these are covered by black fungal fruiting bodies (acervuli) with setae (minute black spines), which can be seen by the unaided eye. These setae are a diagnostic character of the disease.",
    management: "Use of clean and healthy seeds. Burning of infected plant debris. Cultivation of moderately resistant varieties like Bragg, Himso 1563, Hardee, PK 472, JS 80-21, Pusa 37, VLS 21, NRC 12, etc. Seed treatment with thiram + carbendazim (2:1) or captan @ 3g/kg seed and spray of zineb or mancozeb 0.2% on infected crop.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Rust",
    description: "Use of clean and healthy seeds. Burning of infected plant debris. Cultivation of moderately resistant varieties like Bragg, Himso 1563, Hardee, PK 472, JS 80-21, Pusa 37, VLS 21, NRC 12, etc. Seed treatment with thiram + carbendazim (2:1) or captan @ 3g/kg seed and spray of zineb or mancozeb 0.2% on infected crop.",
    symptoms: "1. On seedling and well-grown plants: Initially abundant chlorotic gray-brown minute spots of the size of the tip of a sewing needle appear in groups on the leaves, primarily on the lower surface. Slowly these spots increase in size and turn to tan to reddish-brown angular spots measuring 2 to 5 mm2 and later form pustules. Usually, the leaf tissues around the group of spots become yellow which distinguishes rust symptoms from bacterial pustule symptoms where leaf tissues around a single spot become chlorotic and yellow. Leaves turn brown within a short time causing early defoliation and reduction in the number of pods, seeds, and seed weight. The disease usually appears in small patches in the field then quickly spreads to the whole field. Presence of loose brown powder owing to the rupture of pustules is a characteristic symptom.",
    management: "Deep ploughing during summer. No summer and rabi cultivation of soybean and rouging of self-sown soybean plants in these seasons. Roguing and burning of infected plants, crop, and crop residues during the season. Intercropping of soybean with other rainy season crops of the area. Cultivation of rust-tolerant varieties like Ankur, PK 1024, PK 1029, JS 80-21, Indira soybean 9, MAUS 61-2 or early maturing varieties. Two to three sprays of hexaconazole (Contaf) or propiconazole (Tilt) or triadimefon (Bayleton) or oxycarboxin (Plantvax) @ 0.1% are found effective. To enable entering soybean field for spray at least after every 15 rows a strip of about 1.50 m be left vacant in the field. One protective spray of any above fungicides over the crop at 35 to 40 DAS in rust hotspot areas.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Choanephora Leaf Blight",
    description: "Causal Organism: Choanephora infundibulifera (Currey) Sacc. The pathogen is air borne. It affects leaves. In India, it is common in Delhi, M.P., and Rajasthan. Disease is reported to cause 5 to 4% losses in yield. Disease is favoured by cool weather coupled with high relative humidity close to the saturation point.",
    symptoms: "1. On well-grown plant: Symptoms appear 2-3 days after continued rain on mature leaves and occasionally on younger leaves at the top of the plant. Infected area appears grayish similar to scald or chemical injury on distal halves of infected leaves, which later turn dark. Pods may also be infected and extensive defoliation can also occur. Under extended periods of high humidity and cool weather, sporangiophores and sporangia can be seen by the unaided eye early in the morning on the infected area of leaves.",
    management: "Burning of infected plant parts to prevent secondary spread of the disease. Spray of copper oxychloride @ 0.2% or carbendazim (0.05%) over the affected crop.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Frogeye Leaf Spot",
    description: "Causal Organism: Cercospora sojina Hara. The pathogen is seed as well as air borne. It affects stems, foliage, pods, and seeds. Most prevalent in Uttaranchal, Himachal Pradesh, Madhya Pradesh, and N. E. States. Under congenial conditions, it can cause around 22% yield losses. Disease is favoured by warm and wet conditions and appears in severe proportions in seasons with frequent rainfall.",
    symptoms: "1. On seed and seedling: Light to dark gray or brown areas varying from specks to large blotches appear on seed. Sometimes cracks or flakes occur in seed coat. Germination is reduced and infected seeds produce week stunted seedlings with brown lesions on the cotyledons.\n2. On well-grown plant: First symptom normally appears at the time of flowering or two months after planting. Grayish-green water-soaked spots which turn to small light brown circular to angular spots appear on leaves and other aerial parts. These spots later on become ashy gray from the center with purplish to dark brown margins.",
    management: "Removal and burning of crop debris. Use of clean and certified seed and moderately resistant varieties like Bragg, JS 80-21, KHSb 2, VLS 21, etc. Seed treatment with thiram + carbendazim (2:1) @ 0.3%. Spray of carbendazim or thiophanate methyl @ 0.05% or zineb or ziram (0.2%) over the infected crop.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Cercospora Blight",
    description: "Causal Organism: Cercospora kikuchii (T. Matsu & Tomoyasu) Gardner. The pathogen is seed as well as air borne. It affects leaves, stems, pods, and seeds. Disease is prominently occurring in the states of Madhya Pradesh, Maharashtra, Karnataka, and North Eastern States. It can result in 15 to 30% yield loss. Humid and warm weather, especially from flowering to physiological maturity stage, favors the infection. Fungus sporulates heavily at the temperature range of 23 to 27°C. Rainfall 15 days before harvest favors infection and color development. Longer flowering periods and shortened photoperiods also favor the disease.",
    symptoms: "1. On seed and seedling: Infected seeds may have pink to light purple to dark purple areas ranging from small specks to large blotches covering the whole surface. Germination of infected seeds becomes low. Upon germination, shriveled and discolored cotyledons are produced which fall prematurely. Resulted seedlings may die within a few days.\n2. On well-grown plants: At or after the full pod stage, reddish-brown to purple, angular to irregular lesions ranging from tiny spots to large irregular blotches appear on leaves. They may coalesce to form large necrotic areas. Sometimes upper leaves appear light purple, leathery, and dark. Blighting of younger upper leaves over large areas is the striking symptom of the disease. Numerous infections cause rapid chlorosis and necrosis of leaf tissues. Veinal necrosis, defoliation from upper young leaves along with early senescence of the plant is also very common.",
    management: "Use of clean & certified seeds. Cultivation of less susceptible varieties like JS 80-21 and Bragg, etc. Seed treatment with thiram + carbendazim (2:1) or captan @ 0.3% and subsequent spray of benomyl @ 0.1% or thiophenate methyl @ 0.05% over infected crop.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Pod & Stem Blight and Phomopsis Seed Decay",
    description: "Causal Organism: Diaporthe phaseolorum (Cke. & EII.) Sacc. var. sojae (Lehman) and phomopsis longicola are two fungi involved in Pod and stem blight disease while other species D. phaseolorum var. caulivora is commonly associated with soybean seed decay and stem canker. However, in India only Diaporthe phaseolorum var. sojae is known to occur. The pathogen is seed and soil borne. It affects stems, leaf blades (less frequently), petioles, pods, and seeds. It is found to occur commonly in the states of M.P., Uttaranchal, Punjab, Himachal Pradesh, and Rajasthan. Soybean maturing under warm and humid conditions may be severely damaged.",
    symptoms: "1. On seedling: Heavily infected seeds crack badly, shrivel and remain covered with dirty white mycelium. Seedlings emerge from infected seeds have seed coat attached to cotyledons preventing proper opening of the cotyledons. Bright red to brown lesions are also produced on cotyledons which may result in seedling blight.\n2. On well-grown plant: Characteristic symptom is arrangement of black speck sized pycnidia linearly with light brown to whitish background on infected petiole of abscised leaves, broken branches, stems, and pods, later in the season. Under favorable conditions, infection may appear as premature death of etiolated branches, shedding of leaves, and undeveloped pods. Pod blight results in moldy and light seeds. Leaf infection is rare and latent infection is common.",
    management: "Ploughing down crop residues. Using healthy seed and crop rotation technique. Use of moderately resistant varieties viz. Bragg, KHSb 2, Himso 1563, JS 71-05, JS80-21, NRC 37, PK 262, VLS 2 etc. Seed treatment with thiram + carbendazim (2:1) @ 3 g/kg. Maintenance of adequate potash in the field minimizes the chances of seeds becoming moldy. Spray of benomyl or thiophanate methyl @ 0.1%.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Fusarium Collar and Pod Rot",
    description: "Causal Organism: Fusarium equiseti(Corda) Sacc. is the major and commonly occurring causal organism of Fusarium pod and collar rot in India. The pathogen is soil and seed borne. (Fusarium oxysporum producing blight, wilt and root rot, F. graminearum, F. moniliforme and F. solani causing pod and collar rot are also reported from India). Fusarium in combination with other soil and seed borne pathogens causes seed and seedling rots. It affects Collar (Stems), pods and seeds. Disease is commonly occurring in the states of Madhya Pradesh, Uttaranchal, Delhi etc. It can cause up to 64% loss in yield.",
    symptoms: "1. On seed and Seedling: Sometimes seed coat and cotyledons of the seeds may turn dark brown to black. Depressed, water-soaked, cream-colored and serrated lesions on cotyledons and hypocotyl of emerging or emerged seedlings. Later on these lesions turn dark brown to black and coalesce with each other. Hypocotyls become thin and soft and roots remain underdeveloped.\n2. On well-grown plant: Pods dry prematurely from tip to base and become dark brown to black. Severely infected pods produce no seeds.",
    management: "No effective chemical control is available. Field should be well-drained. Delay in sowing until soil moisture is adequate helps in escaping the disease.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Myrothecium Leaf Spot",
    description: "Causal Organism: Myrothecium roridum Tode ex Fries. The pathogen is predominantly air borne and also seed borne. It affects leaves and pods. The disease is distributed throughout the soybean growing area of India but more prominent in Madhya Pradesh. When it appears early, the disease can cause 20 to 40% loss in yield under favourable conditions. Warm and humid weather favours the disease.",
    symptoms: "1. On seed and seedling: Infected seeds when sown cause seed rot and blight of emerged seedlings.\n2. On well-grown plant: Disease is visible around 30 to 35 days after planting as small round brown spots on leaves. Later on these spots become dark with dark brown or purple margin surrounded by a translucent area in concentric rings. Slowly spots merge with each other and become of irregular shape. On maturity, sporodochia are visible as white erumpent structures on translucent zone of the spots, which later turn to black dot-like structures. This is the characteristic symptom of the disease.",
    management: "Use of healthy and certified seed. Cultivation of resistant/moderately resistant varieties like Bragg, JS 71-05, JS 335, MACS 13, MACS 124, MAUS 47, NRC 7, PK 564, etc. Seed treatment with thiram + carbendazim (2:1) @ 3 g per kg followed by spray of carbendazim or thiophanate methyl (0.05% to 0.1% or 400 to 800 g/ha) or mancozeb (0.25% or 2 kg/ha). First spray at 35 DAS is very effective.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Root Rot, Stem Rot & Aerial Blight",
    description: "Causal Organism: The disease is incited by Rhizoctonia solani Kuhn., whose teleomorph is Thanatephorus cucumeris. The pathogen is seed, soil and air borne. It affects roots, lower stems (just below soil line in seedlings as well as in mature plants), stems, leaves, petioles and pods. Distributed throughout India but more severe in the states of Madhya Pradesh and Uttaranchal. It can cause up to 35% loss in yield on account of pre and post-emergence damping off, root rot, seedling blight and blight in well-grown plants resulting in fewer pods and seeds per pod. A temperature range of 24 to 32°C and continued wet soil condition with soil moisture at 30-60 percent of water holding capacity is favorable for root rot phase. Whereas soil moisture of about 70 percent of water holding capacity, sandy and light soils and pH greater than 6.6 favors seedling blight phase. Rain or free moisture on plant surface with warm wet or humid weather is very important for the development of foliar/aerial blight phase of the disease. Severity of disease increases with monoculture of soybean.",
    symptoms: "1. Seed and Seedling: Infected seeds have irregularly shaped tan or light brown sunken lesions. Seedlings with infected shoot apices stop growing and become stunted and cotyledons remain green. Reddish-brown sunken lesions on roots and basal portion of the stems just above the soil line, which are often surrounded by brown mycelial growth. Besides causing pre-emergence mortality, seedlings may die later on as the lower part of the taproot and the secondary root system are usually killed.\n2. On well-grown plant: Small or large initially water-soaked and then grayish-brown to reddish-brown spots which later turn to dark brown appear first on lower leaves. Later on, entire leaf gets blighted in due course. Root rot of adult plant in the form of brown to dark brown discoloration of the cortical and lignified tissues is also common, which is most evident during flowering. Development of a reddish-brown canker around the base of the stem, easy peeling off cortical tissues of the root and drooping of leaves which remain attached to the dead plant are the other characteristics of this disease. Subsequently, at times patches of dead or dried plants are visible in the field.",
    management: "Cultivation of moderately disease-resistant/tolerant varieties like PK 262, PK 416, PK 472, PK 1042, PK 564, SL 295 etc., especially for aerial blight. Avoidance of excess plant population. Seed treatment with thiram + carbendazim (2:1) @ 3 g/kg or with captan @ 3 - 4 g/kg. One spray of carbendazim or thiophanate methyl (0.05%) or mancozeb (0.25%) is found very effective.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Brown Spot",
    description: "Causal Organism: Septoria glycines Hemmi. The pathogen is seed and air borne. It affects stems, leaves, pods, and seeds. In India, the disease is commonly occurring in the states of Himachal Pradesh, Uttaranchal, Madhya Pradesh and North Eastern States. It can cause 8-15% yield loss. Warm and humid weather is favorable for the disease. Temperature range of 15-30°C (optimum is 25°C) is favorable for the disease development.",
    symptoms: "1. On seed and seedling: The symptoms of the disease are visible as brown minute spots at 30 to 35 days after sowing of the unifoliate leaves of the seedlings.\n2. On well grown plant: At pod fill stage, irregular dark brown lesions 1 to 4 mm in diameter appear on both the surfaces of unifoliate as well as trifoliate leaves. These lesions gradually darken until they become chocolate brown to blackish brown. Late in the growing season, leaves become rusty brown. As the plant approaches maturity, premature defoliation takes place. Rapid and almost yellowing of leaves is characteristic of this disease. Irregular brown lesions with indefinite margins, from small to big specks, appear on the main stems, branches, petioles, and pods.",
    management: "Crop rotation with non-legume crop. Burial or burning of infected crop residues during the season and after harvest. Use of healthy seeds of improved varieties. Effective control can be achieved by spray of carbendazim or thiophanate methyl (0.05%) or mancozeb (0.25%) from bloom to pod fill stage.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Phyllosticta Leaf Spot",
    description: "Causal Organism: Disease is caused by Phyllosticta sojicola Massal or P. glycinea Tehon & Daniels. The pathogen is seed and air borne. It affects stems, leaves, petioles, and pods. In India, the disease is common in Delhi, Madhya Pradesh, Uttar Pradesh, Uttaranchal, and Rajasthan. Disease is considered of minor economic importance. Major share of loss is caused on the account of severe defoliation. Cool and moist weather is favourable for the disease.",
    symptoms: "1. On seed and seedling: Seeds may develop brown specks or spots and become small and shrivelled.\n2. On well-grown plant: Pale green to dull gray small, round, oval to irregular spots with a narrow dark brown or purplish border appear on the margin of leaf lamina of younger leaves. Usually only the first few trifoliate leaves are affected. These gradually coalesce, enlarge and progress inwards to form an irregular V-shaped area turning brown to dark brown in colour. When the spots grow older, numerous small black specks (pycnidia) form in older leaves. Severe defoliation can also occur. Fungus may progress to stem, stipules, and petiole as superficial grey to almost white lesions with narrow purplish to brown border. Disease can also cause large lesions with dark purplish borders surrounding lighter, brownish centers on pods on which numerous dark pycnidia develop. Seeds beneath the pod lesions may also be infected.",
    management: "Crop rotation with non-legume crop. Use of disease-free and clean seed. Deep ploughing to bury crop residues. Spray of carbendazim or thiophanate methyl (0.05%) at the time of appearance of the disease.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Aristastoma Leaf",
    description: "Causal Organism: Aristastoma guttulo-sum and A. camarographioides are the pathogens responsible for this disease. It affects leaves.",
    symptoms: "1. On well-grown plant: Irregular 2 to 22 mm in diameter spots limited at margin by vein with indistinct edge and more and less clear, alternating, narrow, light and dark brown areas appear on the leaves. Chlorotic halos are sometimes present. Diffuse chlorosis on lower surface is the distinct symptom. Plants generally remain stunted.",
    management: "No information is available on the management of the disease.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Powdery Mildew",
    description: "Causal Organism: Microsphaera diffusa Cke. & Pk. (syns. Erysiphe polygoni DC., E. glycines Tai). It affects predominantly on leaves but can also appear on cotyledons, stems, and pods. In India, it is common in Madhya Pradesh, Rajasthan, Maharashtra, Karnataka, and North Eastern States. Losses ranging from 10 to 35% are reported. A temperature range of 18-24°C is favorable for disease development, whereas at 30°C it is arrested.",
    symptoms: "1. On well-grown plants: White powdery patches/lesions form on stems, leaves, and pods. In severe conditions, all above-ground parts are covered with a white powder-like mass containing mycelia and conidia. The crop appears as if sprayed with light violet-white powder. Symptoms such as chlorosis, necrosis, green and yellow islands, and crinkling may develop on leaves.",
    management: "Use resistant varieties like PK 472. Spray dinocap (Karathane, etc.) or carbendazim @ 0.1% at the appearance of the disease.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  fungal(
    name: "Target Leaf Spot",
    description: "Causal Organism: Corynespora cassicola (Berk. & Curt.) Wei. The pathogen is seed, soil, and air-borne. It affects roots (not common in India), stems, leaves, pods, and seeds. The disease is very common and severe in the states of Himachal Pradesh but also present in Madhya Pradesh. The disease can cause yield loss ranging from 18 to 32%. In temperate regions, the pathogen grows best at 18–20°C, whereas in warmer regions it prefers 28°C.",
    symptoms: "1. On seed & seedling: Small brown-blackish lesions are produced on seeds. Stems and roots are infected in the early seedling stage, and underground symptoms can be seen as early as three days after emergence. 2. On well-grown plant: Infection in leaves initiates with minute chlorotic or reddish-brown spots with a yellow halo. Later, the spots grow and resemble a shooting target. Spread is quick under high humidity, leading to severe defoliation before full pod development.",
    management: "Burning of infected plant parts to prevent secondary spread of the disease. Cultivation of moderately resistant varieties like JS 335, JS 72-44, PK 1024, Pb 1, MAUS 71, DSb 5, etc. Spray of carbendazim or thiophanate methyl (0.05%).",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
];

class viral {
  final String name;
  final String description;
  final String symptoms;
  final String management;
  final String image_path;

  viral({
    required this.name,
    required this.description,
    required this.symptoms,
    required this.management,
    required this.image_path,
  });
}

final List<viral> allviralDisease = [
  viral(
    name: "Soybean Mosaic",
    description: "Causal Organism: Soybean mosaic virus causes the disease. The virus is a flexuous rod that belongs to the potyvirus group and is seed, graft, and sap transmitted. The disease has a narrow host range and is transmitted in a non-persistent manner by about 32 aphid species belonging to 15 different genera. It affects seedlings, leaves, stems, petioles, pods, and seeds. The disease occurs all over the soybean-growing areas of India. It can reduce yields ranging from 50 to 93%. Losses ranging from 2-30% have been reported from Delhi. Symptoms are more severe with cool temperature (near 18°C) and humid conditions but less severe at 24-25°C, while symptoms are masked above 30°C. The way of expression of the disease depends on the virus strain, host genotype, environmental conditions, and the presence of other complementary viruses.",
    symptoms: "1. On seed and seedling: Infected seeds many times get mottled by having the same color on the seed coat as that of the hilum, which is popularly known as hilum bleeding. When infected seeds are used for sowing, the initial symptoms of the disease are severe mosaic of dark and light green areas and downward curling of primary leaves giving seedlings a spindly appearance. Such plants have rugosed, crinkled, mottled, and curled unifoliate leaves. Subsequently, trifoliate leaves become chlorotic, severely stunted, mottled, and rugosed. Plants get stunted with shortened petioles and internodes.\n\n2. On well-grown plant: Trifoliate leaves have a mosaic of light and dark green areas that may later become raised or blistered mostly along the main veins. Dark green enations along the puckered leaves and necrosis are also occasionally present. Browning may also be visible in stems and petioles.",
    management: "1. Pre-sowing soil application of phorate @10kg/ha.\n2. Use of moderately resistant varieties like JS 71-05, KHSb 2, LSb 1, MACS 58, MACS 124, PK 416, PK 564, Punjab 1, VLS 2, etc.\n3. Cultivation of 2 to 3 or more varieties and changing varieties at least every two years.\n4. Two foliar sprays of thiamethoxam 25WG @ 100 g/ha or methyl demeton 800ml/ha at 30 and 45 days after sowing.\n5. Weed-free clean cultivation.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  viral(
    name: "Yellow Mosaic",
    description: "Causal Organism: The incitant of the disease is Mung bean yellow mosaic virus. It is a gemini virus recently named genus Begomovirus which is not seed borne and transmitted predominantly by white flies Bemisia tabaci and B. gossypiperda and also by aphids and pollen. Disease produces symptom only on leaves. The disease is more common and severe in Kangra region of Himachal Pradesh, tarai region of Uttaranchal, plains of Delhi, Punjab and Haryana and parts of Madhya Pradesh and Uttar Pradesh. It can cause yield loss ranging from 5-90%.",
    symptoms: "1. On seed and seedling: Symptoms can be seen in seedlings within 15 days of germination as small yellow diffused patches which later on coalesce to make leaf more or less complete yellow. 2. On well-grown plant: Symptoms of the disease appear in the form of conspicuous yellowing along small veins of the leaves followed by severe yellow mosaic and mottling of leaves, which is a diagnostic symptom. Yellowing is either scattered or produced in indefinite bands along the major veins. Rusty necrotic spots appear in the yellow areas as the leaves mature. Sometimes, growth of mould can be seen in the infected leaf areas.",
    management: "Pre-sowing soil application of phorate @10kg/ha. Use of resistant varieties like PK 416, PK 472, PS 564, PK 1024, PK 1029, PK 1042, Pusa 37, SL 295, SL 525, etc. Cultivation of 2 to 3 or more varieties and change of varieties at least after every two years. Roguing of infected plants and plant parts. Weed-free cultivation. Seed treatment with thiamethoxam 70WS @ 3g/kg seed in hotspot areas and spray of thiamethoxam 25 WG @ 100 g or methyl dematon 25EC @ 0.8 lit/ha or ethofenprox 10 EC @ 1.0 lit/ha.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  viral(
    name: "Indian Bud Blight",
    description: "Causal Organism: In India, the causal agent has been identified as the Peanut Bud Necrosis Virus, whereas, in other countries, it is known as Tobacco Ring Spot Virus (TRSV). This virus has been described as a pleomorphic and unstable myxovirus. It affects leaves, buds (especially terminal buds), stems, petioles, and pods. The disease is widely distributed throughout India. It was severe in Parbhani (Maharashtra) in 1986, in Karnataka in 1986, and in Sehore (Madhya Pradesh) in 1987, where it caused an epidemic situation. Yield losses of 70-80% in Karnataka and 12% in Delhi have been reported. The disease is more severe when the temperature is below 25°C and when there is water stress. The infection is less likely when the temperature is low during the winter. The symptoms are also less pronounced during the cold period.",
    symptoms: "1. On fully grown plants: The most prominent symptom is the browning and twisting of the terminal buds, which later develops into a crook shape. Other buds become brown, necrotic, and brittle. Necrosis is also common in the leaves, midrib, petiole, and stems. The petioles often become thick and small and may be curled, distorting the shoot tips. Sometimes, petioles become so brittle that they break when pinched between the fingers. The leaves become smaller, curled, and the leaf surface becomes rough and bronze-like. If the infection occurs early, the plants become severely stunted, with reduced internodal length and many auxiliary shoots. Pods do not form or are severely underdeveloped or destroyed.",
    management: "Resistant varieties and appropriate chemical control are not available. However, the following measures can help in reducing the severity of the disease and minimize yield loss. Less susceptible varieties like JS71-05, JS 79-81, KHSb 1, etc., should be used. Crops should be kept free from broadleaf weeds. Infected plants or plant parts should be rogueed and burned. Seed treatment with Imidacloprid @ 5 gm/kg and spraying of Nuacron (0.01%) or Rogor (0.01%) or any other systemic insecticide is recommended.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
  viral(
    name: "Phyllody Associated No Podding Syndrome",
    description: "Causal Organism: Phytoplasma. The causal agent is Phytoplasma, usually transmitted by leaf hoppers. It affects flower buds, flowers, stems, pods, and seeds. The disease is widespread but more common in Madhya Pradesh. The disease can result in a 20-30% loss in yield.",
    symptoms: "1. On well-grown plants: Symptoms generally appear either at the time of flowering or the beginning of pod formation. Infected plants may have excessive branching, stem with short internodes, stunted growth, and profuse bud proliferation. Floral organs of such plants transform into leaf-like structures known as phyllody. Plants may bear pods or have scanty pods with no seed or small wrinkled seed. Delayed senescence as such plants remain green for more time than the healthy ones. Premature green pods express in-situ seed germination.",
    management: "Sprays of chlorpyrifos 1.5 L, or triazophos 800 ml, or methomyl 1 kg, or ethion 1.5 L, or quinalphos 1.5 L, or ethofenprox 1 L per hectare at 18-20 days and 28-30 days after sowing (spray solution required is 800 L/ha) for hotspot areas. In other areas, one spray at 28-30 days after sowing. The other recommended package of practices are as follows: 1. Soil application of Phorate 10 G @ 1 kg a.i./ha at the time of planting. 2. Seeds from affected fields are not to be used for sowing. 3. Use of optimum seed rates (65 to 80 kg/ha for small and bold seeded varieties) to avoid high plant populations, which predispose plants to insect incidence. 4. If possible, avoid cultivation of crops such as sun-hemp and sesame, which may harbor insect vectors and phytoplasma.",
    image_path: 'assets/images/Disease manage/sample image.jpg',
  ),
];
