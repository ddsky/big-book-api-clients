# openapi
Big Book API lets you semantically search over 4 million English books by text, genre, author, ISBN, and more. You can also find books that are similar to each other.

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.0.1
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    git: https://github.com/ddsky/big-book-api-clients/tree/main/dart/.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## Documentation for API Endpoints

All URIs are relative to *https://api.bigbookapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**findSimilarBooks**](doc//DefaultApi.md#findsimilarbooks) | **GET** /{id}/similar | Find Similar Books
*DefaultApi* | [**getBookInformation**](doc//DefaultApi.md#getbookinformation) | **GET** /{id} | Get Book Information
*DefaultApi* | [**searchAuthors**](doc//DefaultApi.md#searchauthors) | **GET** /search-authors | Search Authors
*DefaultApi* | [**searchBooks**](doc//DefaultApi.md#searchbooks) | **GET** /search-books | Search Books


## Documentation For Models



## Documentation For Authorization


Authentication schemes defined for the API:
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string

### headerApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Author

mail@bigbookapi.com

