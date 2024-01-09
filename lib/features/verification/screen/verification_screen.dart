import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
            ),
            SizedBox(height: 30,),
            Text(
              "Verification",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(height: 18,),
            Text(
              "Please enter the OTP code sent to you by SMS",
              style: TextStyle(
                fontSize: 18
              ),
            ),
            SizedBox(height: 40,),
            Expanded(
              child: Column(
                children: [
                  VerificationCode(
                    keyboardType: TextInputType.number,
                    underlineColor: Colors.grey[600],
                    length: 4,
                    cursorColor:
                    Colors.deepPurpleAccent,
                    margin: const EdgeInsets.all(12),
                    onCompleted: (String value) {
                      setState(() {
                        _code = value;
                      });
                    },
                    onEditing: (bool value) {
                      setState(() {
                        _onEditing = value;
                      });
                      if (!_onEditing) FocusScope.of(context).unfocus();
                    },
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Didn\'t get a code? ',
                          style: TextStyle(
                              fontSize: 15
                          ),),
                        TextButton(
                          child: Text(
                            'Send again',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.deepPurpleAccent
                            ),
                          ),
                          onPressed: (){
                          },
                        ),
                      ]
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () async{
              },
              minWidth: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16,horizontal: 30),
              color: Colors.deepPurple[400],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text('Verify',style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
          ],
        ),
      ),
    );
  }
}
