class RestoCards {
  final String restoName;
  final String type;
  final String imgURL;

  RestoCards({
    required this.restoName,
    required this.type,
    required this.imgURL,
  });
}

Map<String, List<RestoCards>> restaurantsByLocation = {
  "Italy": [
    RestoCards(
      restoName: "Casa Perbellini",
      type: "Fine Dining",
      imgURL:
          "https://picsum.photos/200/300?random=1", // Example for Fine Dining
    ),
    RestoCards(
      restoName: "Campo del Drago",
      type: "Italian",
      imgURL:
          "https://picsum.photos/200/300?random=2", // Example for Italian cuisine
    ),
    RestoCards(
      restoName: "Villa Elena",
      type: "Traditional",
      imgURL:
          "https://picsum.photos/200/300?random=3", // Example for Traditional cuisine
    ),
  ],
  "Tokyo": [
    RestoCards(
      restoName: "Sukiyabashi Jiro",
      type: "Sushi",
      imgURL: "https://picsum.photos/200/300?random=4", // Sushi restaurant
    ),
    RestoCards(
      restoName: "Narisawa",
      type: "Japanese Fine Dining",
      imgURL: "https://picsum.photos/200/300?random=5", // Japanese fine dining
    ),
    RestoCards(
      restoName: "Den",
      type: "Modern Japanese",
      imgURL: "https://picsum.photos/200/300?random=6", // Modern Japanese
    ),
  ],
  "New York": [
    RestoCards(
      restoName: "Eleven Madison Park",
      type: "Fine Dining",
      imgURL: "https://picsum.photos/200/300?random=7", // Fine Dining
    ),
    RestoCards(
      restoName: "Per Se",
      type: "Contemporary American",
      imgURL: "https://picsum.photos/200/300?random=8", // Contemporary American
    ),
    RestoCards(
      restoName: "Le Bernardin",
      type: "French Seafood",
      imgURL: "https://picsum.photos/200/300?random=9", // French Seafood
    ),
  ],
  "Paris": [
    RestoCards(
      restoName: "Le Meurice",
      type: "Luxury French",
      imgURL: "https://picsum.photos/200/300?random=10", // Luxury French
    ),
    RestoCards(
      restoName: "L'Arpège",
      type: "Vegetarian Fine Dining",
      imgURL:
          "https://picsum.photos/200/300?random=11", // Vegetarian Fine Dining
    ),
    RestoCards(
      restoName: "Pierre Gagnaire",
      type: "Modern French",
      imgURL: "https://picsum.photos/200/300?random=12", // Modern French
    ),
  ],
  "London": [
    RestoCards(
      restoName: "The Ledbury",
      type: "Modern European",
      imgURL: "https://picsum.photos/200/300?random=13", // Modern European
    ),
    RestoCards(
      restoName: "Dinner by Heston Blumenthal",
      type: "Experimental",
      imgURL: "https://picsum.photos/200/300?random=14", // Experimental cuisine
    ),
    RestoCards(
      restoName: "Core by Clare Smyth",
      type: "Contemporary British",
      imgURL: "https://picsum.photos/200/300?random=15", // Contemporary British
    ),
  ],
};
