import 'package:ecommerceapp/model/usermodel.dart';
import 'package:ecommerceapp/utilities/icons.dart';
import 'package:ecommerceapp/view/dashboard/dashboard.dart';
import 'package:ecommerceapp/view/screens/favourite.dart';
import 'package:ecommerceapp/view/screens/homepage.dart';
import 'package:ecommerceapp/view/screens/message.dart';
import 'package:ecommerceapp/view/screens/notification.dart';
import 'package:ecommerceapp/view/screens/profile.dart';
import 'package:ecommerceapp/view/screens/settings.dart';
import 'package:ecommerceapp/view/screens/shop.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ecocontroller extends ChangeNotifier {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  bool isdropdown = false;
  String selectgender = '';
  bool hidepassword = true;
  bool hideconformpassword = true;
  bool loading = false;
  bool loadingregister = false;
  final loginformkey = GlobalKey<FormState>();
  final registerformkey = GlobalKey<FormState>();
  bool listview = false;
  bool message = false;
  bool profile = false;
  bool showhome = false;
  bool showcart = false;
  bool showfavourite = false;
  int currenttab = 0;
  UserData? _user;
  UserData? get user => _user;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  List<Widget> screens = [
    const HomeView(),
    const Messageview(),
    const SearchScreen(),
    const Settingview(),
    const ProfileView(),
  ];
  // List<String> pics = [Appicons.allv, Appicons.sandle, Appicons.gents];
  List<String> mens = [];
  hidepasswords() {
    hidepassword = !hidepassword;
    notifyListeners();
  }

  conformhidepassword() {
    hideconformpassword = !hideconformpassword;
    notifyListeners();
  }

  Future<void> signIn(context) async {
    loading = true;
    notifyListeners();

    try {
      final UserCredential authResult = await _auth.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
      print(authResult);
      // Check if sign-in is successful
      if (authResult.user != null) {
        // Update the _user field with the signed-in user's data
        _user = UserData(
            uid: authResult.user!.uid,
            username: authResult.user!.displayName ??
                "", // Use an empty string if displayName is null
            email: authResult.user!.email ?? "",
            phonenumber: authResult.user!.phoneNumber ??
                '' // Use an empty string if email is null
            );
      }
      if (_user != null) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Login Succesffully!!!')));
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Dashboard()));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('invalid Credentials')));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
    }

    loading = false;
    notifyListeners();
  }

  Future<void> registerWithUsernamePhoneAndPassword(String username,
      String email, String password, String phoneNumber) async {
    loadingregister = true;
    notifyListeners();
    try {
      // Check if the email is not empty
      if (email.isEmpty) {
        throw FirebaseAuthException(
          code: 'missing-email',
          message: 'Email is required for registration.',
        );
      }

      // Create the user with email and password
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );

      // Update the user's display name with the username
      // ignore: deprecated_member_use
      await userCredential.user?.updateProfile(displayName: username);
      await userCredential.user?.reload();

      // Update the phone number (This is a placeholder as Firebase does not provide direct phone number access)
      // Capture user credentials and notify listeners
      _user = UserData(
        uid: userCredential.user?.uid ?? '',
        username: userCredential.user?.displayName ?? '',
        email: userCredential.user?.email ?? '',
        // Retrieve the updated phone number
        phonenumber: phoneNumber,
      );

      loadingregister = false;
      notifyListeners();
    } catch (e) {
      print("Registration failed: $e");
      throw e;
    }
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    final String url = 'tel:$phoneNumber';
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<String> doctors = [
    'Dr. Mohsin Idrishi. General Practice',
    'Prof. Dr. Umid Kumar Shrestha, MD, PhD',
    'Dr. Mahesh Bahadur Adhikari, Fellowship in Urology & Urooncology. Andrologist',
    'Dr. Mahesh Dahal, MD. Endocrinology, Internal Medicine',
    'Dr. Reena Shrestha, MS',
    'Dr. Ekta Malla Rana, MD',
    'Dr. Abhishesh Manandhar, MD',
    'Dr. Niraj Karmacharya, MD',
    'S. Satish Thakur. Undergraduate Student',
  ];

  List<String> hospitals = [
    'Bir Hospital',
    'Norvic Hospital',
    'Manipal Teaching Hospital'
  ];
  List<String> location = [
    'Location: Kathmandu',
    'Location: Jorpati, Kathmandu',
    'Location: Maharajgunj, Kathmandu',
    'Location: Kathmandu',
    'Location: Lalitpur (Patan)',
    'Location: Teku, Kathmandu',
    'Location: Bansbari, Kathmandu',
    'Location: Pokhara'
  ];
  List<String> phnumber = [
    '9813546789',
    '9845768909',
    '9877654323',
    '9845342319',
    '9866223457',
    '9878654343',
    '98123211122',
    '9843451298',
    '97755446735',
  ];
  List<String> bloodbank = [
    'Nepal Red Cross Society - Central Blood',
    'Transfusion Service (NRCS - CBTS):',
    'Nepal Medical College Blood Bank:',
    'Tribhuvan University Teaching Hospital (TUTH) Blood Bank:',
    'Patan Hospital Blood Bank:',
    'National Public Health Laboratory (NPHL):',
    'Shahid Gangalal National Heart Centre Blood Bank:',
    'Manipal Teaching Hospital Blood Bank:',
  ];
}
