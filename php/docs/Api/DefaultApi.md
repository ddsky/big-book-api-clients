# OpenAPI\Client\DefaultApi

All URIs are relative to https://api.bigbookapi.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**findSimilarBooks()**](DefaultApi.md#findSimilarBooks) | **GET** /{id}/similar | Find Similar Books |
| [**getBookInformation()**](DefaultApi.md#getBookInformation) | **GET** /{id} | Get Book Information |
| [**searchAuthors()**](DefaultApi.md#searchAuthors) | **GET** /search-authors | Search Authors |
| [**searchBooks()**](DefaultApi.md#searchBooks) | **GET** /search-books | Search Books |


## `findSimilarBooks()`

```php
findSimilarBooks($id, $number): object
```

Find Similar Books

Find books that are similar to the given book.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 8302059; // float | The id of the book to which similar books should be found.
$number = 10; // float | The number of similar books to return in range [1,100]

try {
    $result = $apiInstance->findSimilarBooks($id, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->findSimilarBooks: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The id of the book to which similar books should be found. | |
| **number** | **float**| The number of similar books to return in range [1,100] | [optional] |

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getBookInformation()`

```php
getBookInformation($id): object
```

Get Book Information

Get all information about a certain book.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 15912250; // float | The id of the book.

try {
    $result = $apiInstance->getBookInformation($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->getBookInformation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **float**| The id of the book. | |

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchAuthors()`

```php
searchAuthors($name, $offset, $number): object
```

Search Authors

Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = Morgan Housel; // string | The (partial/beginning) name of the author.
$offset = 0; // float | The number of authors to skip in range [0,100]
$number = 10; // float | The number of authors to return in range [1,100]

try {
    $result = $apiInstance->searchAuthors($name, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchAuthors: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| The (partial/beginning) name of the author. | [optional] |
| **offset** | **float**| The number of authors to skip in range [0,100] | [optional] |
| **number** | **float**| The number of authors to return in range [1,100] | [optional] |

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchBooks()`

```php
searchBooks($query, $earliest_publish_year, $latest_publish_year, $min_rating, $max_rating, $genres, $authors, $isbn, $oclc, $sort, $sort_direction, $group_results, $offset, $number): object
```

Search Books

Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\DefaultApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$query = books about wizards; // string | The search query.
$earliest_publish_year = 2022; // float | The books must have been published after this year.
$latest_publish_year = 2023; // float | The books must have been published before this year.
$min_rating = 0.8; // float | The minimum rating the book must have gotten in the interval [0,1].
$max_rating = 0.99; // float | The maximum rating the book must have gotten in the interval [0,1].
$genres = nonfiction; // string | A comma-separated list of  genres. Only books from any of the given genres will be returned.
$authors = J.K. Rowling; // string | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
$isbn = 9781781257654; // string | Only the book matching the ISBN-13 will be returned
$oclc = 864418200; // string | Only the book matching the OCLC will be returned
$sort = rating; // string | The sorting criteria (publish-date or rating).
$sort_direction = DESC; // string | Whether to sort ascending or descending (ASC or DESC).
$group_results = false; // bool | Whether to group similar editions of the same book.
$offset = 0; // float | The number of books to skip in range [0,1000]
$number = 10; // float | The number of books to return in range [1,100]

try {
    $result = $apiInstance->searchBooks($query, $earliest_publish_year, $latest_publish_year, $min_rating, $max_rating, $genres, $authors, $isbn, $oclc, $sort, $sort_direction, $group_results, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->searchBooks: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **query** | **string**| The search query. | [optional] |
| **earliest_publish_year** | **float**| The books must have been published after this year. | [optional] |
| **latest_publish_year** | **float**| The books must have been published before this year. | [optional] |
| **min_rating** | **float**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] |
| **max_rating** | **float**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] |
| **genres** | **string**| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] |
| **authors** | **string**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] |
| **isbn** | **string**| Only the book matching the ISBN-13 will be returned | [optional] |
| **oclc** | **string**| Only the book matching the OCLC will be returned | [optional] |
| **sort** | **string**| The sorting criteria (publish-date or rating). | [optional] |
| **sort_direction** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **group_results** | **bool**| Whether to group similar editions of the same book. | [optional] |
| **offset** | **float**| The number of books to skip in range [0,1000] | [optional] |
| **number** | **float**| The number of books to return in range [1,100] | [optional] |

### Return type

**object**

### Authorization

[apiKey](../../README.md#apiKey), [headerApiKey](../../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
