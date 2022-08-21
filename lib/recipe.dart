class Recipe_Data {
  String label;
  String imageURL;
  // TODO: Add servings and ingredients here
  Recipe_Data(
    this.label,
    this.imageURL,
  );
  // TODO; Add List<Recipe> here
  static List<Recipe_Data> samples = [
    Recipe_Data(
      'Spaghetti and Meatballs',
      'assets/2126711929_ef763de2b3_w.jpg',
    ),
    Recipe_Data(
      'Tomato Soup',
      'assets/27729023535_a57606c1be.jpg',
    ),
    Recipe_Data(
      'Grilled Cheese',
      'assets/3187380632_5056654a19_b.jpg',
    ),
    Recipe_Data(
      'Chocolate Chip Cookies',
      'assets/15992102771_b92f4cc00a_b.jpg',
    ),
    Recipe_Data(
      'Taco Salad',
      'assets/8533381643_a31a99e8a6_c.jpg',
    ),
    Recipe_Data(
      'Hawaiian Pizza',
      'assets/15452035777_294cefced5_c.jpg',
    ),
  ];
}
// TODO: Add Ingredient() here