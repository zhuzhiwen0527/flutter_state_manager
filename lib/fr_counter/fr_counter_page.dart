import 'package:fish_redux/fish_redux.dart';

import 'fr_counter_effect.dart';
import 'fr_counter_reducer.dart';
import 'fr_counter_state.dart';
import 'fr_counter_view.dart';

class FrCounterPage extends Page<FrCounterState, Map<String, dynamic>> {
  FrCounterPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FrCounterState>(
                adapter: null,
                slots: <String, Dependent<FrCounterState>>{
                }),
            middleware: <Middleware<FrCounterState>>[
            ],);

}
