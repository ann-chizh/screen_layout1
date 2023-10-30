import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screen_layout/second_screen.dart';


void main() {
  runApp( MaterialApp(
      home: MyApp()
  ));
}
class UserData {
  String senderFullNname;
  String senderEmail;
  String senderPhone;
  String senderCountry;
  String senderCity;
  String senderAddress;
  String senderPostcode;

  String recipientFullNname;
  String recipientEmail;
  String recipientPhone;
  String recipientCountry;
  String recipientCity;
  String recipientAddress;
  String recipientPostcode;

  UserData({
    required this.senderAddress,
    required this.senderCity,
    required this.senderCountry,
    required this.senderEmail,
    required this.senderFullNname,
    required this.senderPhone,
    required this.senderPostcode,
    required this.recipientAddress,
    required this.recipientCity,
    required this.recipientCountry,
    required this.recipientEmail,
    required this.recipientFullNname,
    required this.recipientPhone,
    required this.recipientPostcode,
  });
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> addressLines = [''];
  List<String> recipientAddressLines = [''];
  String hintText = '';
  Color myGreyColor = const Color(0xFFA9B5C1);
  Color myOrangeColor = const Color(0xFFEA560D);
  Color myNotGreyColor = const Color(0xFFE7ECF0);
  Color myThirdGreyColor = const Color(0xFF919EAB);


  TextEditingController senderNameController = TextEditingController();
  TextEditingController senderPhoneController = TextEditingController();
  TextEditingController senderEmailController = TextEditingController();
  TextEditingController senderCountryController = TextEditingController();
  TextEditingController senderCityController = TextEditingController();
  TextEditingController senderAddressController = TextEditingController();
  TextEditingController senderPostcodeController = TextEditingController();

  TextEditingController recipientNameController = TextEditingController();
  TextEditingController recipientPhoneController = TextEditingController();
  TextEditingController recipientEmailController = TextEditingController();
  TextEditingController recipientCountryController = TextEditingController();
  TextEditingController recipientCityController = TextEditingController();
  TextEditingController recipientAddressController = TextEditingController();
  TextEditingController recipientPostcodeController = TextEditingController();

  UserData user = UserData(
    senderFullNname: '',
    senderEmail: '',
    senderPhone: '',
    senderCountry: '',
    senderCity: '',
    senderAddress: '',
    senderPostcode: '',

    recipientFullNname: '',
    recipientEmail: '',
    recipientPhone: '',
    recipientCountry: '',
    recipientCity: '',
    recipientAddress: '',
    recipientPostcode: '',
  );



  //var addressLineText = "Address line + ${addressLines.length} + *";
  void handleTextClick() {
    addressLines.add('');
  }

  void handleTextRecipientClick() {
    recipientAddressLines.add('');
  }

  void handleNextStepClick() {
    recipientAddressLines.add('');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 18),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22, right: 108),
                      child: InkWell(
                        child: Image.asset('assets/back_button.png'),
                        onTap: () {},
                      ),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Ordering',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 29),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Step 1',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  width: 82.0,
                  height: 14.0,
                  child: const Text(
                    'Start date',
                    style: TextStyle(
                      fontFamily: 'Roboto-Medium.ttf',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0), // Радиус углов
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/calendar.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            },
                            child: const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Введите текст',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 48),
                Padding(
                  padding: const EdgeInsets.only(right: 231),
                  child: Container(
                    width: 104.0,
                    height: 20.0,
                    child: const Text(
                      'Sender details',
                      style: TextStyle(
                        fontFamily: 'Roboto-Medium.ttf',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 7, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: myOrangeColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                          fixedSize: const Size(164, 33),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add adress',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: myNotGreyColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                          fixedSize: const Size(164, 33),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Select adress',
                          style: TextStyle(
                            color: myThirdGreyColor, // Цвет текста
                            fontSize: 14.0, // Размер текста
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 267),
                  child: Container(
                    width: 68.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Full name*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/man.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: senderNameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Danilev Egor',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 293),
                  child: Container(
                    width: 42.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0), // Радиус углов
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/konv.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: senderEmailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'egor_zu@email.com',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 236),
                  child: Container(
                    width: 99.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Phone number*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/phone.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: senderPhoneController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '+375726014690',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 279),
                  child: Container(
                    width: 56.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Country*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/location.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: senderCountryController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Belarus',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 304),
                  child: Container(
                    width: 31.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'City*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/city.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: senderCityController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Minsk',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: addressLines.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 219),
                            child: Container(
                              width: 96.0,
                              height: 14.0,
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Address line 1*',
                                  style: TextStyle(
                                    fontFamily: 'Roboto-Medium.ttf',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              width: 375.0,
                              height: 44.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: myGreyColor,
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child:
                                    Image.asset('assets/address_line.png'),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        handleTextClick();
                                      },
                                      child: TextField(
                                        controller: senderAddressController,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Derzhinskogo 3b',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 202),
                  child: GestureDetector(
                    onTap: handleTextClick,
                    child: Text(
                      'Add address line +',
                      style: TextStyle(
                        fontFamily: 'Roboto-Medium.ttf',
                        fontSize: 16.0,
                        color: myOrangeColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 279),
                  child: Container(
                    width: 66.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Postcode*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/postcode.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: senderPostcodeController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '220069',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 56),
                Padding(
                  padding: const EdgeInsets.only(right: 231),
                  child: Container(
                    width: 121.0,
                    height: 20.0,
                    child: const Text(
                      'Recipient address',
                      style: TextStyle(
                        fontFamily: 'Roboto-Medium.ttf',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 7, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: myOrangeColor, // Цвет фона кнопки
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                          fixedSize: const Size(164, 33),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add adress',
                          style: TextStyle(
                            color: Colors.white, // Цвет текста
                            fontSize: 14.0, // Размер текста
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: myNotGreyColor, // Цвет фона кнопки
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                          fixedSize: const Size(164, 33),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Select adress',
                          style: TextStyle(
                            color: myThirdGreyColor, // Цвет текста
                            fontSize: 14.0, // Размер текста
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 267),
                  child: Container(
                    width: 68.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Full name*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/man.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: recipientNameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Ko Yuri',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 293),
                  child: Container(
                    width: 42.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0), // Радиус углов
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/konv.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: recipientEmailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'yuri@email.com',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 236),
                  child: Container(
                    width: 99.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Phone number*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/phone.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: recipientPhoneController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '+375294545687',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 279),
                  child: Container(
                    width: 56.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Country*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/location.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: recipientCountryController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Italy',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 304),
                  child: Container(
                    width: 31.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'City*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/city.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: recipientCityController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Naple',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: addressLines.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 239),
                            child: Container(
                              width: 96.0,
                              height: 14.0,
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Address line 1*',
                                  style: TextStyle(
                                    fontFamily: 'Roboto-Medium.ttf',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              width: 375.0,
                              height: 44.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: myGreyColor,
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child:
                                    Image.asset('assets/address_line.png'),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        handleTextRecipientClick();
                                      },
                                      child: TextField(
                                        controller: recipientAddressController,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Via Toledo 256',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 202),
                  child: GestureDetector(
                    onTap: handleTextRecipientClick,
                    child: Text(
                      'Add address line +',
                      style: TextStyle(
                        fontFamily: 'Roboto-Medium.ttf',
                        fontSize: 16.0,
                        color: myOrangeColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 279),
                  child: Container(
                    width: 56.0,
                    height: 14.0,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Postcode*',
                        style: TextStyle(
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 375.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/postcode.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              controller: recipientPostcodeController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: '80100',
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (text) {
                                if (text.isNotEmpty &&
                                    !RegExp(r'^[0-9]*$').hasMatch(text))
                                  hintText:'Вводите цифры';
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 36),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: myOrangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    fixedSize: const Size(335, 52),
                  ),
                  onPressed: () {
                    handleNextStepClick();
                    user.senderFullNname = senderNameController.text;
                    user.senderPostcode = senderPostcodeController.text;
                    user.senderPhone = senderPhoneController.text;
                    user.senderEmail = senderEmailController.text;
                    user.senderCountry = senderCountryController.text;
                    user.senderCity = senderCityController.text;
                    user.senderAddress = senderAddressController.text;

                    user.recipientFullNname = recipientNameController.text;
                    user.recipientPostcode = recipientPostcodeController.text;
                    user.recipientPhone = recipientPhoneController.text;
                    user.recipientEmail = recipientEmailController.text;
                    user.recipientCountry = recipientCountryController.text;
                    user.recipientCity = recipientCityController.text;
                    user.recipientAddress = recipientAddressController.text;

                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(user)));


                  },
                  child: const Text(
                    'Next step',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
