import 'package:bbasta_app/models/category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final portionProvider = StateProvider<CevapPortion>((ref) {
  return CevapPortion.initial;
});
