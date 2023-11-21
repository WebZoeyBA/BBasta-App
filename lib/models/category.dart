import 'package:bbasta_app/models/meals.dart';
import 'package:flutter/material.dart';

class Category {
  String? id;
  String title;
  AssetImage image;
  Category({this.id, required this.title, required this.image});
}

final availableCategories = [
  Category(
    id: 'c1',
    title: "Warm Drinks",
    image: const AssetImage('images/warmb.jpg'),
  ),
  Category(
    id: 'c2',
    title: "Non-alcoholic beverage",
    image: const AssetImage('images/nonalcb.jpg'),
  ),
  Category(
    id: 'c3',
    title: "Alcoholic beverage",
    image: const AssetImage('images/alcoholicb.jpg'),
  ),
  Category(
    id: 'c4',
    title: "Grilled meat",
    image: const AssetImage('images/barbecue.jpg'),
  ),
  Category(
    id: 'c5',
    title: "Soups & Cooked dishes",
    image: const AssetImage('images/soups.jpg'),
  ),
  Category(
    id: 'c6',
    title: "Mixed jerky",
    image: const AssetImage('images/jerky.jpg'),
  ),
  Category(
    id: 'c7',
    title: "Additions",
    image: const AssetImage('images/additions.jpg'),
  ),
  Category(
    id: 'c8',
    title: "Salads",
    image: const AssetImage('images/salads.jpg'),
  ),
  Category(
    id: 'c9',
    title: "Sauces",
    image: const AssetImage('images/sauces.jpg'),
  ),
];

enum CevapPortion {
  small,
  medium,
  large,
}

var dummyMeals = [
  const Meal(
      id: 'm1',
      categories: ['c4'],
      description:
          "Ćevapi are minced meat sausages typically made from beef, lamb or a combination that are grilled and often served in bread with onions and ajvar spread.",
      title: 'Ćevapi',
      price: 2),
  const Meal(
      id: 'm2',
      categories: [
        'c4',
      ],
      title: 'Grilled Ham',
      description:
          'Grilled ham consists of sliced ham that is cooked over an open fire or grill until heated through and lightly charred in places.',
      price: 2),
  const Meal(
      id: 'm3',
      categories: ['c4'],
      title: "Spicy Grilled Ham",
      description:
          'Spicy grilled ham consists of sliced ham seasoned with spices then cooked over an open flame until heated through and lightly charred, imparting bold flavor.',
      price: 2),
  const Meal(
      id: "m4",
      categories: ['c4'],
      title: "Cheese filled grilled ham",
      description:
          'Cheese filled grilled ham consists of sliced ham with cheese inserted then cooked over an open flame, melting the cheese inside for enhanced flavor and texture.',
      price: 2.2),
  const Meal(
      id: 'm5',
      categories: ['c4'],
      title: "Breaded Calf Brain",
      description:
          'Breaded calf brain consists of slices of calf brain coated in breadcrumbs then fried until golden brown, creating a crispy exterior around the delicate brain meat.',
      price: 5),
  const Meal(
      id: 'm6',
      categories: ['c4'],
      title: "Wiener Schnitzel",
      description:
          'Wiener Schnitzel consists of a breaded veal cutlet that is deep fried until golden brown.',
      price: 2),
  const Meal(
      id: "m7",
      categories: ['c4'],
      title: "Natur Schnitzel",
      description:
          'Natur schnitzel consists of an unpounded cutlet of meat that is pan fried until cooked through, retaining its thicker texture compared to breaded schnitzel.',
      price: 2),
  const Meal(
      id: 'm8',
      categories: ['c4'],
      title: 'Grilled Chicken Breast',
      description:
          'Grilled chicken breast consists of skinless chicken breast cooked over an open flame until no longer pink inside and marked with grill lines.',
      price: 231),
  const Meal(
      id: "m9",
      categories: ['c4'],
      title: "Breaded Chicken Breast",
      description:
          "Breaded chicken breast consists of chicken breast coated in breadcrumbs then pan fried until golden brown, creating a crispy exterior.",
      price: 3),
  const Meal(
      id: 'm10',
      categories: ['c4'],
      title: "Cheese filled rolled chicken breast",
      description:
          'Breaded chicken breast consists of chicken breast coated in breadcrumbs then pan fried until golden brown, creating a crispy exterior.',
      price: 3),
  const Meal(
      id: 'm11',
      categories: ['c4'],
      title: "Chicken Skewers",
      description:
          'Chicken skewers consist of cubed chicken pieces threaded on sticks and cooked over high heat to char the outside while keeping the inside juicy.',
      price: 3),
  const Meal(
      id: 'm12',
      categories: ['c4'],
      title: 'BBQ Mix 1',
      description:
          "A mixed meat platter consists of calf schnitzel, cotlet, chicken skewer, beef sausage, liver, a customer choice meat, and two pieces of flatbread.",
      price: 3),
  const Meal(
      id: 'm13',
      categories: ['c4'],
      title: "BBQ Mix 2",
      description:
          "A mixed meat platter consists of calf cotlet, chicken skewer, a large portion of grilled chicken breast, beef sausage, a customer choice meat, and two pieces of flatbread.",
      price: 3),
  const Meal(
      id: 'm14',
      categories: ['c4'],
      title: "BBQ Mix 3",
      description:
          "A substantial mixed meat platter includes 15 ćevapi sausages, chicken skewer, 3 beef sausages, 3 pork sausages, large grilled chicken breast, fries, and 4 pieces of flatbread.",
      price: 3),
  const Meal(
      id: 'm15',
      categories: ['c4'],
      title: "BBQ Mix 4",
      description:
          'A substantial mixed meat platter includes 10 ćevapi sausages, a large portion of grilled chicken breast, 3 chicken sausages, 3 beef sausages, fries, and 3 pieces of flatbread.',
      price: 3),
  const Meal(
      id: 'm16',
      categories: ['c4'],
      title: "BBQ Mix 5",
      description:
          'A mixed meat platter includes 10 ćevapi sausages, a small portion of grilled chicken breast, 2 chicken sausages, 1 beef sausage, fries, and 2 pieces of flatbread.',
      price: 2),
  const Meal(
      id: 'm17',
      categories: ['c5'],
      title: "Begova čorba",
      description:
          "Begova corba is a hearty meat and vegetable soup that is popular in Bosnia and Herzegovina. It typically contains beef, carrots, potatoes and other seasonal vegetables in a savory broth.",
      price: 3),
  const Meal(
      id: 'm18',
      categories: ['c5'],
      title: "Trahana",
      description:
          'Trahana is a traditional dish made from fermented grains such as wheat or bulgur that have been dried. It is commonly cooked into a soup or porridge by rehydrating the grains in broth until soft and creamy. Trahana soup is nourishing and comforting, containing trahana grains in a savory broth with vegetables and sometimes meat.',
      price: 2),
  const Meal(
      id: 'm19',
      categories: ['c4'],
      title: "Sitni Ćevap",
      description:
          "Sitni ćevapi are a smaller variety of the traditional Balkan minced meat sausages known as ćevapi. They are thinner and shorter than regular ćevapi, often about finger-width in size. Sitni ćevapi are commonly served as an appetizer or snack, alongside bread and condiments for dipping.",
      price: 2),
  const Meal(
      id: 'm19',
      categories: ['c5'],
      title: "Cooked Kidney beans",
      description:
          "Tender red kidney beans simmered in our homemade broth until creamy and flavorful. A hearty plant-based protein option. Served with rice pilaf or fresh bread to soak up every bite.",
      price: 3),
  const Meal(
      id: "m20",
      categories: ['c5'],
      title: "Meat Stuffed Paprika",
      description:
          "Meat-stuffed peppers are peppers filled with a savory meat mixture and baked until tender, with the vegetables becoming soft and flavorful while retaining their shape.",
      price: 2),
  const Meal(
      id: "m21",
      categories: ['c5'],
      title: "Gulaš",
      description:
          "Goulash is a hearty Hungarian stew. It consists of meat, onions, paprika and other spices simmered in a savory broth. The rich, flavorful stew takes time to prepare but results in a warming and comforting meal.",
      price: 3),
  const Meal(
      id: "m22",
      categories: ['c5'],
      title: "Meatballs/Čufte",
      description:
          "Meatballs simmered in a savory tomato or vegetable sauce until tender. The sauce infuses the meatballs with moisture and flavor.",
      price: 3),
  const Meal(
      id: "m23",
      categories: ['c5'],
      title: "Sarma",
      description:
          "Sarma are stuffed cabbage or grape leaves filled with a savory rice and meat mixture. The stuffed leaves are simmered in a seasoned liquid until tender and flavorful.",
      price: 3),
  const Meal(
      id: "m24",
      categories: ['c8'],
      title: "Cabbage salad",
      description:
          "Cabbage salad is a light, crisp salad made with shredded cabbage and a savory dressing. It makes for a nutritious side or complement to fuller meals.",
      price: 3),
  const Meal(
      id: "m25",
      categories: ['c8'],
      title: "Season salad",
      description:
          'Seasonal salad is a fresh salad made with vegetables that are in season. It highlights the flavors of the current growing season by incorporating ingredients like tomatoes, cucumbers, peppers or greens that are locally and abundantly available. A seasonal salad is light yet nutritious side dish that also supports local farms.',
      price: 2),
  const Meal(
      id: "m26",
      categories: ['c8'],
      title: "Sour salad",
      description:
          "Sour salad is a chilled salad featuring ingredients like cabbage, tomatoes, cucumbers and onions that have been tossed with a tart, vinegar-based dressing. The bright, acidic flavors of the dressing balance and complement the crunchy vegetables for a light yet lively side dish.",
      price: 3),
  const Meal(
      id: "m27",
      categories: ['c7'],
      title: "Fries",
      description:
          "Fries are crispy, golden-brown strips or sticks of deep-fried potatoes served as a popular side dish. The outside is crisp while the inside remains fluffy after frying, creating a satisfying textural contrast. When made from fresh, high-quality ingredients, fries can be both comforting and indulgent.",
      price: 3),
  const Meal(
      id: "m28",
      categories: ['c7'],
      title: "Maccaroni",
      description:
          "Macaroni is a short, tube-shaped pasta that holds sauces well and bakes up creamy. Quick and easy side.",
      price: 3),
  const Meal(
      id: "m29",
      categories: ['c7'],
      title: "Mashed potato",
      description:
          'Mashed potatoes make a comforting addition to any meal. The fluffy mashed potatoes are creamy and satisfying alongside main dishes.',
      price: 3),
  const Meal(
      id: "m30",
      categories: ['c9'],
      title: "Curry sauce",
      description:
          "A curry sauce is a sauce used in curries that is typically made with onions, tomatoes, spices and sometimes coconut milk or yogurt. It provides moisture and flavor to curry dishes.",
      price: 2),
  const Meal(
      id: "m31",
      categories: ['c9'],
      title: "Garlic sauce",
      description:
          "A garlic sauce is a sauce made with garlic as a primary ingredient. It is often creamy or mayonnaise-based and used as a dip for bread or vegetables.",
      price: 2),
  const Meal(
      id: "m32",
      categories: ['c9'],
      title: "Mayonnaise",
      description:
          "Mayonnaise is an emulsion of oil, egg yolk and vinegar that makes for a creamy and versatile condiment.",
      price: 2),
  const Meal(
      id: "m33",
      categories: ['c9'],
      title: "Kaymak",
      description:
          "Kaymak is a salty, creamy dairy product made from the milk of water buffaloes or cows. It has a texture similar to clotted cream or a soft cheese. Kaymak is often served as an accompaniment to desserts or used in Turkish and Balkan cuisine to add richness to dishes.",
      price: 2),
  const Meal(
      id: "m34",
      categories: ['c9'],
      title: "Ketchup",
      description:
          "Ketchup is a sweet and tangy sauce made from tomatoes, vinegar, sugar, and spices. It adds bold flavor and is commonly used as a condiment for burgers, fries, sandwiches and more.",
      price: 2),
  const Meal(
      id: "m35",
      categories: ['c9'],
      title: "Senf",
      description:
          "Senf is a yellow mustard condiment used in German cuisine. It adds a tangy, peppery flavor to sandwiches and charcuterie plates.",
      price: 2),
  const Meal(
      id: 'm3ć6',
      categories: ['c1'],
      title: "Espresso coffee",
      description:
          "Espresso is a rich, full-bodied coffee brewed using fine grounds and high-pressure steam to create a bold, flavorful shot.",
      price: 1),
  const Meal(
      id: 'm37',
      categories: ['c1'],
      title: "Tea",
      description:
          "Tea is a selection of premium hot teas including black, green, herbal and white varieties from around the world to enjoy.",
      price: 1),
  const Meal(
      id: 'm38',
      categories: ['c1'],
      title: "Cappuccino",
      description:
          "A cappuccino is a coffee drink with espresso topped with steamed milk foam. It makes for a lighter caffeine pick-me-up compared to regular coffee.",
      price: 1),
  const Meal(
      id: 'm39',
      categories: ['c2'],
      title: "Cedevita",
      description:
          " A powdered drink mix that can be prepared with boiled water. It comes in various fruit flavors.",
      price: 3),
  const Meal(
      id: 'm40',
      categories: ['c2'],
      title: "Kiseljak Sparkling Water",
      description:
          " Naturally sparkling mineral water sourced from underground springs.",
      price: 3),
  const Meal(
      id: 'm41',
      categories: ['c2'],
      title: "Sensation",
      description:
          "A tropical fruit-flavored soft drink with lime and kiwano melon essence.",
      price: 3),
  const Meal(
      id: 'm42',
      categories: ['c2'],
      title: "Coca Cola",
      description:
          "A dark brown carbonated soft drink with a distinctive flavor mainly due to caramel coloring and phosphoric acid.",
      price: 3),
  const Meal(
      id: 'm42',
      categories: ['c2'],
      title: "Fanta",
      description:
          "A fruit-flavored carbonated soft drink, available in orange, strawberry, and other fruit varieties.",
      price: 3),
  const Meal(
      id: 'm44',
      categories: ['c2'],
      title: "Schwepps",
      description:
          "An international brand of tonic water and other flavored soft drinks.",
      price: 3),
  const Meal(
      id: 'm45',
      categories: ['c2'],
      title: "Cockta",
      description: "A fruit-flavored carbonated soft drink.",
      price: 3),
  const Meal(
      id: 'm46',
      categories: ['c2'],
      title: "Sprite",
      description: "A colorless, lemon and lime-flavored soft drink.",
      price: 3),
  const Meal(
      id: 'm47',
      categories: ['c2'],
      title: "Apple juice",
      description:
          "The juice pressed from apples, rich in vitamins and minerals.",
      price: 3),
  const Meal(
      id: 'm48',
      categories: ['c2'],
      title: "Orange juice",
      description: "The juice pressed from oranges, high in vitamin C.",
      price: 3),
  const Meal(
      id: 'm49',
      categories: ['c2'],
      title: "Peach juice",
      description:
          "The juice pressed from peaches, adding sweetness and flavor.",
      price: 3),
  const Meal(
      id: 'm50',
      categories: ['c2'],
      title: "Blueberry juice",
      description: "Juice made from blueberries, a blue-colored berry.",
      price: 3),
  const Meal(
      id: 'm51',
      categories: ['c2'],
      title: "Strawberry juice",
      description: "Juice made from sweet, red strawberries.",
      price: 3),
  const Meal(
      id: "m52",
      categories: ['c3'],
      title: "Sarajevsko beer",
      description:
          "A Bosnian pale lager beer brewed in Sarajevo since 1864. It has a mild, crisp flavor.",
      price: 2.5),
  const Meal(
      id: "m53",
      categories: ['c3'],
      title: "Ožujsko beer",
      description:
          "A pale lager from Croatia known for its light golden color and subtle malt flavors.",
      price: 2.5),
  const Meal(
      id: "m54",
      categories: ['c3'],
      title: "Karlovačko beer",
      description:
          "One of the most popular beers in Croatia, a pale lager with 4.5% alcohol.",
      price: 2.5),
  const Meal(
      id: "m55",
      categories: ['c3'],
      title: "Preminger beer",
      description:
          "An Austrian-style lager brewed in Bosnia and Herzegovina, with a clean, refreshing taste.",
      price: 2.5),
];
