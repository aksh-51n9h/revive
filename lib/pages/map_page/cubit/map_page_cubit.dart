import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'map_page_state.dart';

class MapPageCubit extends Cubit<MapPageState> {
  MapPageCubit() : super(MapPageInitial());
}
