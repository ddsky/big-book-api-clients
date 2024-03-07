//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Find Similar Books
  ///
  ///  Find books that are similar to the given book. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] id (required):
  ///   The id of the book to which similar books should be found.
  ///
  /// * [num] number:
  ///   The number of similar books to return in range [1,100]
  Future<Response> findSimilarBooksWithHttpInfo(num id, { num? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/{id}/similar'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Find Similar Books
  ///
  ///  Find books that are similar to the given book. 
  ///
  /// Parameters:
  ///
  /// * [num] id (required):
  ///   The id of the book to which similar books should be found.
  ///
  /// * [num] number:
  ///   The number of similar books to return in range [1,100]
  Future<Object?> findSimilarBooks(num id, { num? number, }) async {
    final response = await findSimilarBooksWithHttpInfo(id,  number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get Book Information
  ///
  ///  Get all information about a certain book. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] id (required):
  ///   The id of the book.
  Future<Response> getBookInformationWithHttpInfo(num id,) async {
    // ignore: prefer_const_declarations
    final path = r'/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Book Information
  ///
  ///  Get all information about a certain book. 
  ///
  /// Parameters:
  ///
  /// * [num] id (required):
  ///   The id of the book.
  Future<Object?> getBookInformation(num id,) async {
    final response = await getBookInformationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Search Authors
  ///
  ///  Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The (partial/beginning) name of the author.
  ///
  /// * [num] offset:
  ///   The number of authors to skip in range [0,100]
  ///
  /// * [num] number:
  ///   The number of authors to return in range [1,100]
  Future<Response> searchAuthorsWithHttpInfo({ String? name, num? offset, num? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-authors';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Authors
  ///
  ///  Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The (partial/beginning) name of the author.
  ///
  /// * [num] offset:
  ///   The number of authors to skip in range [0,100]
  ///
  /// * [num] number:
  ///   The number of authors to return in range [1,100]
  Future<Object?> searchAuthors({ String? name, num? offset, num? number, }) async {
    final response = await searchAuthorsWithHttpInfo( name: name, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Search Books
  ///
  ///  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [num] earliestPublishYear:
  ///   The books must have been published after this year.
  ///
  /// * [num] latestPublishYear:
  ///   The books must have been published before this year.
  ///
  /// * [num] minRating:
  ///   The minimum rating the book must have gotten in the interval [0,1].
  ///
  /// * [num] maxRating:
  ///   The maximum rating the book must have gotten in the interval [0,1].
  ///
  /// * [String] genres:
  ///   A comma-separated list of  genres. Only books from any of the given genres will be returned.
  ///
  /// * [String] authors:
  ///   A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
  ///
  /// * [String] isbn:
  ///   Only the book matching the ISBN-13 will be returned
  ///
  /// * [String] oclc:
  ///   Only the book matching the OCLC will be returned
  ///
  /// * [String] sort:
  ///   The sorting criteria (publish-date or rating).
  ///
  /// * [String] sortDirection:
  ///   Whether to sort ascending or descending (ASC or DESC).
  ///
  /// * [bool] groupResults:
  ///   Whether to group similar editions of the same book.
  ///
  /// * [num] offset:
  ///   The number of books to skip in range [0,1000]
  ///
  /// * [num] number:
  ///   The number of books to return in range [1,100]
  Future<Response> searchBooksWithHttpInfo({ String? query, num? earliestPublishYear, num? latestPublishYear, num? minRating, num? maxRating, String? genres, String? authors, String? isbn, String? oclc, String? sort, String? sortDirection, bool? groupResults, num? offset, num? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search-books';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (earliestPublishYear != null) {
      queryParams.addAll(_queryParams('', 'earliest-publish-year', earliestPublishYear));
    }
    if (latestPublishYear != null) {
      queryParams.addAll(_queryParams('', 'latest-publish-year', latestPublishYear));
    }
    if (minRating != null) {
      queryParams.addAll(_queryParams('', 'min-rating', minRating));
    }
    if (maxRating != null) {
      queryParams.addAll(_queryParams('', 'max-rating', maxRating));
    }
    if (genres != null) {
      queryParams.addAll(_queryParams('', 'genres', genres));
    }
    if (authors != null) {
      queryParams.addAll(_queryParams('', 'authors', authors));
    }
    if (isbn != null) {
      queryParams.addAll(_queryParams('', 'isbn', isbn));
    }
    if (oclc != null) {
      queryParams.addAll(_queryParams('', 'oclc', oclc));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (sortDirection != null) {
      queryParams.addAll(_queryParams('', 'sort-direction', sortDirection));
    }
    if (groupResults != null) {
      queryParams.addAll(_queryParams('', 'group-results', groupResults));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Books
  ///
  ///  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [num] earliestPublishYear:
  ///   The books must have been published after this year.
  ///
  /// * [num] latestPublishYear:
  ///   The books must have been published before this year.
  ///
  /// * [num] minRating:
  ///   The minimum rating the book must have gotten in the interval [0,1].
  ///
  /// * [num] maxRating:
  ///   The maximum rating the book must have gotten in the interval [0,1].
  ///
  /// * [String] genres:
  ///   A comma-separated list of  genres. Only books from any of the given genres will be returned.
  ///
  /// * [String] authors:
  ///   A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
  ///
  /// * [String] isbn:
  ///   Only the book matching the ISBN-13 will be returned
  ///
  /// * [String] oclc:
  ///   Only the book matching the OCLC will be returned
  ///
  /// * [String] sort:
  ///   The sorting criteria (publish-date or rating).
  ///
  /// * [String] sortDirection:
  ///   Whether to sort ascending or descending (ASC or DESC).
  ///
  /// * [bool] groupResults:
  ///   Whether to group similar editions of the same book.
  ///
  /// * [num] offset:
  ///   The number of books to skip in range [0,1000]
  ///
  /// * [num] number:
  ///   The number of books to return in range [1,100]
  Future<Object?> searchBooks({ String? query, num? earliestPublishYear, num? latestPublishYear, num? minRating, num? maxRating, String? genres, String? authors, String? isbn, String? oclc, String? sort, String? sortDirection, bool? groupResults, num? offset, num? number, }) async {
    final response = await searchBooksWithHttpInfo( query: query, earliestPublishYear: earliestPublishYear, latestPublishYear: latestPublishYear, minRating: minRating, maxRating: maxRating, genres: genres, authors: authors, isbn: isbn, oclc: oclc, sort: sort, sortDirection: sortDirection, groupResults: groupResults, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
