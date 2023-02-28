import 'package:flutter/widgets.dart';

extension IterableExtension<T> on Iterable<T> {
  List<E> mapToList<E>(E Function(T) converter) => map(converter).toList();
  List<E> mapToListIndexed<E>(E Function(T, int) converter) =>
      mapIndexed(converter).toList();

  Iterable<E> mapIndexed<E>(E Function(T element, int index) convert) sync* {
    var index = 0;
    for (var element in this) {
      yield convert(element, index++);
    }
  }

  bool doesNotContain(T element) => !contains(element);

  Iterable<T> spaced(T element, {bool addFirstLast = false}) {
    List<T> res = [];
    if (addFirstLast) res.add(element);
    for (T child in this) {
      res.add(child);
      res.add(element);
    }
    if (addFirstLast) res.add(element);
    return res;
  }

  List<T> spacedToList(T element, {bool addFirstLast = false}) =>
      spaced(element, addFirstLast: addFirstLast).toList();
}

extension ListExtension<T> on List<T> {
  /// Adds if not found
  void replace({required T element, required T by}) {
    final int index = indexOf(element);
    if (index < 0) {
      add(by);
    } else {
      insert(index, by);
      removeWhere((tested) => tested == element);
    }
  }
}

extension WidgetListExtension on List<Widget> {
  List<Widget> get toFlexEqual =>
      mapToList((widget) => Flexible(child: widget));

  List<Widget> get toExpanded => mapToList((widget) => Expanded(child: widget));
}
