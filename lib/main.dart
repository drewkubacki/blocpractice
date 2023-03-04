import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  //Initialize a stream of integers 0-9
  Stream<int> stream = countStream(10);

  //Compute the sum of the stream of integers
  int sum = await sumStream(stream);

  print(sum);
}

Stream<int> countStream(int max) async* {
  for (int i = 0; i < max; i++) {
    yield i;
  }
}

Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int value in stream) {
    sum += value;
  }
  return sum;
}
