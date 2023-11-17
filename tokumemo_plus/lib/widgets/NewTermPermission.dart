import 'package:flutter/material.dart';
class NewTermsPermissionView extends StatelessWidget{
  String TermText="";
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              SingleChildScrollView(

              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: (){},
                    child: const Text('Button'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      child: const Text('Button')
                  )
                ],
              )
            ],
          )
        ),
    );
  }
}