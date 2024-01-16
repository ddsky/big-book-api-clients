//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for DefaultApi
void main() {
  final instance = DefaultApi();

  group('tests for DefaultApi', () {
    // Find Similar Books
    //
    //  Find books that are similar to the given book. 
    //
    //Future<Object> findSimilarBooks(num id, { num number }) async
    test('test findSimilarBooks', () async {
      // TODO
    });

    // Get Book Information
    //
    //  Get all information about a certain book. 
    //
    //Future<Object> getBookInformation(num id) async
    test('test getBookInformation', () async {
      // TODO
    });

    // Search Authors
    //
    //  Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 
    //
    //Future<Object> searchAuthors({ String name, num offset, num number }) async
    test('test searchAuthors', () async {
      // TODO
    });

    // Search Books
    //
    //  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 
    //
    //Future<Object> searchBooks({ String query, num earliestPublishYear, num latestPublishYear, num minRating, num maxRating, String genres, String authors, String isbn, String oclc, String sort, String sortDirection, num offset, num number }) async
    test('test searchBooks', () async {
      // TODO
    });

  });
}
