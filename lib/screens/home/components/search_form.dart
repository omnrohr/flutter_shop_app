import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
        borderSide: BorderSide.none);
    return Form(
      child: TextFormField(
        onSaved: (value) {},
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          hintText: "Search items...",
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 4, vertical: defaultPadding / 4),
            child: SizedBox(
              width: 35,
              height: 35,
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                onPressed: () {},
                child: SvgPicture.asset(
                  "assets/icons/filter1.svg",
                  color: Colors.white,
                  height: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



// the video approach,
// const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
//   borderRadius: BorderRadius.all(Radius.circular(12)),
//   borderSide: BorderSide.none,
// );

// class SearchForm extends StatelessWidget {
//   const SearchForm({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: TextFormField(
//         onSaved: (value) {},
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: Colors.white,
//           hintText: "Search items...",
//           border: outlineInputBorder,
//           enabledBorder: outlineInputBorder,
//           focusedBorder: outlineInputBorder,
//           errorBorder: outlineInputBorder,
//           prefixIcon: Padding(
//             padding: const EdgeInsets.all(14),
//             child: SvgPicture.asset("assets/icons/Search.svg"),
//           ),
//           suffixIcon: Padding(
//             padding: const EdgeInsets.symmetric(
//                 horizontal: defaultPadding, vertical: defaultPadding / 2),
//             child: SizedBox(
//               width: 48,
//               height: 48,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: primaryColor,
//                   shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(12)),
//                   ),
//                 ),
//                 onPressed: () {},
//                 child: SvgPicture.asset("assets/icons/Filter.svg"),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }