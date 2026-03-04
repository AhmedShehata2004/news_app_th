import 'package:flutter/material.dart';
import 'package:news_app_th/models/artical_model.dart';

class NewsTile extends StatelessWidget {
   NewsTile({super.key, required this.articalModel});
  ArticalModel articalModel ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(articalModel.imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 8),
            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              articalModel.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          const SizedBox(height: 4),
          Text(
            articalModel.description,
            maxLines: 2,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
