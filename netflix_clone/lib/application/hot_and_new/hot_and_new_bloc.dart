import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/host_and_new/hot_new_service.dart';
import 'package:netflix_clone/domain/host_and_new/model/hot_and_new.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';

part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotNewService _hotNewService;

  HotAndNewBloc(this._hotNewService) : super(HotAndNewState.initial()) {
    on<GetUpcoming>((event, emit) async {
      if (state.upcomingList.isNotEmpty) {
        emit(HotAndNewState(
            isloading: false,
            upcomingList: state.upcomingList,
            nowPlayingList: state.nowPlayingList,
            isError: false));
        return;
      }
      
      emit(const HotAndNewState(
          isloading: true,
          upcomingList: [],
          nowPlayingList: [],
          isError: false));

      //initialState

      final _result = await _hotNewService.getCommingSoon();
      _result.fold((fail) {
        return emit(const HotAndNewState(
            isloading: false,
            upcomingList: [],
            nowPlayingList: [],
            isError: true));
      }, (response) {
        return emit(HotAndNewState(
            isloading: false,
            upcomingList: response.results!,
            nowPlayingList: state.nowPlayingList,
            isError: false));
      });
    });

    on<GetNowPlaying>((event, emit) async {
      //initialState
      if (state.nowPlayingList.isNotEmpty) {
        emit(HotAndNewState(
            isloading: false,
            upcomingList: state.upcomingList,
            nowPlayingList: state.nowPlayingList,
            isError: false));
      }

      emit(HotAndNewState(
          isloading: true,
          isError: false,
          upcomingList: [],
          nowPlayingList: []));

      final _result = await _hotNewService.getNowPlaying();
      _result.fold((fail) {
        return emit(const HotAndNewState(
            isloading: false,
            upcomingList: [],
            nowPlayingList: [],
            isError: true));
      }, (response) {
        return emit(HotAndNewState(
            isloading: false,
            upcomingList: state.upcomingList,
            nowPlayingList: response.results!,
            isError: false));
      });
    });
  }
}
