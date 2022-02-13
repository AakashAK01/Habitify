import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(5),
          children: [
            Text(
              "Profile",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Text(
              "  ACCOUNT",
              style: TextStyle(
                fontSize: 13,
                color: Colors.blueAccent.shade200,
                fontWeight: FontWeight.w500,
              ),
            ),
            SettingsCards(
              leftIcon: Icons.account_circle,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Account",
            ),
            Divider(
              color: Colors.black,
              height: 2,
            ),
            SizedBox(height: 25),
            Text(
              "  DATA",
              style: TextStyle(
                fontSize: 13,
                color: Colors.blueAccent.shade200,
                fontWeight: FontWeight.w500,
              ),
            ),
            SettingsCards(
              leftIcon: Icons.all_inbox_rounded,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Manage Habits",
            ),
            SettingsCards(
              leftIcon: Icons.folder,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Manage Area",
            ),
            SettingsCards(
              leftIcon: Icons.account_circle,
              rightIcon: Icons.arrow_forward_ios,
              text: "      App Usage",
            ),
            SettingsCards(
              leftIcon: Icons.account_circle,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Export Data",
            ),
            Divider(
              color: Colors.black,
              height: 2,
            ),
            SizedBox(height: 25),
            Text(
              "  APP BEHAVIOUR",
              style: TextStyle(
                fontSize: 13,
                color: Colors.blueAccent.shade200,
                fontWeight: FontWeight.w500,
              ),
            ),
            SettingsCards(
              leftIcon: Icons.lock,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Privacy Lock",
            ),
            SettingsCards(
              leftIcon: Icons.calendar_today_outlined,
              rightIcon: Icons.arrow_forward_ios,
              text: "      First Day of the Week",
            ),
            SettingsCards(
              leftIcon: Icons.doorbell,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Notifications",
            ),
            SettingsCards(
              leftIcon: Icons.wb_sunny,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Time of Day",
            ),
            SettingsCards(
              leftIcon: Icons.surround_sound_outlined,
              rightIcon: Icons.arrow_forward_ios,
              text: "      In App Sound",
            ),
            Divider(
              color: Colors.black,
              height: 2,
            ),
            SizedBox(height: 25),
            Text(
              "   PAYMENT",
              style: TextStyle(
                fontSize: 13,
                color: Colors.blueAccent.shade200,
                fontWeight: FontWeight.w500,
              ),
            ),
            SettingsCards(
              leftIcon: Icons.account_balance_wallet_outlined,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Upgrade to Premium",
            ),
            Divider(
              color: Colors.black,
              height: 2,
            ),
            SizedBox(height: 25),
            Text(
              "  INTEGRATION",
              style: TextStyle(
                fontSize: 13,
                color: Colors.blueAccent.shade200,
                fontWeight: FontWeight.w500,
              ),
            ),
            SettingsCards(
              leftIcon: Icons.calendar_today_sharp,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Sync with Calendar",
            ),
            SettingsCards(
              leftIcon: Icons.account_circle,
              rightIcon: Icons.arrow_forward_ios,
              text: "      API Credentials",
            ),
            Divider(
              color: Colors.black,
              height: 2,
            ),
            SizedBox(height: 25),
            Text(
              "  SUPPORT & LEGAL",
              style: TextStyle(
                fontSize: 13,
                color: Colors.blueAccent.shade200,
                fontWeight: FontWeight.w500,
              ),
            ),
            SettingsCards(
              leftIcon: Icons.account_circle,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Vote on Features",
            ),
            SettingsCards(
              leftIcon: Icons.account_circle,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Chat with Our Support Team",
            ),
            SettingsCards(
              leftIcon: Icons.insert_drive_file,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Privacy Policy",
            ),
            SettingsCards(
              leftIcon: Icons.account_circle,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Term of Use",
            ),
            Divider(
              color: Colors.black,
              height: 2,
            ),
            SizedBox(height: 25),
            Text(
              "  CONNECT",
              style: TextStyle(
                fontSize: 13,
                color: Colors.blueAccent.shade200,
                fontWeight: FontWeight.w500,
              ),
            ),
            SettingsCards(
              leftIcon: Icons.account_circle,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Translate Habitify",
            ),
            SettingsCards(
              leftIcon: Icons.account_circle,
              rightIcon: Icons.arrow_forward_ios,
              text: "      User Community",
            ),
            SettingsCards(
              leftIcon: Icons.account_circle,
              rightIcon: Icons.arrow_forward_ios,
              text: "      Follow us on Twitter",
            ),
            Divider(
              color: Colors.black,
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsCards extends StatelessWidget {
  const SettingsCards({
    required this.leftIcon,
    required this.text,
    required this.rightIcon,
    Key? key,
  }) : super(key: key);

  final IconData leftIcon, rightIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(leftIcon, size: 35),
                      Text(
                        text,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Icon(
                  rightIcon,
                  size: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
