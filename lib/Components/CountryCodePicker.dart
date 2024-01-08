import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:groceries_app_ui/Auth/LoginthroughNumber/EnterNumber.dart';
import 'package:groceries_app_ui/Config/Colors.dart';

class CountryCodePickerScreen extends StatelessWidget {
  const CountryCodePickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CountryCodePicker(
              onChanged: (countryCode) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginWithNumber(),
                  ),
                );
              },
              initialSelection: 'BD',
              favorite: ['US', 'IN'],
              showCountryOnly: true,
              showOnlyCountryWhenClosed: false,
              alignLeft: false,
            ),
          ),
        ],
      ),
    );
  }
}
