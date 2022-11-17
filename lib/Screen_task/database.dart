

class doctor_data
{
  String? image;
  String? name;
  String? specialist;
  int? reviewer;
  doctor_data({required this.name,required this.image,required this.reviewer,required this.specialist,});
}
List<doctor_data>data=[
  doctor_data(name: 'Dr.Hylie Seprhon', image: "assets/images/dr11.jpg", reviewer: 540, specialist: 'Dentist'),
  doctor_data(name: 'Dr.Jhon Antoi', image: "assets/images/dr2.jpg", reviewer: 200, specialist: 'Dermatologists'),
  doctor_data(name: 'Dr.Michael Abaday ', image: "assets/images/dr5.jpg", reviewer: 320, specialist: 'Neurologists'),
  doctor_data(name: 'Dr.Terry Jew', image: "assets/images/dr6.jpg", reviewer: 400, specialist: 'General Surgery '),
  doctor_data(name: "Dr.Hady Raouof", image: "assets/images/dr7.jpg", reviewer: 220, specialist: 'Surgical Oncology '),
  doctor_data(name: 'Dr.Hamza Reda', image: "assets/images/R.png", reviewer: 440, specialist: 'Ophthalmology'),
  doctor_data(name: "Dr.Alyaa Ahmed", image: "assets/images/dr3.jpg", reviewer: 190, specialist: 'Anesthesiology'),
  doctor_data(name: "Dr.Hoda Mohy", image: "assets/images/dr4.jpg", reviewer: 500, specialist: 'Family Practice'),
];
