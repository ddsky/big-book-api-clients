# com.bigbookapi.DefaultApi

All URIs are relative to *https://api.bigbookapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FindSimilarBooks**](DefaultApi.md#findsimilarbooks) | **GET** /{id}/similar | Find Similar Books
[**GetBookInformation**](DefaultApi.md#getbookinformation) | **GET** /{id} | Get Book Information
[**SearchAuthors**](DefaultApi.md#searchauthors) | **GET** /search-authors | Search Authors
[**SearchBooks**](DefaultApi.md#searchbooks) | **GET** /search-books | Search Books


<a name="findsimilarbooks"></a>
# **FindSimilarBooks**
> Object FindSimilarBooks (decimal? id, decimal? number)

Find Similar Books

 Find books that are similar to the given book. 

### Example
```csharp
using System;
using System.Diagnostics;
using com.bigbookapi;
using Org.OpenAPITools.Client;
using com.bigbookapi.client.model;

namespace Example
{
    public class FindSimilarBooksExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new DefaultApi();
            var id = 8302059;  // decimal? | The id of the book to which similar books should be found.
            var number = 10;  // decimal? | The number of similar books to return in range [1,100] (optional) 

            try
            {
                // Find Similar Books
                Object result = apiInstance.FindSimilarBooks(id, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.FindSimilarBooks: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The id of the book to which similar books should be found. | 
 **number** | **decimal?**| The number of similar books to return in range [1,100] | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getbookinformation"></a>
# **GetBookInformation**
> Object GetBookInformation (decimal? id)

Get Book Information

 Get all information about a certain book. 

### Example
```csharp
using System;
using System.Diagnostics;
using com.bigbookapi;
using Org.OpenAPITools.Client;
using com.bigbookapi.client.model;

namespace Example
{
    public class GetBookInformationExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new DefaultApi();
            var id = 15912250;  // decimal? | The id of the book.

            try
            {
                // Get Book Information
                Object result = apiInstance.GetBookInformation(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.GetBookInformation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **decimal?**| The id of the book. | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchauthors"></a>
# **SearchAuthors**
> Object SearchAuthors (string name, decimal? offset, decimal? number)

Search Authors

 Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 

### Example
```csharp
using System;
using System.Diagnostics;
using com.bigbookapi;
using Org.OpenAPITools.Client;
using com.bigbookapi.client.model;

namespace Example
{
    public class SearchAuthorsExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new DefaultApi();
            var name = Morgan Housel;  // string | The (partial/beginning) name of the author. (optional) 
            var offset = 0;  // decimal? | The number of authors to skip in range [0,100] (optional) 
            var number = 10;  // decimal? | The number of authors to return in range [1,100] (optional) 

            try
            {
                // Search Authors
                Object result = apiInstance.SearchAuthors(name, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchAuthors: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The (partial/beginning) name of the author. | [optional] 
 **offset** | **decimal?**| The number of authors to skip in range [0,100] | [optional] 
 **number** | **decimal?**| The number of authors to return in range [1,100] | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="searchbooks"></a>
# **SearchBooks**
> Object SearchBooks (string query, decimal? earliestPublishYear, decimal? latestPublishYear, decimal? minRating, decimal? maxRating, string genres, string authors, string isbn, string oclc, string sort, string sortDirection, decimal? offset, decimal? number)

Search Books

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 

### Example
```csharp
using System;
using System.Diagnostics;
using com.bigbookapi;
using Org.OpenAPITools.Client;
using com.bigbookapi.client.model;

namespace Example
{
    public class SearchBooksExample
    {
        public void main()
        {
            // Configure API key authorization: apiKey
            Configuration.Default.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            Configuration.Default.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new DefaultApi();
            var query = books about wizards;  // string | The search query. (optional) 
            var earliestPublishYear = 2022;  // decimal? | The books must have been published after this year. (optional) 
            var latestPublishYear = 2023;  // decimal? | The books must have been published before this year. (optional) 
            var minRating = 0.8;  // decimal? | The minimum rating the book must have gotten in the interval [0,1]. (optional) 
            var maxRating = 0.99;  // decimal? | The maximum rating the book must have gotten in the interval [0,1]. (optional) 
            var genres = nonfiction;  // string | A comma-separated list of  genres. Only books from any of the given genres will be returned. (optional) 
            var authors = J.K. Rowling;  // string | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. (optional) 
            var isbn = 9781781257654;  // string | Only the book matching the ISBN-13 will be returned (optional) 
            var oclc = 864418200;  // string | Only the book matching the OCLC will be returned (optional) 
            var sort = rating;  // string | The sorting criteria (publish-date or rating). (optional) 
            var sortDirection = DESC;  // string | Whether to sort ascending or descending (ASC or DESC). (optional) 
            var offset = 0;  // decimal? | The number of books to skip in range [0,1000] (optional) 
            var number = 10;  // decimal? | The number of books to return in range [1,100] (optional) 

            try
            {
                // Search Books
                Object result = apiInstance.SearchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, offset, number);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.SearchBooks: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | [optional] 
 **earliestPublishYear** | **decimal?**| The books must have been published after this year. | [optional] 
 **latestPublishYear** | **decimal?**| The books must have been published before this year. | [optional] 
 **minRating** | **decimal?**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] 
 **maxRating** | **decimal?**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] 
 **genres** | **string**| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] 
 **authors** | **string**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] 
 **isbn** | **string**| Only the book matching the ISBN-13 will be returned | [optional] 
 **oclc** | **string**| Only the book matching the OCLC will be returned | [optional] 
 **sort** | **string**| The sorting criteria (publish-date or rating). | [optional] 
 **sortDirection** | **string**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **decimal?**| The number of books to skip in range [0,1000] | [optional] 
 **number** | **decimal?**| The number of books to return in range [1,100] | [optional] 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

