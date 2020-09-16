List<String> complexes = ["简单" , "中等" , "困难"];

class ZZMealModel {
  String id;
  List<String> categories;
  String title;
  int affordability;
  int complexity;
  String complexStr;
  String imageUrl;
  int duration;
  List<String> ingredients;
  List<String> steps;
  bool isGlutenFree;
  bool isVegan;
  bool isVegetarian;
  bool isLactoseFree;

  ZZMealModel(
      {this.id,
        this.categories,
        this.title,
        this.affordability,
        this.complexity,
        this.imageUrl,
        this.duration,
        this.ingredients,
        this.steps,
        this.isGlutenFree,
        this.isVegan,
        this.isVegetarian,
        this.isLactoseFree});

  ZZMealModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categories = json['categories'].cast<String>();
    title = json['title'];
    affordability = json['affordability'];
    complexity = json['complexity'];
    complexStr = complexes[json['complexity']];
    imageUrl = json['imageUrl'];
    duration = json['duration'];
    ingredients = json['ingredients'].cast<String>();
    steps = json['steps'].cast<String>();
    isGlutenFree = json['isGlutenFree'];
    isVegan = json['isVegan'];
    isVegetarian = json['isVegetarian'];
    isLactoseFree = json['isLactoseFree'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['categories'] = this.categories;
    data['title'] = this.title;
    data['affordability'] = this.affordability;
    data['complexity'] = this.complexity;
    data['imageUrl'] = this.imageUrl;
    data['duration'] = this.duration;
    data['ingredients'] = this.ingredients;
    data['steps'] = this.steps;
    data['isGlutenFree'] = this.isGlutenFree;
    data['isVegan'] = this.isVegan;
    data['isVegetarian'] = this.isVegetarian;
    data['isLactoseFree'] = this.isLactoseFree;
    return data;
  }

  @override
  String toString() {
    return 'ZZMealModel{id: $id, categories: $categories, title: $title, affordability: $affordability, complexity: $complexity, imageUrl: $imageUrl, duration: $duration, ingredients: $ingredients, steps: $steps, isGlutenFree: $isGlutenFree, isVegan: $isVegan, isVegetarian: $isVegetarian, isLactoseFree: $isLactoseFree}';
  }
}
