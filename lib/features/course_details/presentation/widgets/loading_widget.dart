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
          Shimmer.fromColors(
            baseColor: Colors.grey![100]!,
            highlightColor: Colors.grey[400]!,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Shimmer.fromColors(
            baseColor: Colors.grey![100]!,
            highlightColor: Colors.grey[400]!,
            enabled: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 124,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                const SizedBox(height: 12),
                Container(
                  height: 24,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
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
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 34,
                      width: MediaQuery.of(context).size.width - 100,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const ReservationSummary(),
          const SizedBox(height: 36),
          const MainButtonSkeleton(),
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Container(
            width: 80,
            height: 20,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class MainButtonSkeleton extends StatelessWidget {
  const MainButtonSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey![100]!,
      highlightColor: Colors.grey[400]!,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 54,
        decoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}
