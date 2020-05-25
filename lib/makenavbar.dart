import 'package:flutter/material.dart';

class MakeNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar(); //different navbar for different layout
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar(); //we will display desktop navbar
        } else
          return MobileNavbar();
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Codingyaan',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'About US',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Youtube',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                width: 30,
              ),
              //now we will make button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  onPressed: () {}, //we'll leave it empty
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Codingyaan',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'About US',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Youtube',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  width: 30,
                ),
                //now we will make button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    onPressed: () {}, //we'll leave it empty
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
