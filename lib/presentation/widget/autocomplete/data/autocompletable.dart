/// [AppAutocomplete]에서 [option]값으로 사용하려면
/// 모델이 [Autocompletable]를 extends 해야 한다.
///
/// displayString 값이 화면에 보여지므로
/// subClass에서 displayString를 override한다.
mixin Autocompletable {
  String displayString = 'do override this';
}
