

// import 'package:flutter/material.dart';

// class IntroScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ShaderMask(
//               shaderCallback: (bounds) => LinearGradient(
//                 colors: [Color.fromARGB(255, 76, 43, 139), Colors.lightBlue],
//                 tileMode: TileMode.mirror,
//               ).createShader(bounds),
//               child: Text(
//                 "Welcome to Tetris World",
//                 style: TextStyle(
                  
//                   fontFamily:"Baguet Script" ,
//                   fontSize: 45,
//                   color: Colors.white, // צבע האותיות, ישאר ללא שינוי בגלל ה- ShaderMask
//                 ),
//               ),
             
//             ),
            
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
//                 backgroundColor: Colors.white,
//               ),
//               onPressed: () {},
//               child: Text(
//                 "Start",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontFamily: "CustomFont.ttf",
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:tetris_game/board.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Colors.lightBlue,Color.fromARGB(255, 76, 43, 139),Colors.pink ],
                tileMode: TileMode.mirror,
              ).createShader(bounds),
              child: Text(
                "Welcome to Tetris World",
                style: TextStyle(
                  fontFamily: "Baguet Script",
                  fontSize: 45,
                  color: Colors.white, // הצבע של האותיות יישאר לבן בגלל ה- ShaderMask
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                backgroundColor: Colors.transparent, // שקיפות לכפתור
                shadowColor: Colors.transparent, // הסרת הצל מהכפתור
              ),
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context)=>GameBoard())
                  );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.lightBlue,Color.fromARGB(255, 76, 43, 139),Colors.pink ],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Start",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "CustomFont.ttf",
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
