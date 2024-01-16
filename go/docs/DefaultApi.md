# com.bigbookapi.client\DefaultApi

All URIs are relative to *https://api.bigbookapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FindSimilarBooks**](DefaultApi.md#FindSimilarBooks) | **Get** /{id}/similar | Find Similar Books
[**GetBookInformation**](DefaultApi.md#GetBookInformation) | **Get** /{id} | Get Book Information
[**SearchAuthors**](DefaultApi.md#SearchAuthors) | **Get** /search-authors | Search Authors
[**SearchBooks**](DefaultApi.md#SearchBooks) | **Get** /search-books | Search Books



## FindSimilarBooks

> map[string]interface{} FindSimilarBooks(ctx, id).Number(number).Execute()

Find Similar Books



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := float32(8302059) // float32 | The id of the book to which similar books should be found.
    number := float32(10) // float32 | The number of similar books to return in range [1,100] (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DefaultApi.FindSimilarBooks(context.Background(), id).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.FindSimilarBooks``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FindSimilarBooks`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.FindSimilarBooks`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The id of the book to which similar books should be found. | 

### Other Parameters

Other parameters are passed through a pointer to a apiFindSimilarBooksRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **number** | **float32** | The number of similar books to return in range [1,100] | 

### Return type

**map[string]interface{}**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetBookInformation

> map[string]interface{} GetBookInformation(ctx, id).Execute()

Get Book Information



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    id := float32(15912250) // float32 | The id of the book.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DefaultApi.GetBookInformation(context.Background(), id).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.GetBookInformation``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetBookInformation`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.GetBookInformation`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The id of the book. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetBookInformationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**map[string]interface{}**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchAuthors

> map[string]interface{} SearchAuthors(ctx).Name(name).Offset(offset).Number(number).Execute()

Search Authors



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    name := "Morgan Housel" // string | The (partial/beginning) name of the author. (optional)
    offset := float32(0) // float32 | The number of authors to skip in range [0,100] (optional)
    number := float32(10) // float32 | The number of authors to return in range [1,100] (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DefaultApi.SearchAuthors(context.Background()).Name(name).Offset(offset).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.SearchAuthors``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchAuthors`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.SearchAuthors`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchAuthorsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | The (partial/beginning) name of the author. | 
 **offset** | **float32** | The number of authors to skip in range [0,100] | 
 **number** | **float32** | The number of authors to return in range [1,100] | 

### Return type

**map[string]interface{}**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchBooks

> map[string]interface{} SearchBooks(ctx).Query(query).EarliestPublishYear(earliestPublishYear).LatestPublishYear(latestPublishYear).MinRating(minRating).MaxRating(maxRating).Genres(genres).Authors(authors).Isbn(isbn).Oclc(oclc).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Execute()

Search Books



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    query := "books about wizards" // string | The search query. (optional)
    earliestPublishYear := float32(2022) // float32 | The books must have been published after this year. (optional)
    latestPublishYear := float32(2023) // float32 | The books must have been published before this year. (optional)
    minRating := float32(0.8) // float32 | The minimum rating the book must have gotten in the interval [0,1]. (optional)
    maxRating := float32(0.99) // float32 | The maximum rating the book must have gotten in the interval [0,1]. (optional)
    genres := "nonfiction" // string | A comma-separated list of  genres. Only books from any of the given genres will be returned. (optional)
    authors := "J.K. Rowling" // string | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. (optional)
    isbn := "9781781257654" // string | Only the book matching the ISBN-13 will be returned (optional)
    oclc := "864418200" // string | Only the book matching the OCLC will be returned (optional)
    sort := "rating" // string | The sorting criteria (publish-date or rating). (optional)
    sortDirection := "DESC" // string | Whether to sort ascending or descending (ASC or DESC). (optional)
    offset := float32(0) // float32 | The number of books to skip in range [0,1000] (optional)
    number := float32(10) // float32 | The number of books to return in range [1,100] (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DefaultApi.SearchBooks(context.Background()).Query(query).EarliestPublishYear(earliestPublishYear).LatestPublishYear(latestPublishYear).MinRating(minRating).MaxRating(maxRating).Genres(genres).Authors(authors).Isbn(isbn).Oclc(oclc).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DefaultApi.SearchBooks``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchBooks`: map[string]interface{}
    fmt.Fprintf(os.Stdout, "Response from `DefaultApi.SearchBooks`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchBooksRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **earliestPublishYear** | **float32** | The books must have been published after this year. | 
 **latestPublishYear** | **float32** | The books must have been published before this year. | 
 **minRating** | **float32** | The minimum rating the book must have gotten in the interval [0,1]. | 
 **maxRating** | **float32** | The maximum rating the book must have gotten in the interval [0,1]. | 
 **genres** | **string** | A comma-separated list of  genres. Only books from any of the given genres will be returned. | 
 **authors** | **string** | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | 
 **isbn** | **string** | Only the book matching the ISBN-13 will be returned | 
 **oclc** | **string** | Only the book matching the OCLC will be returned | 
 **sort** | **string** | The sorting criteria (publish-date or rating). | 
 **sortDirection** | **string** | Whether to sort ascending or descending (ASC or DESC). | 
 **offset** | **float32** | The number of books to skip in range [0,1000] | 
 **number** | **float32** | The number of books to return in range [1,100] | 

### Return type

**map[string]interface{}**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

