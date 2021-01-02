import 'package:flutter/material.dart';

Widget InfiniteCardTemplate(data) {
  return Card(
      child: Padding(
          padding: const EdgeInsets.all(10.0), child: Text(data.title)));
}
