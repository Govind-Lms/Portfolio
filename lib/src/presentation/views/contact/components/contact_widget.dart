import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govinddev/src/consts/colors.dart';

class ContactWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String content;
  const ContactWidget(this.iconData, this.title, this.content, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 24.0,
      ),
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.poppins(
          color: UIColor.blackColor,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      subtitle: Text(
        content,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.poppins(
            fontSize: 14.0, color: UIColor.blackColor.withOpacity(.7)),
      ),
    );
  }
}
