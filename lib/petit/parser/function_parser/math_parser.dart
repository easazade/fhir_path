// ignore_for_file: annotate_overrides, overridden_fields, avoid_dynamic_calls, prefer_if_elements_to_conditional_expressions

// Dart imports:
import 'dart:math';

// Project imports:
import '../../petit_fhir_path.dart';

class AbsParser extends FhirPathParser {
  AbsParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) => results.isEmpty
      ? []
      : results.length > 1
          ? throw _wrongLength('.abs()', results)
          : results.first is num
              ? (results.first as num).abs().isNaN
                  ? []
                  : [(results.first as num).abs()]
              : results.first is FhirPathQuantity
                  ? (results.first as FhirPathQuantity).abs().isNaN
                      ? []
                      : [(results.first as FhirPathQuantity).abs()]
                  : throw _wrongTypes('.abs()', results, 'none');
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.abs()', results)
              : results.first is num
                  ? (results.first as num).abs().isNaN
                      ? <dynamic>[]
                      : <dynamic>[(results.first as num).abs()]
                  : results.first is FhirPathQuantity
                      ? (results.first as FhirPathQuantity).abs().isNaN
                          ? <dynamic>[]
                          : <dynamic>[(results.first as FhirPathQuantity).abs()]
                      : throw _wrongTypes('.abs()', results, 'none');
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}AbsParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.abs()';
}

class CeilingParser extends FhirPathParser {
  CeilingParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) => results.isEmpty
      ? []
      : results.length > 1
          ? throw _wrongLength('.ceiling()', results)
          : results.first is num
              ? [(results.first as num).ceil()]
              : throw _wrongTypes('.ceiling()', results, 'none');
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.ceiling()', results)
              : results.first is num
                  ? <dynamic>[(results.first as num).ceil()]
                  : throw _wrongTypes('.ceiling()', results, 'none');
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}CeilingParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.ceiling()';
}

class ExpParser extends FhirPathParser {
  ExpParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) => results.isEmpty
      ? []
      : results.length > 1
          ? throw _wrongLength('.exp()', results)
          : results.first is num
              ? [exp(results.first as num)]
              : throw _wrongTypes('.exp()', results, 'none');
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.exp()', results)
              : results.first is num
                  ? <dynamic>[exp(results.first as num)]
                  : throw _wrongTypes('.exp()', results, 'none');
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ExpParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.exp()';
}

class FloorParser extends FhirPathParser {
  FloorParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) => results.isEmpty
      ? []
      : results.length > 1
          ? throw _wrongLength('.floor()', results)
          : results.first is num
              ? [(results.first as num).floor()]
              : throw _wrongTypes('.floor()', results, 'none');
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.floor()', results)
              : results.first is num
                  ? <dynamic>[(results.first as num).floor()]
                  : throw _wrongTypes('.floor()', results, 'none');
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}FloorParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.floor()';
}

class LnParser extends FhirPathParser {
  LnParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) => results.isEmpty
      ? []
      : results.length > 1
          ? throw _wrongLength('.ln()', results)
          : results.first is num
              ? [log(results.first as num)]
              : throw _wrongTypes('.ln()', results, 'none');
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.ln()', results)
              : results.first is num
                  ? <dynamic>[log(results.first as num)]
                  : throw _wrongTypes('.ln()', results, 'none');
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}LnParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.ln()';
}

class LogParser extends ValueParser<ParserList> {
  LogParser();
  late ParserList value;

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final List<dynamic> executedValue = value.execute(results.toList(), passed);
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7
    return results.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _wrongLength('.log()', results)
            : executedValue.length > 1
                ? throw _wrongArgLength('log()', executedValue)
                : executedValue.first is num && results.first is num
                    ? <dynamic>[
                        log(results.first as num) /
                            log(executedValue.first as num)
                      ]
                    : throw _wrongTypes('log()', results, executedValue);
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}LogParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.log(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

class PowerParser extends ValueParser<ParserList> {
  PowerParser();
  late ParserList value;

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final List<dynamic> executedValue = value.execute(results.toList(), passed);
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7
    if (results.isEmpty || executedValue.isEmpty) {
      return <dynamic>[];
    } else if (results.length > 1) {
      throw _wrongLength('.power()', results);
    } else if (executedValue.length > 1) {
      throw _wrongArgLength('.power()', executedValue);
    }
    final dynamic finalResults = results.first is num
        ? results.first
        : throw _wrongTypes('.power()', results, executedValue);
    final dynamic finalValue = executedValue.first is num
        ? executedValue.first
        : throw _wrongTypes('.power()', results, executedValue);
    return pow(finalResults as num, finalValue as num).isNaN
        ? <dynamic>[]
        : <dynamic>[pow(finalResults, finalValue)];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}PowerParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.power(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

class RoundParser extends ValueParser<ParserList> {
  RoundParser();
  late ParserList value;

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final List<dynamic> executedValue = value.execute(results.toList(), passed);
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7
    return results.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _wrongLength('.round()', results)
            : executedValue.isEmpty ||
                    executedValue.length != 1 ||
                    executedValue.first is! num
                ? throw _wrongTypes('.round()', results, executedValue)
                : results.first is! num
                    ? throw _wrongTypes('.round()', results, executedValue)
                    : <dynamic>[
                        executedValue.isEmpty
                            ? (results.first as num).round()
                            : double.parse((results.first as num)
                                .toStringAsFixed(executedValue.first as int))
                      ];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}RoundParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => value.isEmpty
      ? '.round()'
      : '.round(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
          '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

class SqrtParser extends FhirPathParser {
  SqrtParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) => results.isEmpty
      ? []
      : results.length > 1
          ? throw _wrongLength('.sqrt()', results)
          : results.first is num
              ? (sqrt(results.first as num).isNaN
                  ? []
                  : [sqrt(results.first as num)])
              : throw _wrongTypes('.sqrt()', results, 'none');
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.sqrt()', results)
              : results.first is num
                  ? (sqrt(results.first as num).isNaN
                      ? <dynamic>[]
                      : <dynamic>[sqrt(results.first as num)])
                  : throw _wrongTypes('.sqrt()', results, 'none');
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}SqrtParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.sqrt()';
}

class TruncateParser extends ValueParser<dynamic> {
  TruncateParser();
  dynamic value;

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) => results.isEmpty
      ? []
      : results.length > 1
          ? throw _wrongLength('.truncate()', results)
          : results.first is num
              ? [(results.first as num).toInt()]
              : throw _wrongTypes('.truncate()', results, 'none');
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.truncate()', results)
              : results.first is num
                  ? <dynamic>[(results.first as num).toInt()]
                  : throw _wrongTypes('.truncate()', results, 'none');
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}TruncateParser\n${value?.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) {
    if (value == null) {
      return '.truncate()';
    } else {
      return '.truncate(\n${value?.prettyPrint(indent + 1)}\n'
          '${indent <= 0 ? "" : "  " * (indent - 1)})';
    }
  }
}

Exception _wrongLength(String functionName, List<dynamic> results) =>
    FhirPathEvaluationException(
        'The function $functionName can only work on a collection'
        ' with 0 or 1 item.',
        collection: results);

Exception _wrongArgLength(String functionName, List<dynamic> value) =>
    FhirPathEvaluationException(
        'The function $functionName must have an argument that '
        'evaluates to 0 or 1 item.',
        operation: functionName,
        arguments: value);

Exception _wrongTypes(
        String functionName, List<dynamic> results, dynamic value) =>
    FhirPathEvaluationException(
        'The function $functionName cannot work with the types '
        'passed.',
        collection: results,
        arguments: value);
