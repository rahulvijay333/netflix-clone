part of 'fast_laughs_bloc.dart';

@freezed
class FastLaughsEvent with _$FastLaughsEvent{
  const factory FastLaughsEvent.initial() = Initial;
  const factory FastLaughsEvent.liked({ required int id}) = Liked;
  const factory FastLaughsEvent.unliked({required int id})=Unliked;

  

}