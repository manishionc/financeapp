import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FinanceFirebaseUser {
  FinanceFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FinanceFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FinanceFirebaseUser> financeFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FinanceFirebaseUser>(
      (user) {
        currentUser = FinanceFirebaseUser(user);
        return currentUser!;
      },
    );
