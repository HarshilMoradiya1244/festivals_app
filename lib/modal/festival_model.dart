class FestivalModel {
  String?  image,name;

  FestivalModel({this.image, this.name});

  factory FestivalModel.fromMap(Map m1) {
    FestivalModel a1 = FestivalModel(
        image: m1['image'],
        name: m1['name']);
    return a1;
  }
}