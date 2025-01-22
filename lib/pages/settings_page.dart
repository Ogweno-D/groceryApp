import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp_lite/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 24.0),
            child: Text(
              "Settings",
              style: GoogleFonts.notoSerifOriya(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Divider(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(height: 20,),

        // To toggle between dark mode and light mode

          Container(
            decoration: BoxDecoration(
              color:Theme.of(context).colorScheme.secondary ,
              borderRadius: BorderRadius.circular(12.0),
            ),
            margin: EdgeInsets.only(left: 25, right: 25, top: 10),
            padding: EdgeInsets.all(20.0),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark Mode ", 
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary),
                ),

               // Switch
                CupertinoSwitch(
                  value: Provider.of<ThemeProvider>(context, listen: false)
                     .isDarkMode, 
                  onChanged: (value)=> 
                      Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(),
                  ),

              ],
            ),
          )
        ],
      ),
    );
  }
}