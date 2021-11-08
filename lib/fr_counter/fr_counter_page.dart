import 'package:fish_redux/fish_redux.dart';

import 'fr_counter_effect.dart';
import 'fr_counter_reducer.dart';
import 'fr_counter_state.dart';
import 'fr_counter_view.dart';

class Fr_counterPage extends Page<Fr_counterState, Map<String, dynamic>> {
  Fr_counterPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<Fr_counterState>(
                adapter: null,
                slots: <String, Dependent<Fr_counterState>>{
                }),
            middleware: <Middleware<Fr_counterState>>[
            ],);

}
