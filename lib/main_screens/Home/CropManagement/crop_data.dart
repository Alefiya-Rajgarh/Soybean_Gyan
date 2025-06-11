class DetailItem{
  final String title;
  final String description;
  DetailItem({required this.title, required this.description});
}

class Crop {
  final String name;
  final image_path;
  final List<DetailItem> details;

  Crop({
    required this.name,
    required this.image_path,
    required this.details,
});
}

final List<Crop> allCrops =[
  Crop(
    name:"Soil Requirement",
    image_path: "assets/images/Crop manage/soil req.jpg",
    details:[
      DetailItem(title:"Description:", description:"Soybean can be grown in a variety of soil types. However, a well-drained, sandy loam to clayey soil with medium water holding capacity, rich in organic carbon, and leveled fields with near-neutral pH is ideal for harnessing maximum soybean yield. Soil with excessive salts/sodium and poorly drained conditions are not suitable for soybean.")
    ],
  ),
  Crop(
    name:"Tillage",
    image_path: "assets/images/Crop manage/tillage.jpg",
    details:[
      DetailItem(title:"Deep Ploughing:", description:"Deep ploughing is essential during summer, after harvesting the rabi crop. This facilitates exposing the hibernating insects to extreme heat and predatory birds as well as movement of nutrients and infiltration of soil water."),
      DetailItem(title:"Ploughing 3-4 years:", description:"One deep ploughing once in 3-4 years, otherwise one normal ploughing in summer followed by 2 criss-cross harrowings or cultivation for breaking of soil clods will make ideal seed bed for a good crop of soybean cultivation"),
      DetailItem(title:"Maintain soil health:", description:"To have sustainable soybean yield, it is very important to maintain soil health. Hence, farmers are advised to incorporate organic manure (well decomposed FYM @5-10 t/ha or Poultry Manure @ 2.5t/ha) at the time of land preparation."),
      DetailItem(title:"Organic Manure:", description:"If the quantity of organic manure is limited, they are advised to apply the same on rotation basis in their fields every year. It is also advised to apply Gypsum @ 150-200 kg/ha along with FYM/Poulty manure before the last harrowing in case the nutritional requirement is to be planned without sulphur sources."),
      DetailItem(title:"Pre monsoon ploughing:", description:"Soon after arrival of monsoon, the land may be prepared by 2 crisscross harrowings followed by planking to level the field. If the farmer is interested to apply PPI herbicide for control of weeds, this is the right time to do so."),
      DetailItem(title:"PPI herbicide:", description:"But for getting the actual benefit of Pre-plant Incorporation (PPI) herbicide, they should ensure that sufficient moisture is present in the soil. This also requires additional tillage for proper mixing of herbicide in the soil. Hence it should be sprayed immediately before second harrowing."),
      DetailItem(title:"Adverse climatic conditions:", description:"During past few years, soybean yields have been adversely affected across the country because of adverse climatic conditions (Uncertainties/delayed or unpredictable onset of monsoon/heavy storms and long dry spells)."),
      DetailItem(title:"Ridge furrow method:", description:"Considering these, farmers are advised to use BBF or Ridge and Furrow methods for soybean planting in order to mitigate the climatic adversities."),
      DetailItem(title:"Dry spell operation:", description:"During long dry spells, the crop sown on flat land should receive a dora/kulpa/hoeing operation to reduce moisture loss from soil during early growth period (upto one month from sowing).")
    ],
  ),
  Crop(
    name:"Harvesting and Threshing",
    image_path: "assets/images/Crop manage/harvesting & threshing.jpg",
    details:[
      DetailItem(title:"Info 1:", description:"Optimum time of harvesting is very important for soybean as it causes yield loss due to shattering and viability loss due to filed weathering"),
      DetailItem(title:"Info 2:", description:"Initiation of change of pod color of soybean is the right indication to go for harvesting. At this time, the moisture percentage of soybean grain is around 14-16%. Hence, the farmers are advised not to wait till the foliage/plant turns yellow. Harvesting can be done when 95% pod change colour from green."),
      DetailItem(title:"Info 3:", description:"The harvested soybean crop, after sun drying for 2-3 days is ready for threshing. Because of sowing of subsequent crop if threshing is to be performed later, the harvested soybean should be collected preferably on threshing floor and covered with tarpoline to avoid damage from rain/shattering. To maintain viability of the seed and to avoid loss/mechanical damage, threshing should be done at 350-400 гр."),
      DetailItem(title:"Info 4:", description:"The threshed soybean should again be allowed to sun drying for 3-4 days in order to bring down the moisture percentage up to 10% which is essential to avoid fungal infection during storage."),
      DetailItem(title:"Info 5:", description:"The storage place should be cool with aeration and insect free. The soybean bags should be kept upright as far as possible. If staging is to be done, it should be only up to 4-5 bags in order to maintain the viability/germinability of soybean seed."),
      DetailItem(title:"Info 6:", description:"While moving the seed bags to storage house, it should be carefully placed at the appropriate place/platform. The seed bags should not be in direct contact with floor/wall. The moisture seepage in the walls/floor may be a source of infection of diseases, hence can be avoided for storage.")
    ],
  ),
  Crop(
    name:"Selection of Varieties",
    image_path: "assets/images/Crop manage/varieties.jpg",
    details:[
      DetailItem(title:"Info 1:", description:"In order to avoid risk of yield reduction due to aberrant climatic situations, farmers are recommended to grow 3-4 soybean varieties with varying maturity periods (Varietal Cafeteria Approach) in their fields."),
      DetailItem(title:"Info 2:", description:"Different varieties possess resistance/tolerance to particular insect-pest and diseases. As they mature at different times, it gives convenience for the farmers during harvesting and threshing too."),
      DetailItem(title:"Info 3:", description:"Genetically, the yield of soybean varieties is inversely proportionate with maturity period. Long-duration soybean varieties are able to give more yields subject to application of irrigation in the event of early cessation of monsoon."),
      DetailItem(title:"Info 4:", description:"Farmers are advised to select 3-4 varieties popular among their zone and ensure the availability of seed of these varieties well in advance. They should also check the germination percentage of seed a fortnight prior to sowing so as to have optimum plant population."),
      DetailItem(title:"Info 5:", description:"Farmers are advised to check the germination percentage and perform other preparatory tasks to ensure optimal results during the sowing season.")
    ],
  ),
  Crop(
    name:"Seed Treatment and Inoculation",
    image_path: "assets/images/Crop manage/seed treatment.jpg",
    details:[
      DetailItem(title:"Info 1:", description:"Seed treatment is very important operation in soybean considering number of fungal, bacterial and viral diseases which causes considerable reduction in plant population and thereby yield."),
      DetailItem(title:"Info 2:", description:"Hence, farmers are advised to treat soybean seed at the time of sowing using 2g Thiram+1g Carbendazim per kg seed. They can also use mixed combination of Carboxin 37.5% + Thiram 37.5% per kg seed or Trichoderma viride @ 8-10 g/kg seed."),
      DetailItem(title:"Info 3:", description:"In areas where Yellow Mosaic Virus is infecting the soybean crop every year, farmers are recommended to carry out seed treatment with Thiamethoxam 30 FS (10 ml/kg of seed)."),
      DetailItem(title:"Info 4:", description:"Once the seed treatment with fungicides and insecticide is done, farmers are advised to inoculate the treated seed with bioinoculants like Bradyrhizobium japonicum and Phosphate Solubilizing Micro-organism (PSM) each @ 5 g/kg seed immediately before sowing."),
      DetailItem(title:"Info 5:", description:"If the soybean is grown in nontraditional/new area, they should increase the quantity to at least 10 g/kg seed."),
      DetailItem(title:"Info 6:", description:"Farmers are also advised to follow correct sequence of seed treatment with recommended fungicides followed by insecticide and seed inoculation."),
      DetailItem(title:"Info 7:", description:"However, if Trichoderma viride has to be used, all the three bioagents can be used in one go for seed treatment."),
      DetailItem(title:"Info 8:", description:"They should procure these inputs (fungicides and culture) from the authentic sources and store in cool place to maintain their viability."),
    ],
  ),
  Crop(
    name:"Sowing Time, Spacing, and Seed Rate",
    image_path: "assets/images/Crop manage/sowing time.jpg",
    details:[
      DetailItem(title:"Info 1:", description:"Since soybean is a rainfed crop grown during the kharif season, it is sown only after the arrival of monsoon. Farmers are advised to sow their crop only after 100 mm rainfall is received to ensure germination of seed and development of the plant till the next spell of rains."),
      DetailItem(title:"Info 2:", description:"The sowing of soybean seed may be done either using traditional tools like bullock drawn Dufan /Tifan /seed drill or by using tractor-drawn machines like Seed-cum-Fertilizer drill, BBF Seed Drill, FIRB Seed Drill keeping row-to-row spacing of 45 cm and plant-to-plant spacing of 4-5 cm at 3 cm depth."),
      DetailItem(title:"Info 3:", description:"In case of delayed sowing on account of late onset of monsoon, farmers are advised to narrow the row spacing at 30 cm and increase the seed rate by 25% to optimize plant population and avert the likely yield loss due to slow growth."),
      DetailItem(title:"Info 4:", description:"The seed rate and germination percentage are inversely proportional to the seed size of soybean varieties. Small-seeded varieties are excellent in germination percentage compared to bold-seeded varieties."),
      DetailItem(title:"Info 5:", description:"Therefore, the seed rate should be modified accordingly to achieve optimum plant population and yield. The recommended seed rate for soybean varieties having medium seed size (JS 20-29, JS 93-05, JS 2069) is 60-65 kg/ha while for bold seed varieties (JS 95-60, JS 20-34, NRC 7), the seed rate should be increased to 80 kg/ha. The seed rate for small-seeded varieties like NRC 37 and JS 9752 should be reduced to only 50 kg/ha"),
      DetailItem(title:"Info 6:", description:"If farmers have not used PPI herbicide (PPI) herbicides, they are advised to use the recommended pre-emergence herbicide immediately after sowing and before the emergence of soybean."),
    ],
  ),
  Crop(
    name:"Manures and Fertilizers",
    image_path: "assets/images/Crop manage/manure fertilizer.jpg",
    details:[
      DetailItem(title:"Soybean Manure:", description:"Soybean is considered to be moderately exhaustive crop. Balanced nutrients application ensures better yield performance of soybean. The integration of 5-10 t Farm Yard Manure or 2.5 t poultry manure/ha along with the basal application of N:P205:K20:S generally provides balanced nutrition for harnessing the yield potential of soybean."),
      DetailItem(title:"Fertilizer Use:", description:"In soybean, use of fertilizers is recommended only as basal application. Therefore, farmers are advised not to use any fertilizers particularly urea or DAP as top dressing in standing crop unless being recommended by soybean scientists.x"),
      DetailItem(title:"Fertilizer And Seed Mixing:", description:"Farmers are also advised not to mix fertilizers along with seed during sowing of soybean. In close contact with fertilizer it gets rotten in the soil. They should ensure the placement of seed at 3 cm and the fertilizer placement at 5 cm in the soil. The top dressing of fertilizer in soybean is generally avoided or to be used in consultation with soybean scientists."),
    ],
  ),
  Crop(
    name:"Intercropping in Soybean",
    image_path: "assets/images/Crop manage/intercroping.jpg",
    details:[
      DetailItem(title:"Description 1:", description:"Soybean is grown throughout the country as a rainfed crop during June/July-October..."),
      DetailItem(title:"Description 2:", description:"Intercropping of soybean with suitable companion crops is found to be remunerative..."),
      DetailItem(title:"Description 3:", description:"When intercropped, the sowing can be done at 30 cm row to row spacing...")
    ],
  ),
  Crop(
    name:"Water Management",
    image_path: "assets/images/Crop manage/water mnge.jpg",
    details:[
      DetailItem(title:"Description 1:", description:"Soybean is, by and large, grown as a rainfed crop during kharif season. Since last few years the distribution of rainfall was found to be uneven and erratic. Long dry spells, particularly during critical growth stages like seedling, flowering, and pod fill affect the yield adversely. Hence, farmers are advised to apply life saving irrigation during these critical stages in order to sustain yield levels. Farmers are advised to use BBF or Ridge and Furrow methods for soybean planting in order to mitigate the climatic adversities. The BBF or FIRB seed drill machines developed by ICAR-ISR can be used for the same."),
      DetailItem(title:"Description 2:", description:"As explained earlier, seedling, flowering and pod formation are the critical growth stages of soybean. Hence, during any of these stages, life saving irrigation should be given to soybean in case of long dry spells."),
    ],
  ),
];