# .DefaultApi

All URIs are relative to *https://api.bigbookapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooks**](DefaultApi.md#findSimilarBooks) | **GET** /{id}/similar | Find Similar Books
[**getBookInformation**](DefaultApi.md#getBookInformation) | **GET** /{id} | Get Book Information
[**searchAuthors**](DefaultApi.md#searchAuthors) | **GET** /search-authors | Search Authors
[**searchBooks**](DefaultApi.md#searchBooks) | **GET** /search-books | Search Books


# **findSimilarBooks**
> any findSimilarBooks()

 Find books that are similar to the given book. 

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiFindSimilarBooksRequest = {
  // number | The id of the book to which similar books should be found.
  id: 8302059,
  // number | The number of similar books to return in range [1,100] (optional)
  number: 10,
};

apiInstance.findSimilarBooks(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The id of the book to which similar books should be found. | defaults to undefined
 **number** | [**number**] | The number of similar books to return in range [1,100] | (optional) defaults to undefined


### Return type

**any**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getBookInformation**
> any getBookInformation()

 Get all information about a certain book. 

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiGetBookInformationRequest = {
  // number | The id of the book.
  id: 15912250,
};

apiInstance.getBookInformation(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The id of the book. | defaults to undefined


### Return type

**any**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchAuthors**
> any searchAuthors()

 Search for book authors by name or partial name. The response contains the author\'s name and their id. You can then use the id in the book search. 

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiSearchAuthorsRequest = {
  // string | The (partial/beginning) name of the author. (optional)
  name: "Morgan Housel",
  // number | The number of authors to skip in range [0,100] (optional)
  offset: 0,
  // number | The number of authors to return in range [1,100] (optional)
  number: 10,
};

apiInstance.searchAuthors(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | The (partial/beginning) name of the author. | (optional) defaults to undefined
 **offset** | [**number**] | The number of authors to skip in range [0,100] | (optional) defaults to undefined
 **number** | [**number**] | The number of authors to return in range [1,100] | (optional) defaults to undefined


### Return type

**any**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchBooks**
> any searchBooks()

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .DefaultApi(configuration);

let body:.DefaultApiSearchBooksRequest = {
  // string | The search query. (optional)
  query: "books about wizards",
  // number | The books must have been published after this year. (optional)
  earliestPublishYear: 2022,
  // number | The books must have been published before this year. (optional)
  latestPublishYear: 2023,
  // number | The minimum rating the book must have gotten in the interval [0,1]. (optional)
  minRating: 0.8,
  // number | The maximum rating the book must have gotten in the interval [0,1]. (optional)
  maxRating: 0.99,
  // string | A comma-separated list of  genres. Only books from any of the given genres will be returned. (optional)
  genres: "nonfiction",
  // string | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can\'t disambiguate. (optional)
  authors: "J.K. Rowling",
  // string | Only the book matching the ISBN-13 will be returned (optional)
  isbn: "9781781257654",
  // string | Only the book matching the OCLC will be returned (optional)
  oclc: "864418200",
  // string | The sorting criteria (publish-date or rating). (optional)
  sort: "rating",
  // string | Whether to sort ascending or descending (ASC or DESC). (optional)
  sortDirection: "DESC",
  // boolean | Whether to group similar editions of the same book. (optional)
  groupResults: false,
  // number | The number of books to skip in range [0,1000] (optional)
  offset: 0,
  // number | The number of books to return in range [1,100] (optional)
  number: 10,
};

apiInstance.searchBooks(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | (optional) defaults to undefined
 **earliestPublishYear** | [**number**] | The books must have been published after this year. | (optional) defaults to undefined
 **latestPublishYear** | [**number**] | The books must have been published before this year. | (optional) defaults to undefined
 **minRating** | [**number**] | The minimum rating the book must have gotten in the interval [0,1]. | (optional) defaults to undefined
 **maxRating** | [**number**] | The maximum rating the book must have gotten in the interval [0,1]. | (optional) defaults to undefined
 **genres** | [**string**] | A comma-separated list of  genres. Only books from any of the given genres will be returned. | (optional) defaults to undefined
 **authors** | [**string**] | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can\&#39;t disambiguate. | (optional) defaults to undefined
 **isbn** | [**string**] | Only the book matching the ISBN-13 will be returned | (optional) defaults to undefined
 **oclc** | [**string**] | Only the book matching the OCLC will be returned | (optional) defaults to undefined
 **sort** | [**string**] | The sorting criteria (publish-date or rating). | (optional) defaults to undefined
 **sortDirection** | [**string**] | Whether to sort ascending or descending (ASC or DESC). | (optional) defaults to undefined
 **groupResults** | [**boolean**] | Whether to group similar editions of the same book. | (optional) defaults to undefined
 **offset** | [**number**] | The number of books to skip in range [0,1000] | (optional) defaults to undefined
 **number** | [**number**] | The number of books to return in range [1,100] | (optional) defaults to undefined


### Return type

**any**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


