# BigBookApi.DefaultApi

All URIs are relative to *https://api.bigbookapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooks**](DefaultApi.md#findSimilarBooks) | **GET** /{id}/similar | Find Similar Books
[**getBookInformation**](DefaultApi.md#getBookInformation) | **GET** /{id} | Get Book Information
[**searchAuthors**](DefaultApi.md#searchAuthors) | **GET** /search-authors | Search Authors
[**searchBooks**](DefaultApi.md#searchBooks) | **GET** /search-books | Search Books



## findSimilarBooks

> Object findSimilarBooks(id, opts)

Find Similar Books

 Find books that are similar to the given book. 

### Example

```javascript
import BigBookApi from 'big_book_api';
let defaultClient = BigBookApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new BigBookApi.DefaultApi();
let id = 8302059; // Number | The id of the book to which similar books should be found.
let opts = {
  'number': 10 // Number | The number of similar books to return in range [1,100]
};
apiInstance.findSimilarBooks(id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the book to which similar books should be found. | 
 **number** | **Number**| The number of similar books to return in range [1,100] | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getBookInformation

> Object getBookInformation(id)

Get Book Information

 Get all information about a certain book. 

### Example

```javascript
import BigBookApi from 'big_book_api';
let defaultClient = BigBookApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new BigBookApi.DefaultApi();
let id = 15912250; // Number | The id of the book.
apiInstance.getBookInformation(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**| The id of the book. | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchAuthors

> Object searchAuthors(opts)

Search Authors

 Search for book authors by name or partial name. The response contains the author&#39;s name and their id. You can then use the id in the book search. 

### Example

```javascript
import BigBookApi from 'big_book_api';
let defaultClient = BigBookApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new BigBookApi.DefaultApi();
let opts = {
  'name': Morgan Housel, // String | The (partial/beginning) name of the author.
  'offset': 0, // Number | The number of authors to skip in range [0,100]
  'number': 10 // Number | The number of authors to return in range [1,100]
};
apiInstance.searchAuthors(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The (partial/beginning) name of the author. | [optional] 
 **offset** | **Number**| The number of authors to skip in range [0,100] | [optional] 
 **number** | **Number**| The number of authors to return in range [1,100] | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchBooks

> Object searchBooks(opts)

Search Books

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query. 

### Example

```javascript
import BigBookApi from 'big_book_api';
let defaultClient = BigBookApi.ApiClient.instance;
// Configure API key authorization: apiKey
let apiKey = defaultClient.authentications['apiKey'];
apiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//apiKey.apiKeyPrefix = 'Token';
// Configure API key authorization: headerApiKey
let headerApiKey = defaultClient.authentications['headerApiKey'];
headerApiKey.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//headerApiKey.apiKeyPrefix = 'Token';

let apiInstance = new BigBookApi.DefaultApi();
let opts = {
  'query': books about wizards, // String | The search query.
  'earliestPublishYear': 2022, // Number | The books must have been published after this year.
  'latestPublishYear': 2023, // Number | The books must have been published before this year.
  'minRating': 0.8, // Number | The minimum rating the book must have gotten in the interval [0,1].
  'maxRating': 0.99, // Number | The maximum rating the book must have gotten in the interval [0,1].
  'genres': nonfiction, // String | A comma-separated list of  genres. Only books from any of the given genres will be returned.
  'authors': J.K. Rowling, // String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
  'isbn': 9781781257654, // String | Only the book matching the ISBN-13 will be returned
  'oclc': 864418200, // String | Only the book matching the OCLC will be returned
  'sort': rating, // String | The sorting criteria (publish-date or rating).
  'sortDirection': DESC, // String | Whether to sort ascending or descending (ASC or DESC).
  'groupResults': false, // Boolean | Whether to group similar editions of the same book.
  'offset': 0, // Number | The number of books to skip in range [0,1000]
  'number': 10 // Number | The number of books to return in range [1,100]
};
apiInstance.searchBooks(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] 
 **earliestPublishYear** | **Number**| The books must have been published after this year. | [optional] 
 **latestPublishYear** | **Number**| The books must have been published before this year. | [optional] 
 **minRating** | **Number**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] 
 **maxRating** | **Number**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] 
 **genres** | **String**| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] 
 **authors** | **String**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] 
 **isbn** | **String**| Only the book matching the ISBN-13 will be returned | [optional] 
 **oclc** | **String**| Only the book matching the OCLC will be returned | [optional] 
 **sort** | **String**| The sorting criteria (publish-date or rating). | [optional] 
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **groupResults** | **Boolean**| Whether to group similar editions of the same book. | [optional] 
 **offset** | **Number**| The number of books to skip in range [0,1000] | [optional] 
 **number** | **Number**| The number of books to return in range [1,100] | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

