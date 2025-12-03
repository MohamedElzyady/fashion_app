class CoverModel {
  final String imge;
  final String title;
  CoverModel({required this.imge, required this.title});

  static List<CoverModel> covers = [
    CoverModel(imge: "assets/cover/cover3.png", title: 'Black collection'),
    CoverModel(imge: "assets/cover/cover2.png", title: 'HAE BY HAEKIM'),
    CoverModel(imge: "assets/cover/cover1.png", title: 'White collection'),
  ];
}
