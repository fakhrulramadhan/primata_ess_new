
// class CheckAuth extends StatefulWidget {
//   @override
//   _CheckAuthState createState() => _CheckAuthState();
// }

// class _CheckAuthState extends State<CheckAuth> {
//   bool isAuth = false;
//   @override
//   void initState() {
//     super.initState();
//     _checkIfLoggedIn();
//   }

//   void _checkIfLoggedIn() async {
//     SharedPreferences localStorage = await SharedPreferences.getInstance();
//     var token = localStorage.getString('token');
//     if (token != null) {
//       setState(() {
//         isAuth = true;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget child;
//     if (isAuth) {
//       child = HomePage();
//     } else {
//       child = Login();
//     }
//     return Scaffold(
//       body: child,
//     );
//   }
// }
