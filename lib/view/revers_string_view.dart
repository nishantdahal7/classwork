import 'package:classwork/model/reverse_string.dart';
import 'package:flutter/material.dart';

class ReverseStringView extends StatefulWidget {
  const ReverseStringView({super.key});

  @override
  State<ReverseStringView> createState() => _ReverseStringViewState();
}

class _ReverseStringViewState extends State<ReverseStringView> {
  var gap = const SizedBox(
    height: 12,
  );

  RString string = RString();
  String str = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reverse String"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                gap,
                TextFormField(
                  onChanged: (value) {
                    str = (value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Enter string',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red))),
                ),
                gap,
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        string.reverseString;
                      });
                    },
                    child: const Text('Reverse'),
                  ),
                ),
                gap,
                SizedBox(
                  child: Text('Result is: ${string.reverseString(str)}'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
