

class WelcomeContent {
  String image;
  String title;
  String deskripsi;

  WelcomeContent({
    required this.image, 
    required this.title, 
    required this.deskripsi
    });
}

List<WelcomeContent> contents = [
  WelcomeContent(
    title: 'Find Your Perfect Ride',
    image: 'asset/54.png',
    deskripsi : "Explore a curated selection of vehicles tailored to your needs and preferences with our platform."
     "Find your perfect ride conveniently through this mobile app."
  ),
  WelcomeContent(
    title: 'Effortless Booking',
    image: 'asset/effort.png',
    deskripsi : "Elevate your rental experience with our streamlined process."
     "In just a matter of minutes, you can effortlessly book your dream car."
  ),
  WelcomeContent(
    title: 'Safety First',
    image: 'asset/safety.png',
    deskripsi : "We prioritize your safety above all else."
     "Travel with confidence, knowing that your well-being is our foremost concern."
  ),
  WelcomeContent(
    title: 'Drive with Rentify',
    image: 'asset/drive.png',
    deskripsi : "Commence your Rentify journey with utmost ease,"
    "ensuring a seamless and convenient start to your driving experience."
  ),
 
];