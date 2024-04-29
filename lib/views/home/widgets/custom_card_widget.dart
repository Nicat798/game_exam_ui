import 'package:film_exam_demo/views/home/widgets/custom_grey_dot.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String gameImage;
  final String gameName;
  final bool isOnline;
  final String author;
  final String year;
  final String score;

  const CustomCardWidget({
    super.key,
    required this.gameImage,
    required this.gameName,
    required this.isOnline,
    required this.author,
    required this.year,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.withOpacity(0.3),
        ),
        child: Row(
          children: [
            Container(
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(gameImage))),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  gameName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  isOnline ? 'Online' : 'Offline',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      year,
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    const SizedBox(width: 5),
                    const CustomGreyDot(),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.star_half,
                      color: Colors.blue,
                    ),
                    Text(
                      score,
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  'By  $author',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
