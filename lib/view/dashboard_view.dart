import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bmiView');
                },
                child: const Text(
                  "BMI",
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/reverseString');
                },
                child: const Text(
                  "Reverse a String",
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/circle');
                },
                child: const Text(
                  "Circle",
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/responsiveView');
                },
                child: const Text(
                  "Responsive",
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/nameView');
                },
                child: const Text(
                  "Nameview",
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/richText');
                },
                child: const Text(
                  "RichText",
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/columnView');
                },
                child: const Text(
                  "ColumnView",
                )),
          ),
        ],
      )),
    );
  }
}
