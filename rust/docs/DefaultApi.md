# com.bigbookapi.client\DefaultApi

All URIs are relative to *https://api.bigbookapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_similar_books**](DefaultApi.md#find_similar_books) | **GET** /{id}/similar | Find Similar Books
[**get_book_information**](DefaultApi.md#get_book_information) | **GET** /{id} | Get Book Information
[**search_authors**](DefaultApi.md#search_authors) | **GET** /search-authors | Search Authors
[**search_books**](DefaultApi.md#search_books) | **GET** /search-books | Search Books



## find_similar_books

> serde_json::Value find_similar_books(id, number)
Find Similar Books

 Find books that are similar to the given book. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The id of the book to which similar books should be found. | [required] |
**number** | Option<**f32**> | The number of similar books to return in range [1,100] |  |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_book_information

> serde_json::Value get_book_information(id)
Get Book Information

 Get all information about a certain book. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **f32** | The id of the book. | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_authors

> serde_json::Value search_authors(name, offset, number)
Search Authors

 Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | Option<**String**> | The (partial/beginning) name of the author. |  |
**offset** | Option<**f32**> | The number of authors to skip in range [0,100] |  |
**number** | Option<**f32**> | The number of authors to return in range [1,100] |  |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_books

> serde_json::Value search_books(query, earliest_publish_year, latest_publish_year, min_rating, max_rating, genres, authors, isbn, oclc, sort, sort_direction, group_results, offset, number)
Search Books

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The search query. |  |
**earliest_publish_year** | Option<**f32**> | The books must have been published after this year. |  |
**latest_publish_year** | Option<**f32**> | The books must have been published before this year. |  |
**min_rating** | Option<**f32**> | The minimum rating the book must have gotten in the interval [0,1]. |  |
**max_rating** | Option<**f32**> | The maximum rating the book must have gotten in the interval [0,1]. |  |
**genres** | Option<**String**> | A comma-separated list of  genres. Only books from any of the given genres will be returned. |  |
**authors** | Option<**String**> | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. |  |
**isbn** | Option<**String**> | Only the book matching the ISBN-13 will be returned |  |
**oclc** | Option<**String**> | Only the book matching the OCLC will be returned |  |
**sort** | Option<**String**> | The sorting criteria (publish-date or rating). |  |
**sort_direction** | Option<**String**> | Whether to sort ascending or descending (ASC or DESC). |  |
**group_results** | Option<**bool**> | Whether to group similar editions of the same book. |  |
**offset** | Option<**f32**> | The number of books to skip in range [0,1000] |  |
**number** | Option<**f32**> | The number of books to return in range [1,100] |  |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

