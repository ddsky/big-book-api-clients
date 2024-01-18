# DefaultApi

All URIs are relative to *https://api.bigbookapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooks**](DefaultApi.md#findSimilarBooks) | **GET** /{id}/similar | Find Similar Books
[**getBookInformation**](DefaultApi.md#getBookInformation) | **GET** /{id} | Get Book Information
[**searchAuthors**](DefaultApi.md#searchAuthors) | **GET** /search-authors | Search Authors
[**searchBooks**](DefaultApi.md#searchBooks) | **GET** /search-books | Search Books



## findSimilarBooks

> Object findSimilarBooks(id, number)

Find Similar Books

 Find books that are similar to the given book. 

### Example

```java
// Import classes:
//import com.bigbookapi.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 8302059; // BigDecimal | The id of the book to which similar books should be found.
BigDecimal number = 10; // BigDecimal | The number of similar books to return in range [1,100]
try {
    Object result = apiInstance.findSimilarBooks(id, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#findSimilarBooks");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the book to which similar books should be found. | [default to null]
 **number** | **BigDecimal**| The number of similar books to return in range [1,100] | [optional] [default to null]

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

```java
// Import classes:
//import com.bigbookapi.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
BigDecimal id = 15912250; // BigDecimal | The id of the book.
try {
    Object result = apiInstance.getBookInformation(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#getBookInformation");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the book. | [default to null]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchAuthors

> Object searchAuthors(name, offset, number)

Search Authors

 Search for book authors by name or partial name. The response contains the author&#39;s name and their id. You can then use the id in the book search. 

### Example

```java
// Import classes:
//import com.bigbookapi.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String name = Morgan Housel; // String | The (partial/beginning) name of the author.
BigDecimal offset = 0; // BigDecimal | The number of authors to skip in range [0,100]
BigDecimal number = 10; // BigDecimal | The number of authors to return in range [1,100]
try {
    Object result = apiInstance.searchAuthors(name, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchAuthors");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The (partial/beginning) name of the author. | [optional] [default to null]
 **offset** | **BigDecimal**| The number of authors to skip in range [0,100] | [optional] [default to null]
 **number** | **BigDecimal**| The number of authors to return in range [1,100] | [optional] [default to null]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchBooks

> Object searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number)

Search Books

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query. 

### Example

```java
// Import classes:
//import com.bigbookapi.DefaultApi;

DefaultApi apiInstance = new DefaultApi();
String query = books about wizards; // String | The search query.
BigDecimal earliestPublishYear = 2022; // BigDecimal | The books must have been published after this year.
BigDecimal latestPublishYear = 2023; // BigDecimal | The books must have been published before this year.
BigDecimal minRating = 0.8; // BigDecimal | The minimum rating the book must have gotten in the interval [0,1].
BigDecimal maxRating = 0.99; // BigDecimal | The maximum rating the book must have gotten in the interval [0,1].
String genres = nonfiction; // String | A comma-separated list of  genres. Only books from any of the given genres will be returned.
String authors = J.K. Rowling; // String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
String isbn = 9781781257654; // String | Only the book matching the ISBN-13 will be returned
String oclc = 864418200; // String | Only the book matching the OCLC will be returned
String sort = rating; // String | The sorting criteria (publish-date or rating).
String sortDirection = DESC; // String | Whether to sort ascending or descending (ASC or DESC).
Boolean groupResults = false; // Boolean | Whether to group similar editions of the same book.
BigDecimal offset = 0; // BigDecimal | The number of books to skip in range [0,1000]
BigDecimal number = 10; // BigDecimal | The number of books to return in range [1,100]
try {
    Object result = apiInstance.searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#searchBooks");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] [default to null]
 **earliestPublishYear** | **BigDecimal**| The books must have been published after this year. | [optional] [default to null]
 **latestPublishYear** | **BigDecimal**| The books must have been published before this year. | [optional] [default to null]
 **minRating** | **BigDecimal**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] [default to null]
 **maxRating** | **BigDecimal**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] [default to null]
 **genres** | **String**| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] [default to null]
 **authors** | **String**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] [default to null]
 **isbn** | **String**| Only the book matching the ISBN-13 will be returned | [optional] [default to null]
 **oclc** | **String**| Only the book matching the OCLC will be returned | [optional] [default to null]
 **sort** | **String**| The sorting criteria (publish-date or rating). | [optional] [default to null]
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional] [default to null]
 **groupResults** | **Boolean**| Whether to group similar editions of the same book. | [optional] [default to null]
 **offset** | **BigDecimal**| The number of books to skip in range [0,1000] | [optional] [default to null]
 **number** | **BigDecimal**| The number of books to return in range [1,100] | [optional] [default to null]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

