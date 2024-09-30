import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SetPinScreen extends StatelessWidget {
  const SetPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/icon/icon.png",
              height: 100,
              width: 100,
              alignment: Alignment.topRight,
            ),
            const SizedBox(height: 10),
            const Text(
              "Set Kubera PIN",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(95, 92, 92, 1),
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 10),
            const Text(
                'Please Set 4 digit mobile PIN for Kubera App to securly login into your account. Once set, You can access your account via PIN'),
            const SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Enter the PIN',
                  style: TextStyle(
                      color: Color.fromRGBO(95, 92, 92, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildPinBox(context),
                    _buildPinBox(context),
                    _buildPinBox(context),
                    _buildPinBox(context),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Re-enter the PIN',
                  style: TextStyle(
                      color: Color.fromRGBO(95, 92, 92, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildPinBox(context),
                    _buildPinBox(context),
                    _buildPinBox(context),
                    _buildPinBox(context),
                  ],
                ),
                const SizedBox(height: 50),
                MaterialButton(
                  height: 50.0,
                  minWidth: 500.0,
                  color: const Color.fromRGBO(227, 227, 228, 1),
                  textColor: Colors.black,
                  onPressed: () => {GoRouter.of(context).go('/dashboard')},
                  hoverColor: const Color.fromRGBO(0, 92, 187, 1),
                  child: const Text("Set PIN"),
                )
              ],
            ),
          ],
        ), //Container
      ),
    );
  }
}

Widget _buildPinBox(BuildContext context) {
  return const SizedBox(
    width: 50,
    child: TextField(
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      maxLength: 1,
      obscureText: true,
      decoration: InputDecoration(
        counterText: '',
        border: OutlineInputBorder(),
      ),
    ),
  );
}
