import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_template/app/modules/signin/store/signin_store.dart';
 
void main() {
  late SigninStore store;

  setUpAll(() {
    store = SigninStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    // ignore: invalid_use_of_protected_member
    //store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}