import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          Shimmer.fromColors(
            baseColor: Colors.grey![100]!,
            highlightColor: Colors.grey[400]!,
            enabled: true,
            child: Column(
              children: const [
                Text("موسيقي"),
                Text(
                  "الاسم الكامل للدورة بشكا افتراضي من أجل إظهار شكل التصميم",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Shimmer.fromColors(
            baseColor: Colors.grey![100]!,
            highlightColor: Colors.grey[400]!,
            enabled: true,
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.calendar_month),
                    SizedBox(width: 12),
                    Text("الاربعاء, 13 نيسان, 7.000 مساءا"),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.map_outlined),
                    SizedBox(width: 12),
                    Text("عنوان الدورة أو الحدث بشكل كامل"),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                clipBehavior: Clip.none,
                child: const SizedBox(),
              ),
              const SizedBox(width: 12),
            ],
          ),
          Shimmer.fromColors(
            baseColor: Colors.grey![100]!,
            highlightColor: Colors.grey[400]!,
            enabled: true,
            child: Column(
              children: const [
                Text("اسم المدرب"),
                Text(
                    "هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحه, لقد تم توليد هذا النص من مولد النص العربي"),
                Divider(),
                Text("عن الدورة"),
                Text(
                    "هذ النص مثال لنص يمكن ان يستبدل في نفس المساحة, لقد تم توليد هذا النص من مولد النصوصو العربي, حيث يمكنك ان تولد مثل هذا النص أو لعديدي من النصوص الأخري إضافة إلي زيادة عدد الحروف التي يولدها التطبيق"),
              ],
            ),
          ),
          const ReservationSummary(),
        ],
      ),
    );
  }
}

class ReservationSummary extends StatelessWidget {
  const ReservationSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey![100]!,
      highlightColor: Colors.grey[400]!,
      enabled: true,
      child: Column(
        children: [
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
