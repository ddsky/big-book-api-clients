# org.openapitools.client - Kotlin client library for Big Book API

## Requires

* Kotlin 1.4.30
* Gradle 6.8.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.bigbookapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**findSimilarBooks**](docs/DefaultApi.md#findsimilarbooks) | **GET** /{id}/similar | Find Similar Books
*DefaultApi* | [**getBookInformation**](docs/DefaultApi.md#getbookinformation) | **GET** /{id} | Get Book Information
*DefaultApi* | [**searchAuthors**](docs/DefaultApi.md#searchauthors) | **GET** /search-authors | Search Authors
*DefaultApi* | [**searchBooks**](docs/DefaultApi.md#searchbooks) | **GET** /search-books | Search Books


<a name="documentation-for-models"></a>
## Documentation for Models



<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="apiKey"></a>
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string

<a name="headerApiKey"></a>
### headerApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

