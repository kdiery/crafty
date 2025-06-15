import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

final uuid = Uuid();

enum Craft { knit, crochet }

const craftIcons = {Craft.knit: "knit", Craft.crochet: "crochet"};

class Project {
  Project({required this.title, required this.craft})
    : id = uuid.v4(),
      startDate = DateTime.now(),
      endDate = DateTime.now();

  final String id;
  final String title;
  final Craft craft;
  final DateTime startDate;
  final DateTime endDate;
}

List dummy_projects = [
  Project(title: "sol top", craft: Craft.knit),
  Project(title: "swift hoodie", craft: Craft.knit),
  Project(title: "colosseum top", craft: Craft.crochet),
];
