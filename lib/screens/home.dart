import 'package:afri_fair/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Image.asset('assets/home_image.png'),
            Column(
              spacing: 30,
              children: [
                Text(
                  'Join Afrifair for an \n unforgettable experience',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(AppColors.white),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
