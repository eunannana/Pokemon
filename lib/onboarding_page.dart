import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(100.0),
              child: Text(
                'Pokedex.',
                style: TextStyle(
                  color: Color.fromARGB(255, 222, 202, 86),
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Welcome to Pokedex \n You can find your favorite pokemon here', textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 19, 18, 18),
                  fontSize: 20.0,
                ),
              ),
            ),
            Image.asset(
              'assets/images/pokeball.png',
              width: 250.0,
            ),
            Expanded(child: Align(

  alignment: Alignment.bottomCenter,
  child: ElevatedButton(
              onPressed: () {
                // Navigate to next page
              },
              style: ElevatedButton.styleFrom(
    shape: const CircleBorder(),
    primary: const Color.fromARGB(255, 205, 180, 99), 
    padding: const EdgeInsets.all(20), 
  ),
  child: const Icon(Icons.arrow_forward, size: 35),
  
            ),),),
          const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
