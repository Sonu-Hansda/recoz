import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Services",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 4 / 3,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
              ),
              children: [
                menuItems(
                    title: "Facebook",
                    imgUrl: "https://img.icons8.com/wired/256/facebook-f.png"),
                menuItems(
                    title: "Google Adwards",
                    imgUrl:
                        "https://img.icons8.com/external-obivous-color-kerismaker/256/external-adsense-logo-seo-color-obivous-color-kerismaker.png"),
                menuItems(
                    title: "Ads Manager",
                    imgUrl: "https://img.icons8.com/color/256/google-ads.png"),
                menuItems(
                    title: "Website Development",
                    imgUrl: "https://img.icons8.com/dusk/256/domain.png"),
                menuItems(
                    title: "Shopify Development",
                    imgUrl: "https://img.icons8.com/color/256/shopify.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Padding menuItems({required String title, required String imgUrl}) {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          imgUrl,
          height: 24,
          width: 24,
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w700),
        )
      ],
    ),
  );
}
