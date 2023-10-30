// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'gmap_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

// /// @nodoc
// mixin _$GmapEvent {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() started,
//     required TResult Function() getCurrentLocation,
//     required TResult Function(double lat, double long) getSelectPosition,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? started,
//     TResult? Function()? getCurrentLocation,
//     TResult? Function(double lat, double long)? getSelectPosition,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? started,
//     TResult Function()? getCurrentLocation,
//     TResult Function(double lat, double long)? getSelectPosition,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Started value) started,
//     required TResult Function(_GetCurrentLocation value) getCurrentLocation,
//     required TResult Function(_GetSelectPosition value) getSelectPosition,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Started value)? started,
//     TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
//     TResult? Function(_GetSelectPosition value)? getSelectPosition,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Started value)? started,
//     TResult Function(_GetCurrentLocation value)? getCurrentLocation,
//     TResult Function(_GetSelectPosition value)? getSelectPosition,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $GmapEventCopyWith<$Res> {
//   factory $GmapEventCopyWith(GmapEvent value, $Res Function(GmapEvent) then) =
//       _$GmapEventCopyWithImpl<$Res, GmapEvent>;
// }

// /// @nodoc
// class _$GmapEventCopyWithImpl<$Res, $Val extends GmapEvent>
//     implements $GmapEventCopyWith<$Res> {
//   _$GmapEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;
// }

// /// @nodoc
// abstract class _$$StartedImplCopyWith<$Res> {
//   factory _$$StartedImplCopyWith(
//           _$StartedImpl value, $Res Function(_$StartedImpl) then) =
//       __$$StartedImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$StartedImplCopyWithImpl<$Res>
//     extends _$GmapEventCopyWithImpl<$Res, _$StartedImpl>
//     implements _$$StartedImplCopyWith<$Res> {
//   __$$StartedImplCopyWithImpl(
//       _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$StartedImpl implements _Started {
//   const _$StartedImpl();

//   @override
//   String toString() {
//     return 'GmapEvent.started()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$StartedImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() started,
//     required TResult Function() getCurrentLocation,
//     required TResult Function(double lat, double long) getSelectPosition,
//   }) {
//     return started();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? started,
//     TResult? Function()? getCurrentLocation,
//     TResult? Function(double lat, double long)? getSelectPosition,
//   }) {
//     return started?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? started,
//     TResult Function()? getCurrentLocation,
//     TResult Function(double lat, double long)? getSelectPosition,
//     required TResult orElse(),
//   }) {
//     if (started != null) {
//       return started();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Started value) started,
//     required TResult Function(_GetCurrentLocation value) getCurrentLocation,
//     required TResult Function(_GetSelectPosition value) getSelectPosition,
//   }) {
//     return started(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Started value)? started,
//     TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
//     TResult? Function(_GetSelectPosition value)? getSelectPosition,
//   }) {
//     return started?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Started value)? started,
//     TResult Function(_GetCurrentLocation value)? getCurrentLocation,
//     TResult Function(_GetSelectPosition value)? getSelectPosition,
//     required TResult orElse(),
//   }) {
//     if (started != null) {
//       return started(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Started implements GmapEvent {
//   const factory _Started() = _$StartedImpl;
// }

// /// @nodoc
// abstract class _$$GetCurrentLocationImplCopyWith<$Res> {
//   factory _$$GetCurrentLocationImplCopyWith(_$GetCurrentLocationImpl value,
//           $Res Function(_$GetCurrentLocationImpl) then) =
//       __$$GetCurrentLocationImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$GetCurrentLocationImplCopyWithImpl<$Res>
//     extends _$GmapEventCopyWithImpl<$Res, _$GetCurrentLocationImpl>
//     implements _$$GetCurrentLocationImplCopyWith<$Res> {
//   __$$GetCurrentLocationImplCopyWithImpl(_$GetCurrentLocationImpl _value,
//       $Res Function(_$GetCurrentLocationImpl) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$GetCurrentLocationImpl implements _GetCurrentLocation {
//   const _$GetCurrentLocationImpl();

//   @override
//   String toString() {
//     return 'GmapEvent.getCurrentLocation()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$GetCurrentLocationImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() started,
//     required TResult Function() getCurrentLocation,
//     required TResult Function(double lat, double long) getSelectPosition,
//   }) {
//     return getCurrentLocation();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? started,
//     TResult? Function()? getCurrentLocation,
//     TResult? Function(double lat, double long)? getSelectPosition,
//   }) {
//     return getCurrentLocation?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? started,
//     TResult Function()? getCurrentLocation,
//     TResult Function(double lat, double long)? getSelectPosition,
//     required TResult orElse(),
//   }) {
//     if (getCurrentLocation != null) {
//       return getCurrentLocation();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Started value) started,
//     required TResult Function(_GetCurrentLocation value) getCurrentLocation,
//     required TResult Function(_GetSelectPosition value) getSelectPosition,
//   }) {
//     return getCurrentLocation(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Started value)? started,
//     TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
//     TResult? Function(_GetSelectPosition value)? getSelectPosition,
//   }) {
//     return getCurrentLocation?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Started value)? started,
//     TResult Function(_GetCurrentLocation value)? getCurrentLocation,
//     TResult Function(_GetSelectPosition value)? getSelectPosition,
//     required TResult orElse(),
//   }) {
//     if (getCurrentLocation != null) {
//       return getCurrentLocation(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetCurrentLocation implements GmapEvent {
//   const factory _GetCurrentLocation() = _$GetCurrentLocationImpl;
// }

// /// @nodoc
// abstract class _$$GetSelectPositionImplCopyWith<$Res> {
//   factory _$$GetSelectPositionImplCopyWith(_$GetSelectPositionImpl value,
//           $Res Function(_$GetSelectPositionImpl) then) =
//       __$$GetSelectPositionImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({double lat, double long});
// }

// /// @nodoc
// class __$$GetSelectPositionImplCopyWithImpl<$Res>
//     extends _$GmapEventCopyWithImpl<$Res, _$GetSelectPositionImpl>
//     implements _$$GetSelectPositionImplCopyWith<$Res> {
//   __$$GetSelectPositionImplCopyWithImpl(_$GetSelectPositionImpl _value,
//       $Res Function(_$GetSelectPositionImpl) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? lat = null,
//     Object? long = null,
//   }) {
//     return _then(_$GetSelectPositionImpl(
//       null == lat
//           ? _value.lat
//           : lat // ignore: cast_nullable_to_non_nullable
//               as double,
//       null == long
//           ? _value.long
//           : long // ignore: cast_nullable_to_non_nullable
//               as double,
//     ));
//   }
// }

// /// @nodoc

// class _$GetSelectPositionImpl implements _GetSelectPosition {
//   const _$GetSelectPositionImpl(this.lat, this.long);

//   @override
//   final double lat;
//   @override
//   final double long;

//   @override
//   String toString() {
//     return 'GmapEvent.getSelectPosition(lat: $lat, long: $long)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$GetSelectPositionImpl &&
//             (identical(other.lat, lat) || other.lat == lat) &&
//             (identical(other.long, long) || other.long == long));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, lat, long);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$GetSelectPositionImplCopyWith<_$GetSelectPositionImpl> get copyWith =>
//       __$$GetSelectPositionImplCopyWithImpl<_$GetSelectPositionImpl>(
//           this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() started,
//     required TResult Function() getCurrentLocation,
//     required TResult Function(double lat, double long) getSelectPosition,
//   }) {
//     return getSelectPosition(lat, long);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? started,
//     TResult? Function()? getCurrentLocation,
//     TResult? Function(double lat, double long)? getSelectPosition,
//   }) {
//     return getSelectPosition?.call(lat, long);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? started,
//     TResult Function()? getCurrentLocation,
//     TResult Function(double lat, double long)? getSelectPosition,
//     required TResult orElse(),
//   }) {
//     if (getSelectPosition != null) {
//       return getSelectPosition(lat, long);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Started value) started,
//     required TResult Function(_GetCurrentLocation value) getCurrentLocation,
//     required TResult Function(_GetSelectPosition value) getSelectPosition,
//   }) {
//     return getSelectPosition(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Started value)? started,
//     TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
//     TResult? Function(_GetSelectPosition value)? getSelectPosition,
//   }) {
//     return getSelectPosition?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Started value)? started,
//     TResult Function(_GetCurrentLocation value)? getCurrentLocation,
//     TResult Function(_GetSelectPosition value)? getSelectPosition,
//     required TResult orElse(),
//   }) {
//     if (getSelectPosition != null) {
//       return getSelectPosition(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetSelectPosition implements GmapEvent {
//   const factory _GetSelectPosition(final double lat, final double long) =
//       _$GetSelectPositionImpl;

//   double get lat;
//   double get long;
//   @JsonKey(ignore: true)
//   _$$GetSelectPositionImplCopyWith<_$GetSelectPositionImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$GmapState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(GmapModel model) loaded,
//     required TResult Function(String error) error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(GmapModel model)? loaded,
//     TResult? Function(String error)? error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(GmapModel model)? loaded,
//     TResult Function(String error)? error,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Loaded value) loaded,
//     required TResult Function(_Error value) error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Loaded value)? loaded,
//     TResult? Function(_Error value)? error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Loaded value)? loaded,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $GmapStateCopyWith<$Res> {
//   factory $GmapStateCopyWith(GmapState value, $Res Function(GmapState) then) =
//       _$GmapStateCopyWithImpl<$Res, GmapState>;
// }

// /// @nodoc
// class _$GmapStateCopyWithImpl<$Res, $Val extends GmapState>
//     implements $GmapStateCopyWith<$Res> {
//   _$GmapStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;
// }

// /// @nodoc
// abstract class _$$InitialImplCopyWith<$Res> {
//   factory _$$InitialImplCopyWith(
//           _$InitialImpl value, $Res Function(_$InitialImpl) then) =
//       __$$InitialImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$InitialImplCopyWithImpl<$Res>
//     extends _$GmapStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//       _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$InitialImpl implements _Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'GmapState.initial()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$InitialImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(GmapModel model) loaded,
//     required TResult Function(String error) error,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(GmapModel model)? loaded,
//     TResult? Function(String error)? error,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(GmapModel model)? loaded,
//     TResult Function(String error)? error,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Loaded value) loaded,
//     required TResult Function(_Error value) error,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Loaded value)? loaded,
//     TResult? Function(_Error value)? error,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Loaded value)? loaded,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Initial implements GmapState {
//   const factory _Initial() = _$InitialImpl;
// }

// /// @nodoc
// abstract class _$$LoadingImplCopyWith<$Res> {
//   factory _$$LoadingImplCopyWith(
//           _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
//       __$$LoadingImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingImplCopyWithImpl<$Res>
//     extends _$GmapStateCopyWithImpl<$Res, _$LoadingImpl>
//     implements _$$LoadingImplCopyWith<$Res> {
//   __$$LoadingImplCopyWithImpl(
//       _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$LoadingImpl implements _Loading {
//   const _$LoadingImpl();

//   @override
//   String toString() {
//     return 'GmapState.loading()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$LoadingImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(GmapModel model) loaded,
//     required TResult Function(String error) error,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(GmapModel model)? loaded,
//     TResult? Function(String error)? error,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(GmapModel model)? loaded,
//     TResult Function(String error)? error,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Loaded value) loaded,
//     required TResult Function(_Error value) error,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Loaded value)? loaded,
//     TResult? Function(_Error value)? error,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Loaded value)? loaded,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loading implements GmapState {
//   const factory _Loading() = _$LoadingImpl;
// }

// /// @nodoc
// abstract class _$$LoadedImplCopyWith<$Res> {
//   factory _$$LoadedImplCopyWith(
//           _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
//       __$$LoadedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({GmapModel model});
// }

// /// @nodoc
// class __$$LoadedImplCopyWithImpl<$Res>
//     extends _$GmapStateCopyWithImpl<$Res, _$LoadedImpl>
//     implements _$$LoadedImplCopyWith<$Res> {
//   __$$LoadedImplCopyWithImpl(
//       _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? model = null,
//   }) {
//     return _then(_$LoadedImpl(
//       null == model
//           ? _value.model
//           : model // ignore: cast_nullable_to_non_nullable
//               as GmapModel,
//     ));
//   }
// }

// /// @nodoc

// class _$LoadedImpl implements _Loaded {
//   const _$LoadedImpl(this.model);

//   @override
//   final GmapModel model;

//   @override
//   String toString() {
//     return 'GmapState.loaded(model: $model)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$LoadedImpl &&
//             (identical(other.model, model) || other.model == model));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, model);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
//       __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(GmapModel model) loaded,
//     required TResult Function(String error) error,
//   }) {
//     return loaded(model);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(GmapModel model)? loaded,
//     TResult? Function(String error)? error,
//   }) {
//     return loaded?.call(model);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(GmapModel model)? loaded,
//     TResult Function(String error)? error,
//     required TResult orElse(),
//   }) {
//     if (loaded != null) {
//       return loaded(model);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Loaded value) loaded,
//     required TResult Function(_Error value) error,
//   }) {
//     return loaded(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Loaded value)? loaded,
//     TResult? Function(_Error value)? error,
//   }) {
//     return loaded?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Loaded value)? loaded,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (loaded != null) {
//       return loaded(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loaded implements GmapState {
//   const factory _Loaded(final GmapModel model) = _$LoadedImpl;

//   GmapModel get model;
//   @JsonKey(ignore: true)
//   _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$ErrorImplCopyWith<$Res> {
//   factory _$$ErrorImplCopyWith(
//           _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
//       __$$ErrorImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String error});
// }

// /// @nodoc
// class __$$ErrorImplCopyWithImpl<$Res>
//     extends _$GmapStateCopyWithImpl<$Res, _$ErrorImpl>
//     implements _$$ErrorImplCopyWith<$Res> {
//   __$$ErrorImplCopyWithImpl(
//       _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? error = null,
//   }) {
//     return _then(_$ErrorImpl(
//       null == error
//           ? _value.error
//           : error // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _$ErrorImpl implements _Error {
//   const _$ErrorImpl(this.error);

//   @override
//   final String error;

//   @override
//   String toString() {
//     return 'GmapState.error(error: $error)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$ErrorImpl &&
//             (identical(other.error, error) || other.error == error));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, error);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
//       __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(GmapModel model) loaded,
//     required TResult Function(String error) error,
//   }) {
//     return error(this.error);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(GmapModel model)? loaded,
//     TResult? Function(String error)? error,
//   }) {
//     return error?.call(this.error);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(GmapModel model)? loaded,
//     TResult Function(String error)? error,
//     required TResult orElse(),
//   }) {
//     if (error != null) {
//       return error(this.error);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Loaded value) loaded,
//     required TResult Function(_Error value) error,
//   }) {
//     return error(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Loaded value)? loaded,
//     TResult? Function(_Error value)? error,
//   }) {
//     return error?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Loaded value)? loaded,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (error != null) {
//       return error(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Error implements GmapState {
//   const factory _Error(final String error) = _$ErrorImpl;

//   String get error;
//   @JsonKey(ignore: true)
//   _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
