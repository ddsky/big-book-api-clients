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
> Object findSimilarBooks(id, number)

Find Similar Books

 Find books that are similar to the given book. 

### Example
```java
// Import classes:
import com.bigbookapi.client.ApiClient;
import com.bigbookapi.client.ApiException;
import com.bigbookapi.client.Configuration;
import com.bigbookapi.client.auth.*;
import com.bigbookapi.client.models.*;
import com.bigbookapi.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.bigbookapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    BigDecimal id = new BigDecimal("8302059"); // BigDecimal | The id of the book to which similar books should be found.
    BigDecimal number = new BigDecimal("10"); // BigDecimal | The number of similar books to return in range [1,100]
    try {
      Object result = apiInstance.findSimilarBooks(id, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#findSimilarBooks");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the book to which similar books should be found. |
 **number** | **BigDecimal**| The number of similar books to return in range [1,100] | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

<a name="getBookInformation"></a>
# **getBookInformation**
> Object getBookInformation(id)

Get Book Information

 Get all information about a certain book. 

### Example
```java
// Import classes:
import com.bigbookapi.client.ApiClient;
import com.bigbookapi.client.ApiException;
import com.bigbookapi.client.Configuration;
import com.bigbookapi.client.auth.*;
import com.bigbookapi.client.models.*;
import com.bigbookapi.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.bigbookapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    BigDecimal id = new BigDecimal("15912250"); // BigDecimal | The id of the book.
    try {
      Object result = apiInstance.getBookInformation(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#getBookInformation");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **BigDecimal**| The id of the book. |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

<a name="searchAuthors"></a>
# **searchAuthors**
> Object searchAuthors(name, offset, number)

Search Authors

 Search for book authors by name or partial name. The response contains the author&#39;s name and their id. You can then use the id in the book search. 

### Example
```java
// Import classes:
import com.bigbookapi.client.ApiClient;
import com.bigbookapi.client.ApiException;
import com.bigbookapi.client.Configuration;
import com.bigbookapi.client.auth.*;
import com.bigbookapi.client.models.*;
import com.bigbookapi.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.bigbookapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String name = "Morgan Housel"; // String | The (partial/beginning) name of the author.
    BigDecimal offset = new BigDecimal("0"); // BigDecimal | The number of authors to skip in range [0,100]
    BigDecimal number = new BigDecimal("10"); // BigDecimal | The number of authors to return in range [1,100]
    try {
      Object result = apiInstance.searchAuthors(name, offset, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#searchAuthors");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The (partial/beginning) name of the author. | [optional]
 **offset** | **BigDecimal**| The number of authors to skip in range [0,100] | [optional]
 **number** | **BigDecimal**| The number of authors to return in range [1,100] | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

<a name="searchBooks"></a>
# **searchBooks**
> Object searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number)

Search Books

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query. 

### Example
```java
// Import classes:
import com.bigbookapi.client.ApiClient;
import com.bigbookapi.client.ApiException;
import com.bigbookapi.client.Configuration;
import com.bigbookapi.client.auth.*;
import com.bigbookapi.client.models.*;
import com.bigbookapi.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.bigbookapi.com");
    
    // Configure API key authorization: apiKey
    ApiKeyAuth apiKey = (ApiKeyAuth) defaultClient.getAuthentication("apiKey");
    apiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //apiKey.setApiKeyPrefix("Token");

    // Configure API key authorization: headerApiKey
    ApiKeyAuth headerApiKey = (ApiKeyAuth) defaultClient.getAuthentication("headerApiKey");
    headerApiKey.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //headerApiKey.setApiKeyPrefix("Token");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String query = "books about wizards"; // String | The search query.
    BigDecimal earliestPublishYear = new BigDecimal("2022"); // BigDecimal | The books must have been published after this year.
    BigDecimal latestPublishYear = new BigDecimal("2023"); // BigDecimal | The books must have been published before this year.
    BigDecimal minRating = new BigDecimal("0.8"); // BigDecimal | The minimum rating the book must have gotten in the interval [0,1].
    BigDecimal maxRating = new BigDecimal("0.99"); // BigDecimal | The maximum rating the book must have gotten in the interval [0,1].
    String genres = "nonfiction"; // String | A comma-separated list of  genres. Only books from any of the given genres will be returned.
    String authors = "J.K. Rowling"; // String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
    String isbn = "9781781257654"; // String | Only the book matching the ISBN-13 will be returned
    String oclc = "864418200"; // String | Only the book matching the OCLC will be returned
    String sort = "rating"; // String | The sorting criteria (publish-date or rating).
    String sortDirection = "DESC"; // String | Whether to sort ascending or descending (ASC or DESC).
    Boolean groupResults = false; // Boolean | Whether to group similar editions of the same book.
    BigDecimal offset = new BigDecimal("0"); // BigDecimal | The number of books to skip in range [0,1000]
    BigDecimal number = new BigDecimal("10"); // BigDecimal | The number of books to return in range [1,100]
    try {
      Object result = apiInstance.searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#searchBooks");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional]
 **earliestPublishYear** | **BigDecimal**| The books must have been published after this year. | [optional]
 **latestPublishYear** | **BigDecimal**| The books must have been published before this year. | [optional]
 **minRating** | **BigDecimal**| The minimum rating the book must have gotten in the interval [0,1]. | [optional]
 **maxRating** | **BigDecimal**| The maximum rating the book must have gotten in the interval [0,1]. | [optional]
 **genres** | **String**| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional]
 **authors** | **String**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional]
 **isbn** | **String**| Only the book matching the ISBN-13 will be returned | [optional]
 **oclc** | **String**| Only the book matching the OCLC will be returned | [optional]
 **sort** | **String**| The sorting criteria (publish-date or rating). | [optional]
 **sortDirection** | **String**| Whether to sort ascending or descending (ASC or DESC). | [optional]
 **groupResults** | **Boolean**| Whether to group similar editions of the same book. | [optional]
 **offset** | **BigDecimal**| The number of books to skip in range [0,1000] | [optional]
 **number** | **BigDecimal**| The number of books to return in range [1,100] | [optional]

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

