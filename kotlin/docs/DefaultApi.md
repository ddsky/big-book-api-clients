# DefaultApi

All URIs are relative to *https://api.bigbookapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooks**](DefaultApi.md#findSimilarBooks) | **GET** /{id}/similar | Find Similar Books
[**getBookInformation**](DefaultApi.md#getBookInformation) | **GET** /{id} | Get Book Information
[**searchAuthors**](DefaultApi.md#searchAuthors) | **GET** /search-authors | Search Authors
[**searchBooks**](DefaultApi.md#searchBooks) | **GET** /search-books | Search Books


<a name="findSimilarBooks"></a>
# **findSimilarBooks**
> kotlin.Any findSimilarBooks(id, number)

Find Similar Books

 Find books that are similar to the given book. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.bigbookapi.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 8302059 // java.math.BigDecimal | The id of the book to which similar books should be found.
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of similar books to return in range [1,100]
try {
    val result : kotlin.Any = apiInstance.findSimilarBooks(id, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#findSimilarBooks")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#findSimilarBooks")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The id of the book to which similar books should be found. |
 **number** | **java.math.BigDecimal**| The number of similar books to return in range [1,100] | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getBookInformation"></a>
# **getBookInformation**
> kotlin.Any getBookInformation(id)

Get Book Information

 Get all information about a certain book. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.bigbookapi.client.model.*

val apiInstance = DefaultApi()
val id : java.math.BigDecimal = 15912250 // java.math.BigDecimal | The id of the book.
try {
    val result : kotlin.Any = apiInstance.getBookInformation(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#getBookInformation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#getBookInformation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The id of the book. |

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchAuthors"></a>
# **searchAuthors**
> kotlin.Any searchAuthors(name, offset, number)

Search Authors

 Search for book authors by name or partial name. The response contains the author&#39;s name and their id. You can then use the id in the book search. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.bigbookapi.client.model.*

val apiInstance = DefaultApi()
val name : kotlin.String = Morgan Housel // kotlin.String | The (partial/beginning) name of the author.
val offset : java.math.BigDecimal = 0 // java.math.BigDecimal | The number of authors to skip in range [0,100]
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of authors to return in range [1,100]
try {
    val result : kotlin.Any = apiInstance.searchAuthors(name, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchAuthors")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchAuthors")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| The (partial/beginning) name of the author. | [optional]
 **offset** | **java.math.BigDecimal**| The number of authors to skip in range [0,100] | [optional]
 **number** | **java.math.BigDecimal**| The number of authors to return in range [1,100] | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchBooks"></a>
# **searchBooks**
> kotlin.Any searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, offset, number)

Search Books

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import com.bigbookapi.client.model.*

val apiInstance = DefaultApi()
val query : kotlin.String = books about wizards // kotlin.String | The search query.
val earliestPublishYear : java.math.BigDecimal = 2022 // java.math.BigDecimal | The books must have been published after this year.
val latestPublishYear : java.math.BigDecimal = 2023 // java.math.BigDecimal | The books must have been published before this year.
val minRating : java.math.BigDecimal = 0.8 // java.math.BigDecimal | The minimum rating the book must have gotten in the interval [0,1].
val maxRating : java.math.BigDecimal = 0.99 // java.math.BigDecimal | The maximum rating the book must have gotten in the interval [0,1].
val genres : kotlin.String = nonfiction // kotlin.String | A comma-separated list of  genres. Only books from any of the given genres will be returned.
val authors : kotlin.String = J.K. Rowling // kotlin.String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
val isbn : kotlin.String = 9781781257654 // kotlin.String | Only the book matching the ISBN-13 will be returned
val oclc : kotlin.String = 864418200 // kotlin.String | Only the book matching the OCLC will be returned
val sort : kotlin.String = rating // kotlin.String | The sorting criteria (publish-date or rating).
val sortDirection : kotlin.String = DESC // kotlin.String | Whether to sort ascending or descending (ASC or DESC).
val offset : java.math.BigDecimal = 0 // java.math.BigDecimal | The number of books to skip in range [0,1000]
val number : java.math.BigDecimal = 10 // java.math.BigDecimal | The number of books to return in range [1,100]
try {
    val result : kotlin.Any = apiInstance.searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#searchBooks")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#searchBooks")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **kotlin.String**| The search query. | [optional]
 **earliestPublishYear** | **java.math.BigDecimal**| The books must have been published after this year. | [optional]
 **latestPublishYear** | **java.math.BigDecimal**| The books must have been published before this year. | [optional]
 **minRating** | **java.math.BigDecimal**| The minimum rating the book must have gotten in the interval [0,1]. | [optional]
 **maxRating** | **java.math.BigDecimal**| The maximum rating the book must have gotten in the interval [0,1]. | [optional]
 **genres** | **kotlin.String**| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional]
 **authors** | **kotlin.String**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional]
 **isbn** | **kotlin.String**| Only the book matching the ISBN-13 will be returned | [optional]
 **oclc** | **kotlin.String**| Only the book matching the OCLC will be returned | [optional]
 **sort** | **kotlin.String**| The sorting criteria (publish-date or rating). | [optional]
 **sortDirection** | **kotlin.String**| Whether to sort ascending or descending (ASC or DESC). | [optional]
 **offset** | **java.math.BigDecimal**| The number of books to skip in range [0,1000] | [optional]
 **number** | **java.math.BigDecimal**| The number of books to return in range [1,100] | [optional]

### Return type

[**kotlin.Any**](kotlin.Any.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

