class ImageModel {
  String? images;
  String? name;
  String? rate;
  String? word;
  ImageModel( {
    this.images,
    this.name,
    this.rate,
    this.word = 'man',
  });

  static List<ImageModel> getListImagemodel = [
    ImageModel(images: 'assets/image1.jpg', name: 'ezio hanging', rate: '10',word: '',),
    ImageModel(images: 'assets/image2.jpg', name: 'ezio standing', rate: '8', word: '',),
    ImageModel(images: 'assets/image3.jpg', name: 'a window', rate: '9', word: '',),
    ImageModel(images: 'assets/image4.jpg', name: 'ezio hanging', rate: '10',word: '',),
    ImageModel(images: 'assets/image5.jpg', name: 'ezio standing', rate: '8', word: '',),
    ImageModel(images: 'assets/image6.jpg', name: 'a window', rate: '9', word: '',),

  ];
}