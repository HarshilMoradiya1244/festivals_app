import 'package:festival_app/modal/festival_model.dart';

import '../modal/category_model.dart';

class Global {
  static Global g1 = Global();

  List<festivalCategoryModel> festivalList = [
    festivalCategoryModel(
        name: "DhanTeras", image: "assets/images/DhanTeras.jpeg"),
    festivalCategoryModel(
        name: "Diwali", image: "assets/images/Diwali.jpeg"),
    festivalCategoryModel(
        name: "Happy New Year", image: "assets/images/HappyNewyear.jpeg"),
    festivalCategoryModel(
        name: "Ganesh Chaturthi", image: "assets/images/GaneshChaturthi.jpeg"),
    festivalCategoryModel(
        name: "Guru Purnima", image: "assets/images/GuruPurnima.jpeg"),
    festivalCategoryModel(
        name: "Hanuman Jayanti", image: "assets/images/Hanumanjayanti.jpeg"),
    festivalCategoryModel(
        name: "Holi", image: "assets/images/Holi.jpeg"),
    festivalCategoryModel(
        name: "Janmashtami", image: "assets/images/Janmashtami.jpeg"),
    festivalCategoryModel(
        name: "Mahashivratri", image: "assets/images/MahaShivratri.jpeg"),
    festivalCategoryModel(
        name: "Makar Sankranti", image: "assets/images/Makarsankranti.jpeg"),
    festivalCategoryModel(
        name: "Navratri", image: "assets/images/Navratri.jpeg"),
    festivalCategoryModel(
        name: "Raksha Bandhan", image: "assets/images/Rakshabandhan.jpeg"),
    festivalCategoryModel(
        name: "Ramnavami", image: "assets/images/Ramnavami.jpeg"),
    festivalCategoryModel(
        name: "RepublicDay", image: "assets/images/RepublicDay.jpeg"),
  ];

  List<Map> festivalsList = [
    {"image": "assets/images/bg/diwali1.jpeg", "name": "Diwali"},
    {"image": "assets/images/bg/diwali2.jpeg", "name": "Diwali"},
    {"image": "assets/images/bg/diwali3.jpeg", "name": "Diwali"},


    {"image": "assets/images/bg/dhanteras1.jpg", "name": "DhanTeras"},
    {"image": "assets/images/bg/dhanteras2.jpg", "name": "DhanTeras"},
    {"image": "assets/images/bg/dhanteras3.jpg", "name": "DhanTeras"},



    {"image": "assets/images/bg/newyear1.jpeg", "name": "Happy New Year"},
    {"image": "assets/images/bg/newyear2.jpeg", "name": "Happy New Year"},
    {"image": "assets/images/bg/newyear3.jpeg", "name": "Happy New Year"},



    {"image": "assets/images/bg/ganeshchaturthi1.jpeg", "name": "Ganesh Chaturthi"},
    {"image": "assets/images/bg/ganeshchaturthi2.jpeg", "name": "Ganesh Chaturthi"},
    {"image": "assets/images/bg/ganeshchaturthi3.jpeg", "name": "Ganesh Chaturthi"},


    {"image": "assets/images/bg/gurupurnima1.jpeg", "name": "Guru Purnima"},
    {"image": "assets/images/bg/gurupurnima2.jpeg", "name": "Guru Purnima"},
    {"image": "assets/images/bg/gurupurnima3.jpeg", "name": "Guru Purnima"},


    {"image": "assets/images/bg/hanumanjayanti1.jpeg", "name": "Hanuman Jayanti"},
    {"image": "assets/images/bg/hanumanjayanti2.jpeg", "name": "Hanuman Jayanti"},
    {"image": "assets/images/bg/hanumanjayanti3.jpeg", "name": "Hanuman Jayanti"},


    {"image": "assets/images/bg/holi1.jpeg", "name": "Holi"},
    {"image": "assets/images/bg/holi2.jpeg", "name": "Holi"},
    {"image": "assets/images/bg/holi3.jpeg", "name": "Holi"},


    {"image": "assets/images/bg/janmashtami1.jpeg", "name": "Janmashtami"},
    {"image": "assets/images/bg/janmashtami2.jpeg", "name": "Janmashtami"},
    {"image": "assets/images/bg/janmashtami3.jpeg", "name": "Janmashtami"},


    {"image": "assets/images/bg/shivratri1.jpeg", "name": "Mahashivratri"},
    {"image": "assets/images/bg/shivratri2.jpeg", "name": "Mahashivratri"},
    {"image": "assets/images/bg/shivratri3.jpeg", "name": "Mahashivratri"},


    {"image": "assets/images/bg/sankran1.jpeg", "name": "Makar Sankranti"},
    {"image": "assets/images/bg/sankran2.jpeg", "name": "Makar Sankranti"},
    {"image": "assets/images/bg/sankran3.jpeg", "name": "Makar Sankranti"},


    {"image": "assets/images/bg/navratri1.jpeg", "name": "Navratri"},
    {"image": "assets/images/bg/navratri2.jpeg", "name": "Navratri"},
    {"image": "assets/images/bg/navratri3.jpeg", "name": "Navratri"},


    {"image": "assets/images/bg/rakshabandhan1.jpeg", "name": "Raksha Bandhan"},
    {"image": "assets/images/bg/rakshabandhan2.jpeg", "name": "Raksha Bandhan"},
    {"image": "assets/images/bg/rakshabandhan3.jpeg", "name": "Raksha Bandhan"},


    {"image": "assets/images/bg/ramnavami1.jpeg", "name": "Ramnavami"},
    {"image": "assets/images/bg/ramnavami2.jpeg", "name": "Ramnavami"},
    {"image": "assets/images/bg/ramnavami3.jpeg", "name": "Ramnavami"},


    {"image": "assets/images/bg/republicday1.jpeg", "name": "RepublicDay"},
    {"image": "assets/images/bg/republicday2.jpeg", "name": "RepublicDay"},
    {"image": "assets/images/bg/republicday3.jpeg", "name": "RepublicDay"},

  ];

  List<FestivalModel>modalList=[];
  String? festivalName;
}
