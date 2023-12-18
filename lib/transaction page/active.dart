import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivePage extends StatefulWidget {
  const ActivePage({super.key});

  @override
  State<ActivePage> createState() => _ActivePageState();
}

class _ActivePageState extends State<ActivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xff16A6CC),
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Avanza',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            child: Text(
                              'SUV',
                              style: GoogleFonts.poppins(
                                color: const Color(0xff90A3BF),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(width: 45),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align the columns to the start
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.storage,
                                    size: 10,
                                    color: Color(0xff90A3BF),
                                  ), // Storage icon
                                  const SizedBox(width: 6),
                                  Text(
                                    '70 L',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        color: const Color(0xff90A3BF)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.settings,
                                    size: 10,
                                    color: Color(0xff90A3BF),
                                  ), // Settings icon
                                  const SizedBox(width: 6),
                                  Text(
                                    'Manual',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        color: const Color(0xff90A3BF)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 14), // Adjust the width here
                          Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align the columns to the start
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.people,
                                    size: 10,
                                    color: Color(0xff90A3BF),
                                  ), // People icon
                                  const SizedBox(width: 5),
                                  Text(
                                    '5 Max',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        color: const Color(0xff90A3BF)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_today,
                                    size: 10,
                                    color: Color(0xff90A3BF),
                                  ), // Calendar icon
                                  const SizedBox(width: 6),
                                  Text(
                                    '2019',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        color: const Color(0xff90A3BF)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.network(
                            'asset/mobil/avanza.png',
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress != null) {
                                return CircularProgressIndicator(
                                    value: loadingProgress
                                            .cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!);
                              }
                              return child;
                            },
                            width: 126,
                            height: 59,
                            scale: 1,
                            repeat: ImageRepeat.noRepeat,
                          ),
                          const SizedBox(width: 5),
                          RichText(
                            text: TextSpan(
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black, // Default text color
                              ),
                              children: const [
                                TextSpan(
                                  text: 'Rp.300.000' + '/',
                                  style: TextStyle(color: Colors.green),
                                ),
                                TextSpan(
                                  text: 'day',
                                  style: TextStyle(color: Color(0xff90A3BF)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Text(
            //   "No orders have been canceled yet",
            //   style: GoogleFonts.poppins(
            //     fontSize: 10,
            //     fontWeight: FontWeight.w400,
            //     color: Colors.black,
            //   ),
            // ),
            // Text(
            //   "A list of canceled orders will be displayed here",
            //   style: GoogleFonts.poppins(
            //     fontSize: 10,
            //     fontWeight: FontWeight.w400,
            //     color: Colors.grey,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
