import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class SkillEvalAuthUser {
  SkillEvalAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SkillEvalAuthUser> skillEvalAuthUserSubject =
    BehaviorSubject.seeded(SkillEvalAuthUser(loggedIn: false));
Stream<SkillEvalAuthUser> skillEvalAuthUserStream() => skillEvalAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
