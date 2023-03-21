import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class abdulList extends StatefulWidget {
  @override
  State<abdulList> createState() => _abdulListState();
}

class _abdulListState extends State<abdulList> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 35,
      mainAxisSpacing: 35,
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (1 / 0.8),
      children: [
        Container1(),
        Container2(),
        Container3(),
        Container4(),
        Container5(),
      ],
    );
  }
}

Container1() => Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 100,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.exposure_zero,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Icon(
                  Icons.category_outlined,
                  size: 40,
                ),
              ],
            ),
            Text(
              'Product Catalogue',
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Add and manage products on ' + '\n' 'your website catalogu',
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  fontSize: 7,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
Container2() => Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 100,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.exposure_zero,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Icon(
                  Icons.notifications_active,
                  size: 40,
                ),
              ],
            ),
            Text(
              'Updates & News',
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Add Updates like product launches, ' +
                  '\n' 'new trends, offers etc',
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  fontSize: 7,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
Container3() => Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 100,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.exposure_zero,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Icon(
                  Icons.border_all_rounded,
                  size: 40,
                ),
              ],
            ),
            Text(
              'Image Gallery',
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Upload and manage all your  ' +
                  '\n' 'websites images in one place.',
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  fontSize: 7,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
Container4() => Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 100,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.exposure_zero,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Icon(
                  Icons.square_rounded,
                  size: 40,
                ),
              ],
            ),
            Text(
              'Testimonial',
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Add Updates like products launch ' +
                  '\n' 'new trends, offer etc',
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  fontSize: 7,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
Container5() => Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 50,
      height: 300,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.exposure_zero,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Icon(
                  Icons.web,
                  size: 40,
                ),
              ],
            ),
            Text(
              'Custom Pages',
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Add unique content to your ' +
                  '\n' ' website with custom editor',
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  fontSize: 7,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
