class UnboardingContent{
  String image;
  String title;
  String discription;
  UnboardingContent({required this.discription,required this.image,required this.title});


}

List<UnboardingContent>contents=[
  UnboardingContent(
      discription:'Pick your food from aur menu\n        more than 35 times',
      image: 'assets/images/screen1.png',
      title:'Select From Our\n      Best Menu'),
  UnboardingContent(
      discription: 'You can pay on delivery and\n   card payment is available',
      image: 'assets/images/screen2.png',
      title: 'Easy and Safe Online Payment'),
  UnboardingContent(
      discription: 'Deliver your food at your\n            door steps'
      , image: 'assets/images/screen3.png',
      title:'Quick Delivery at Your Doorsteps')
];