import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:groceries_app_ui/Auth/LoginthroughNumber/EnterNumber.dart';
import 'package:groceries_app_ui/Config/Colors.dart';

class CountryCodePickerScreen extends StatelessWidget {
  const CountryCodePickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.PinkGradient,
      highlightColor: AppColors.GreenGradient,
      onTap: () {


            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginWithNumber(),
              ),
            );
          },
      child: Container(
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
      ),
    );
  }
}



//
// import 'package:flutter/material.dart';
// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import '../Auth/LoginthroughNumber/EnterNumber.dart';
// import '../Config/Colors.dart';
//
// class CountryCodePickerScreen extends StatelessWidget {
//   const CountryCodePickerScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  InkWell(
//
//
//       splashColor: AppColors.PinkGradient,
//       highlightColor: AppColors.GreenGradient,
//       onTap: () {
//
//             // Logic to navigate based on initial country selection
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => LoginWithNumber(),
//               ),
//             );
//           },
//           child: Container(
// height: 90,
//             width: 500,
//             padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         border: Border(
//           bottom: BorderSide(
//             color: Colors.grey,
//             width: 1.0,
//           ),
//         ),
//
//         ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//         //     InkWell(
//         //       splashColor: AppColors.PinkGradient,
//         //       highlightColor: AppColors.GreenGradient,
//         //       onTap: () {
//         //
//         //         Navigator.push(
//         //           context,
//         //           MaterialPageRoute(
//         //             builder: (context) => LoginWithNumber(),
//         //           ),
//         //         );
//         //       },
//         //       child: IntlPhoneField(
//         //       decoration: InputDecoration(
//         //       labelText: '',
//         //         border: UnderlineInputBorder(
//         //
//         //         ),
//         //       ),
//         //       initialCountryCode:'PK',
//         //       // onSubmitted: (phone) {
//         //       //   Navigator.push(
//         //       //     context,
//         //       //     MaterialPageRoute(builder: (context) => LoginWithNumber()),
//         //       //   );
//         //       // },
//         //       onChanged: (phone) {
//         //         // print(phone.completeNumber);
//         //       },
//         //       controller: TextEditingController(),
//         //                 ),
//         //     )
//                 CountryCodePicker(
//                   onChanged: (countryCode) {
//                     // Handle country code changes if needed
//                   },
//                   initialSelection: 'Pk',
//                   favorite: ['US', 'IN'],
//                   showCountryOnly: true,
//                   showOnlyCountryWhenClosed: false,
//                   alignLeft: false,
//                 ),
//               ],
//             ),
//           ),
//
//
//     );
//   }
// }
