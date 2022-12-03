import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CPADLunchOnFirebaseUser {
  CPADLunchOnFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CPADLunchOnFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CPADLunchOnFirebaseUser> cPADLunchOnFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CPADLunchOnFirebaseUser>(
      (user) {
        currentUser = CPADLunchOnFirebaseUser(user);
        return currentUser!;
      },
    );
