import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey![300]!,
      highlightColor: Colors.grey[100]!,
      enabled: true,
      child: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          const Text("موسيقي"),
          const Text(
            "الاسم الكامل للدورة بشكا افتراضي من أجل إظهار شكل التصميم",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              Icon(Icons.calendar_month),
              Text("الاربعاء, 13 نيسان, 7.000 مساءا"),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.map_outlined),
              Text("عنوان الدورة أو الحدث بشكل كامل"),
            ],
          ),
          const Divider(),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                clipBehavior: Clip.none,
                child: const SizedBox(),
              ),
              const SizedBox(width: 12),
              const Text("اسم المدرب")
            ],
          ),
          const Text(
              "هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحه, لقد تم توليد هذا النص من مولد النص العربي"),
          const Divider(),
          const Text("عن الدورة"),
          const Text(
              "هذ النص مثال لنص يمكن ان يستبدل في نفس المساحة, لقد تم توليد هذا النص من مولد النصوصو العربي, حيث يمكنك ان تولد مثل هذا النص أو لعديدي من النصوص الأخري إضافة إلي زيادة عدد الحروف التي يولدها التطبيق"),
          const Divider(),
          const Text("تكلفة الدورة"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("الحجز العادي "),
              Text("40 SAR"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("الحجز العادي "),
              Text("40 SAR"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("الحجز العادي "),
              Text("40 SAR"),
            ],
          ),
        ],
      ),
    );
  }
}
