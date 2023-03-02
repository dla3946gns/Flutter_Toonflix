import 'package:flutter/material.dart';
import 'package:fullter_toonflix/widgets/Button.dart';
import 'package:fullter_toonflix/widgets/CurrencyCard.dart';

class Player {
  String? name;

  Player();
}

// const는 변경할 수 없는 변수이며,
// compile하기 전에 알 수 있는 value이다.

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Material은 구글, Cupertino는 애플
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Hey, Selena",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800),
                      ),
                      Text("Welcome Back",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                              fontSize: 18))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text("Total Balance",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 22)),
              const SizedBox(
                height: 10,
              ),
              const Text('\$5 194 482',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Button(
                    text: "Transfer",
                    bgColor: Color(0xfff1b33b),
                    textColor: Colors.black,
                  ),
                  Button(
                    text: "Request",
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Wallets",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CurrencyCard(
                name: 'Euro',
                amount: '6 428',
                code: 'EUR',
                icon: Icons.euro_rounded,
                isInverted: false,
                order: 0,
              ),
              const CurrencyCard(
                name: 'Bitcoin',
                amount: '9 785',
                code: 'BTC',
                icon: Icons.currency_bitcoin,
                isInverted: true,
                order: 2,
              ),
              const CurrencyCard(
                name: 'Dollar',
                amount: '428',
                code: 'USD',
                icon: Icons.attach_money_outlined,
                isInverted: false,
                order: 4,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
