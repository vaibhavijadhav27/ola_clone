import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ola_clone/screens/OTPController.dart';


class LoginPhoneNumber extends StatefulWidget {
  const LoginPhoneNumber({Key? key}) : super(key: key);

  @override
  _LoginPhoneNumberState createState() => _LoginPhoneNumberState();
}

class _LoginPhoneNumberState extends State<LoginPhoneNumber> {
    String dialCodDigits = "+00";
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold( body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text("Enter your mobile number",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: CountryCodePicker(
                      onChanged: (country) {
                        setState(() {
                          dialCodDigits = country.dialCode!;
                        });
                      },
                      initialSelection: "IN",
                      showCountryOnly: false,
                      showOnlyCountryWhenClosed: false,
                      favorite: ["+1", "US", "+91", "IN"],
                    ),
                  ),
                  Container(
                      height: 80,
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                            
                            hintText: "Mobile Number",
                            prefix: Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(dialCodDigits),
                            )),
                        maxLength: 12,
                        keyboardType: TextInputType.number,
                        controller: _controller,
                      )),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (c) => OTPContoller(
                            phone: _controller.text,
                            codeDigits: dialCodDigits,
                          )));
                },
                child: Container(
                    height: 50,
                    color: Colors.black,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 3),
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width / 14),
                            child: Icon(
                              Icons.arrow_forward_sharp,
                              color: Colors.white,
                            ),
                          )
                        ])),
              ),
            ])
    )
    ));
  }
}