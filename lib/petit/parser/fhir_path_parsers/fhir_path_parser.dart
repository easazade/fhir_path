// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes, avoid_function_literals_in_foreach_calls

/// FhirPathParser: base parser
abstract class FhirPathParser {
  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) => [];
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[];
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  String verbosePrint(int indent);

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  String prettyPrint([int indent = 2]);
}

/// ValueParser: basic parser that holds a value
abstract class ValueParser<T> extends FhirPathParser {
  ValueParser();
  late T value;

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List execute(List results, Map<String, dynamic> passed);
  @override
  String toString();
}

/// OperatorParser: operators
abstract class OperatorParser extends FhirPathParser {
  OperatorParser();
  ParserList before = ParserList(<FhirPathParser>[]);
  ParserList after = ParserList(<FhirPathParser>[]);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List execute(List results, Map<String, dynamic> passed);

  @override
  String toString();

  @override
  bool operator ==(Object other);

  @override
  int get hashCode => toString().hashCode;
}

/// ParserList: anything that is a List of FhirPathParsers
class ParserList extends FhirPathParser {
  ParserList(this.value);
  List<FhirPathParser> value;

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
<<<<<<< HEAD
  List execute(List results, Map<String, dynamic> passed) {
    void addToList(List toAdd) => results
=======
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    void addToList(List<dynamic> toAdd) => results
>>>>>>> 2004e1db77094e271c85a3f347db9f8dbf2ffeb7
      ..clear()
      ..addAll(toAdd);

    value.forEach((FhirPathParser v) {
      addToList(v.execute(results, passed).toList());
    });
    return results;
  }

  bool get isEmpty => value.isEmpty;
  int get length => value.length;
  FhirPathParser get first => value.first;
  FhirPathParser get last => value.last;
  FhirPathParser removeAt(int i) => value.removeAt(i);

  @override
  String toString() =>
      'PL(${value.length}): ${value.map((FhirPathParser e) => e.toString())}';

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) {
    String returnString = '${"  " * indent}PL(${value.length})';
    for (final FhirPathParser item in value) {
      returnString += '\n${item.verbosePrint(indent + 1)}';
    }
    return returnString;
  }

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) {
    String returnString = '';
    for (final FhirPathParser item in value) {
      returnString += item.prettyPrint(indent + 1);
    }
    return returnString;
  }
}
