import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start auth Group Code

class AuthGroup {
  static String getBaseUrl() => 'http://demo.inpods.com';
  static Map<String, String> headers = {};
  static SigninCall signinCall = SigninCall();
  static SessionInitCall sessionInitCall = SessionInitCall();
  static ForgotPassCall forgotPassCall = ForgotPassCall();
  static LogoutCall logoutCall = LogoutCall();
}

class SigninCall {
  Future<ApiCallResponse> call({
    String? username = 'anne.dsouza@manipal.edu',
    String? password = 'teach123',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Signin',
      apiUrl: '${baseUrl}/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'grant_type': "password",
        'username': username,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class SessionInitCall {
  Future<ApiCallResponse> call({
    String? token =
        'HmyEAXi3VYOgCH1crzWYk30KZ6PhIuseXsUuuiRY7QIe_4Eg_5qmS1lrMXfLPkxosISWT0FY7icD43GFWPBU90My2fuhOcF2oe4XChnQ0b8Un066L2ukfrT9BiJGndg86hxyZ5I4QI7z-OZtWu8JA9CF5ajcF_TlyP6danJFqzqyJ6lbmYtprSuHjIiWgXjJxPQg3C9Zc2fnBSyJvLP3VASEkb4zCrikIAPkfiYMCl-y5zaN5CuepMryy6VWXe1sLSsduG99BbeVXerEOZ1Md6vKF1BRplGxfRtsTALzPfuWb0NoUjusWVCEe0Xna8gd_JhHiyNXqbU2XzQveBoRVfSxLe-P4vFAGc9DQxWzk-Keh1MXxgCjgglL0zR7lWKDcF8KErmFle9DkqQyRqvf1z_f30moyF0IeoH72CSZoCo',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SessionInit',
      apiUrl: '${baseUrl}/api/SessionInit',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ForgotPassCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ForgotPass',
      apiUrl: '${baseUrl}/api/accounts/forgotpassword',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'username': username,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogoutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Logout',
      apiUrl: '${baseUrl}/user/logout',
      callType: ApiCallType.GET,
      headers: {
        'authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End auth Group Code

/// Start submitService Group Code

class SubmitServiceGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'http://demo.inpods.com';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static OnSubmitCompetencyCall onSubmitCompetencyCall =
      OnSubmitCompetencyCall();
}

class OnSubmitCompetencyCall {
  Future<ApiCallResponse> call({
    String? assessmentId = '',
    String? studentId = '',
    String? batchId = '',
    String? programId = '',
    String? competencyLevelId = '',
    String? competencyId = '',
    String? rubricEval = '',
    String? checklistEval = '',
    String? token = '',
  }) async {
    final baseUrl = SubmitServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'onSubmitCompetency',
      apiUrl: '${baseUrl}/api/competency/submitcompetency',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'AssessmentId': assessmentId,
        'StudentId': studentId,
        'BatchId': batchId,
        'ProgramId': programId,
        'CompetencyLevelId': competencyLevelId,
        'CompetencyId': competencyId,
        'RubricEval': rubricEval,
        'ChecklistEval': checklistEval,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End submitService Group Code

/// Start studentService Group Code

class StudentServiceGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'http://demo.inpods.com';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
    'Accept': 'application/json',
  };
  static GetStudentsCall getStudentsCall = GetStudentsCall();
  static GetAcademicLevelsCall getAcademicLevelsCall = GetAcademicLevelsCall();
  static GetContextCall getContextCall = GetContextCall();
  static GetEvaluationStatusCall getEvaluationStatusCall =
      GetEvaluationStatusCall();
}

class GetStudentsCall {
  Future<ApiCallResponse> call({
    String? assignmentId = '',
    String? student = '',
    String? token = '',
  }) async {
    final baseUrl = StudentServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getStudents',
      apiUrl: '${baseUrl}/api/user/student',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {
        'assignmentId': assignmentId,
        'startsWith': student,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAcademicLevelsCall {
  Future<ApiCallResponse> call({
    String? studentId = '',
    String? competencyId = '',
    String? token = '',
  }) async {
    final baseUrl = StudentServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAcademicLevels',
      apiUrl: '${baseUrl}/api/user/academiclevel',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {
        'studentId': studentId,
        'competencyId': competencyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContextCall {
  Future<ApiCallResponse> call({
    String? objectiveId = '',
    String? token = '',
  }) async {
    final baseUrl = StudentServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getContext',
      apiUrl: '${baseUrl}/api/objectives/assessmentmethods',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {
        'competencyid': objectiveId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEvaluationStatusCall {
  Future<ApiCallResponse> call({
    String? assignmentId = '',
    String? studentId = '',
    String? competencyId = '',
    String? token = '',
  }) async {
    final baseUrl = StudentServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getEvaluationStatus',
      apiUrl: '${baseUrl}/api/competency/evaluationstatus',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {
        'assignmentId': assignmentId,
        'studentId': studentId,
        'competecyId': competencyId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End studentService Group Code

/// Start rubricService Group Code

class RubricServiceGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'http://demo.inpods.com';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer [token]',
  };
  static GetRubricCall getRubricCall = GetRubricCall();
}

class GetRubricCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = RubricServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getRubric',
      apiUrl: '${baseUrl}/api/competency/rubrics',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End rubricService Group Code

/// Start programsService Group Code

class ProgramsServiceGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'http://demo.inpods.com';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer [token]',
  };
  static GetProgramsCall getProgramsCall = GetProgramsCall();
  static GetCompetenciesCall getCompetenciesCall = GetCompetenciesCall();
  static GetAssesmentMethodsCall getAssesmentMethodsCall =
      GetAssesmentMethodsCall();
}

class GetProgramsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ProgramsServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getPrograms',
      apiUrl: '${baseUrl}/api/prototypeprograms/programs',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCompetenciesCall {
  Future<ApiCallResponse> call({
    String? batchId = '',
    String? token = '',
  }) async {
    final baseUrl = ProgramsServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getCompetencies',
      apiUrl: '${baseUrl}/api/objectives/competencies',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'batchid': batchId,
        'objtype': 17,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAssesmentMethodsCall {
  Future<ApiCallResponse> call({
    String? competencyId = '',
    String? programId = '',
    String? batchId = '',
    String? token = '',
  }) async {
    final baseUrl = ProgramsServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAssesmentMethods',
      apiUrl: '${baseUrl}/api/objectives/assessmentmethods',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'competencyid': competencyId,
        'programId': programId,
        'batchId': batchId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End programsService Group Code

/// Start contextService Group Code

class ContextServiceGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'http://demo.inpods.com';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer [token]',
  };
  static GetContextLevelCall getContextLevelCall = GetContextLevelCall();
}

class GetContextLevelCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ContextServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getContextLevel',
      apiUrl: '${baseUrl}/api/competency/contextlevel',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End contextService Group Code

/// Start competencyLevelService Group Code

class CompetencyLevelServiceGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'http://demo.inpods.com';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer [token]',
  };
  static GetCompetencyLevelCall getCompetencyLevelCall =
      GetCompetencyLevelCall();
  static GetCompetencyAttemptsCall getCompetencyAttemptsCall =
      GetCompetencyAttemptsCall();
  static GetChecklistCall getChecklistCall = GetChecklistCall();
}

class GetCompetencyLevelCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = CompetencyLevelServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getCompetencyLevel',
      apiUrl: '${baseUrl}/api/competency/competencylevel',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCompetencyAttemptsCall {
  Future<ApiCallResponse> call({
    String? studentId = '',
    String? token = '',
  }) async {
    final baseUrl = CompetencyLevelServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getCompetencyAttempts',
      apiUrl: '${baseUrl}/api/competency/competencyprofile',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'studentId': studentId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetChecklistCall {
  Future<ApiCallResponse> call({
    String? checklistId = '',
    String? token = '',
  }) async {
    final baseUrl = CompetencyLevelServiceGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getChecklist',
      apiUrl: '${baseUrl}/api/competency/checklist',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'checklistId': checklistId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End competencyLevelService Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
