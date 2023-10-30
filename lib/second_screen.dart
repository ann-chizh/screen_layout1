import 'package:flutter/material.dart';
import 'package:screen_layout/main.dart';

class SecondScreen extends StatelessWidget {
  Color myGreyColor = const Color(0xFFA9B5C1);
  Color myOrangeColor = const Color(0xFFEA560D);
  Color myNotGreyColor = const Color(0xFFE7ECF0);
  Color myThirdGreyColor = const Color(0xFF919EAB);
  Color myBlackColor = const Color(0xFF172027);

  final UserData user;
  SecondScreen(this.user);
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
                          fontFamily: 'Roboto-Medium',
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
                SizedBox(height: 40),
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
                          child: Image.asset('assets/search.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                Container(
                  width: 385,
                  height: 80,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: myBlackColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '${user.senderFullNname}',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        '${user.senderCountry}, ${user.senderCity},'
                            ' ${user.senderAddress}, ${user.senderPostcode}',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto-Medium.ttf',
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 56),
                Padding(
                  padding: const EdgeInsets.only(right: 231),
                  child: Container(
                    width: 104.0,
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 385.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: myGreyColor,
                        width: 0.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('assets/search.png'),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                Container(
                  width: 385,
                  height: 80,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: myBlackColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '${user.recipientFullNname}',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto-Medium.ttf',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        '${user.recipientCountry}, ${user.recipientCity},'
                            ' ${user.recipientAddress}, ${user.recipientPostcode}',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto-Medium.ttf',
                          fontSize: 14.0,
                        ),
                      ),
                    ],
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
                  onPressed: () {},
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