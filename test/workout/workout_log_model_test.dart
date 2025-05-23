/*
 * This file is part of wger Workout Manager <https://github.com/wger-project>.
 * Copyright (C) 2020, 2021 wger Team
 *
 * wger Workout Manager is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * wger Workout Manager is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import 'package:flutter_test/flutter_test.dart';
import 'package:wger/models/workouts/log.dart';

void main() {
  group('Test the workout log model', () {
    late Log log1;
    late Log log2;

    setUp(() {
      log1 = Log(
        id: 123,
        iteration: 1,
        slotEntryId: 100,
        routineId: 100,
        exerciseId: 1,
        repetitions: 10,
        rir: 1.5,
        repetitionsUnitId: 1,
        weight: 20,
        weightUnitId: 1,
        date: DateTime(2010, 10, 1),
      );
      log2 = Log(
        id: 9,
        iteration: 2,
        slotEntryId: 42,
        routineId: 42,
        exerciseId: 1,
        repetitions: 10,
        rir: 1.5,
        repetitionsUnitId: 1,
        weight: 20,
        weightUnitId: 1,
        date: DateTime(2063, 4, 5),
      );
    });

    test('Test equal values (besides Id, workoutPlan and date)', () {
      expect(log1, log2);
    });

    test('Test different rir values', () {
      log1.rir = null;
      expect(log1, isNot(log2));
    });

    test('Test different weight values', () {
      log1.weight = 100;
      expect(log1, isNot(log2));
    });

    test('Test different weight units', () {
      log1.weightUnitId = 2;
      expect(log1, isNot(log2));
    });

    test('Test different reps', () {
      log1.repetitions = 99;
      expect(log1, isNot(log2));
    });

    test('Test different rep units', () {
      log1.repetitionsUnitId = 44;
      expect(log1, isNot(log2));
    });
  });
}
