import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountDetails extends StatefulWidget {
  AccountDetails({Key? key}) : super(key: key);

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(padding: const EdgeInsets.all(20), child: PageForm()));
  }
}

class PageForm extends StatefulWidget {
  @override
  _PageFormState createState() => _PageFormState();
}

class _PageFormState extends State<PageForm> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();

  final FocusNode _nameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _phoneFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailController.text = "2019vaibhavi.jadhav@ves.ac.in";
    _nameController.text = "Vaibhavi Jadhav";
    _phoneController.text = "9876543210";
  }

  @override
  void dispose() {
    _nameFocus.dispose();
    super.dispose();
    _phoneFocus.dispose();
    super.dispose();
    _emailFocus.dispose();
    super.dispose();
  }

  void ButtonValidate() {
    if (_formKey.currentState!.validate()) {
      print('${_name}:${_phone}:${_email}');

      Scaffold.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.green,
          content: Text('Submitted successfully :)')));
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text('Problem submitting form :(')));
      setState(() {
        _autovalidate = true;
      });
    }
  }

  final _formKey = GlobalKey<FormState>();

  var _autovalidate = false;
  var _name;
  var _phone;
  var _email;
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    const _defaultColor = Color(0xFFBDBDBD);
    const _focusColor = Color(0xFF7CB342);
    return SingleChildScrollView(
      child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            SizedBox(height: 80),
            InkWell(
              child: Icon(
                CupertinoIcons.arrow_left,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(height: 20),
            Text("Your account details",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            TextFormField(
                focusNode: _nameFocus,
                controller: _nameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    CupertinoIcons.person_fill,
                    size: 20,
                    color: _nameFocus.hasFocus ? _focusColor : _defaultColor,
                  ),
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFF7CB342), width: 2.0),
                  ),
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: _nameFocus.hasFocus ? _focusColor : _defaultColor,
                  ),
                ),
                onChanged: (value) {
                  _name = value;
                  setState(() {
                    isEnabled = true;
                  });
                },
                onTap: () {
                  setState(() {
                    FocusScope.of(context).requestFocus(_nameFocus);
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Name';
                  }
                  if (!(value.length > 5)) {
                    return "Enter valid name of more than 5 characters!";
                  }
                  return null;
                }),
            SizedBox(height: 20),
            TextFormField(
                controller: _phoneController,
                focusNode: _phoneFocus,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    CupertinoIcons.phone_fill,
                    size: 20,
                    color: _phoneFocus.hasFocus ? _focusColor : _defaultColor,
                  ),
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFF7CB342), width: 2.0),
                  ),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    color: _phoneFocus.hasFocus ? _focusColor : _defaultColor,
                  ),
                ),
                onChanged: (value) {
                  _phone = value;
                  setState(() {
                    isEnabled = true;
                  });
                },
                onTap: () {
                  setState(() {
                    FocusScope.of(context).requestFocus(_phoneFocus);
                  });
                },
                validator: (value) {
                  String patttern = r'(^[0-9]{10}$)';
                  RegExp regExp = new RegExp(patttern);
                  if (value!.isEmpty) {
                    return 'Please enter your Phone Number';
                  }
                  if (value.length != 10)
                    return 'Mobile Number must be of 10 digit';
                  if (!regExp.hasMatch(value)) {
                    return 'Please enter valid mobile number';
                  }
                  return null;
                }),
            SizedBox(height: 20),
            TextFormField(
                controller: _emailController,
                focusNode: _emailFocus,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    CupertinoIcons.mail_solid,
                    size: 20,
                    color: _emailFocus.hasFocus ? _focusColor : _defaultColor,
                  ),
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFF7CB342), width: 2.0),
                  ),
                  labelText: 'Email Address',
                  labelStyle: TextStyle(
                    color: _emailFocus.hasFocus ? _focusColor : _defaultColor,
                  ),
                ),
                onChanged: (value) {
                  _email = value;
                  setState(() {
                    isEnabled = true;
                  });
                },
                onTap: () {
                  setState(() {
                    FocusScope.of(context).requestFocus(_emailFocus);
                  });
                },
                validator: (value) {
                  String patttern = r'[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$';
                  RegExp regExp = new RegExp(patttern);
                  if (value!.isEmpty) {
                    return 'Please enter your Email Address';
                  }
                  if (!regExp.hasMatch(value)) {
                    return 'Please enter valid Email Address';
                  }
                  return null;
                }),
            SizedBox(height: 20),
            SizedBox(
                width: double.infinity,
                child: RaisedButton(
                    color:
                        (isEnabled) ? Colors.lightGreen[600] : Colors.grey[400],
                    child: Text('Update Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                    onPressed: () => isEnabled ? ButtonValidate() : null))
          ])),
    );
  }
}
