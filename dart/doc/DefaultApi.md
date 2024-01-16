# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.bigbookapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooks**](DefaultApi.md#findsimilarbooks) | **GET** /{id}/similar | Find Similar Books
[**getBookInformation**](DefaultApi.md#getbookinformation) | **GET** /{id} | Get Book Information
[**searchAuthors**](DefaultApi.md#searchauthors) | **GET** /search-authors | Search Authors
[**searchBooks**](DefaultApi.md#searchbooks) | **GET** /search-books | Search Books


# **findSimilarBooks**
> Object findSimilarBooks(id, number)

Find Similar Books

 Find books that are similar to the given book. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final id = 8302059; // num | The id of the book to which similar books should be found.
final number = 10; // num | The number of similar books to return in range [1,100]

try {
    final result = api_instance.findSimilarBooks(id, number);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->findSimilarBooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The id of the book to which similar books should be found. | 
 **number** | **num**| The number of similar books to return in range [1,100] | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBookInformation**
> Object getBookInformation(id)

Get Book Information

 Get all information about a certain book. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final id = 15912250; // num | The id of the book.

try {
    final result = api_instance.getBookInformation(id);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getBookInformation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **num**| The id of the book. | 

### Return type

[**Object**](Object.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAuthors**
> Object searchAuthors(name, offset, number)

Search Authors

 Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final name = Morgan Housel; // String | The (partial/beginning) name of the author.
final offset = 0; // num | The number of authors to skip in range [0,100]
final number = 10; // num | The number of authors to return in range [1,100]

try {
    final result = api_instance.searchAuthors(name, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->searchAuthors: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The (partial/beginning) name of the author. | [optional] 
 **offset** | **num**| The number of authors to skip in range [0,100] | [optional] 
 **number** | **num**| The number of authors to return in range [1,100] | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchBooks**
> Object searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, offset, number)

Search Books

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final query = books about wizards; // String | The search query.
final earliestPublishYear = 2022; // num | The books must have been published after this year.
final latestPublishYear = 2023; // num | The books must have been published before this year.
final minRating = 0.8; // num | The minimum rating the book must have gotten in the interval [0,1].
final maxRating = 0.99; // num | The maximum rating the book must have gotten in the interval [0,1].
final genres = nonfiction; // String | A comma-separated list of  genres. Only books from any of the given genres will be returned.
final authors = J.K. Rowling; // String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
final isbn = 9781781257654; // String | Only the book matching the ISBN-13 will be returned
final oclc = 864418200; // String | Only the book matching the OCLC will be returned
final sort = rating; // String | The sorting criteria (publish-date or rating).
final sortDirection = DESC; // String | Whether to sort ascending or descending (ASC or DESC).
final offset = 0; // num | The number of books to skip in range [0,1000]
final number = 10; // num | The number of books to return in range [1,100]

try {
    final result = api_instance.searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, offset, number);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->searchBooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **earliestPublishYear** | **num**| The books must have been published after this year. | [optional] 
 **latestPublishYear** | **num**| The books must have been published before this year. | [optional] 
 **minRating** | **num**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] 
 **maxRating** | **num**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] 
 **genres** | **String**| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] 
 **authors** | **String**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. | [optional] 
 **isbn** | **String**| Only the book matching the ISBN-13 will be returned | [optional] 
 **oclc** | **String**| Only the book matching the OCLC will be returned | [optional] 
 **sort** | **String**| The sorting criteria (publish-date or rating). | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **num**| The number of books to skip in range [0,1000] | [optional] 
 **number** | **num**| The number of books to return in range [1,100] | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

