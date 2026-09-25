import 'package:flutter/material.dart';
import 'upload_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 32, 30, 30),
        child: Center(child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container( margin: const EdgeInsets.all(24), child: 
              Text(
                'Gradients AI',
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UploadPage()),
                  );
                },
                child: const Text('Start', style: TextStyle(fontSize: 24, color: Colors.black)),
              )
          ],
        )),
      )
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: const Text('')),
  //     body: Center(
  //       child: ElevatedButton(
  //         onPressed: () {
  //           Navigator.push(
  //             context,
  //             MaterialPageRoute(builder: (context) => UploadPage()),
  //           );
  //         },
  //         child: const Text('Upload a photo'),
  //       ),
  //     ),
  //   );
  // }

  
}