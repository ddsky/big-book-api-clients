# bigbookapi.DefaultApi

All URIs are relative to *https://api.bigbookapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_similar_books**](DefaultApi.md#find_similar_books) | **GET** /{id}/similar | Find Similar Books
[**get_book_information**](DefaultApi.md#get_book_information) | **GET** /{id} | Get Book Information
[**search_authors**](DefaultApi.md#search_authors) | **GET** /search-authors | Search Authors
[**search_books**](DefaultApi.md#search_books) | **GET** /search-books | Search Books


# **find_similar_books**
> object find_similar_books(id, number=number)

Find Similar Books

 Find books that are similar to the given book. 

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import bigbookapi
from bigbookapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.bigbookapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = bigbookapi.Configuration(
    host = "https://api.bigbookapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with bigbookapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = bigbookapi.DefaultApi(api_client)
    id = 8302059 # float | The id of the book to which similar books should be found.
    number = 10 # float | The number of similar books to return in range [1,100] (optional)

    try:
        # Find Similar Books
        api_response = api_instance.find_similar_books(id, number=number)
        print("The response of DefaultApi->find_similar_books:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->find_similar_books: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the book to which similar books should be found. | 
 **number** | **float**| The number of similar books to return in range [1,100] | [optional] 

### Return type

**object**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_book_information**
> object get_book_information(id)

Get Book Information

 Get all information about a certain book. 

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import bigbookapi
from bigbookapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.bigbookapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = bigbookapi.Configuration(
    host = "https://api.bigbookapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with bigbookapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = bigbookapi.DefaultApi(api_client)
    id = 15912250 # float | The id of the book.

    try:
        # Get Book Information
        api_response = api_instance.get_book_information(id)
        print("The response of DefaultApi->get_book_information:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_book_information: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the book. | 

### Return type

**object**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_authors**
> object search_authors(name=name, offset=offset, number=number)

Search Authors

 Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import bigbookapi
from bigbookapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.bigbookapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = bigbookapi.Configuration(
    host = "https://api.bigbookapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with bigbookapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = bigbookapi.DefaultApi(api_client)
    name = 'Morgan Housel' # str | The (partial/beginning) name of the author. (optional)
    offset = 0 # float | The number of authors to skip in range [0,100] (optional)
    number = 10 # float | The number of authors to return in range [1,100] (optional)

    try:
        # Search Authors
        api_response = api_instance.search_authors(name=name, offset=offset, number=number)
        print("The response of DefaultApi->search_authors:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->search_authors: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The (partial/beginning) name of the author. | [optional] 
 **offset** | **float**| The number of authors to skip in range [0,100] | [optional] 
 **number** | **float**| The number of authors to return in range [1,100] | [optional] 

### Return type

**object**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_books**
> object search_books(query=query, earliest_publish_year=earliest_publish_year, latest_publish_year=latest_publish_year, min_rating=min_rating, max_rating=max_rating, genres=genres, authors=authors, isbn=isbn, oclc=oclc, sort=sort, sort_direction=sort_direction, group_results=group_results, offset=offset, number=number)

Search Books

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import bigbookapi
from bigbookapi.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.bigbookapi.com
# See configuration.py for a list of all supported configuration parameters.
configuration = bigbookapi.Configuration(
    host = "https://api.bigbookapi.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with bigbookapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = bigbookapi.DefaultApi(api_client)
    query = 'books about wizards' # str | The search query. (optional)
    earliest_publish_year = 2022 # float | The books must have been published after this year. (optional)
    latest_publish_year = 2023 # float | The books must have been published before this year. (optional)
    min_rating = 0.8 # float | The minimum rating the book must have gotten in the interval [0,1]. (optional)
    max_rating = 0.99 # float | The maximum rating the book must have gotten in the interval [0,1]. (optional)
    genres = 'nonfiction' # str | A comma-separated list of  genres. Only books from any of the given genres will be returned. (optional)
    authors = 'J.K. Rowling' # str | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. (optional)
    isbn = '9781781257654' # str | Only the book matching the ISBN-13 will be returned (optional)
    oclc = '864418200' # str | Only the book matching the OCLC will be returned (optional)
    sort = 'rating' # str | The sorting criteria (publish-date or rating). (optional)
    sort_direction = 'DESC' # str | Whether to sort ascending or descending (ASC or DESC). (optional)
    group_results = false # bool | Whether to group similar editions of the same book. (optional)
    offset = 0 # float | The number of books to skip in range [0,1000] (optional)
    number = 10 # float | The number of books to return in range [1,100] (optional)

    try:
        # Search Books
        api_response = api_instance.search_books(query=query, earliest_publish_year=earliest_publish_year, latest_publish_year=latest_publish_year, min_rating=min_rating, max_rating=max_rating, genres=genres, authors=authors, isbn=isbn, oclc=oclc, sort=sort, sort_direction=sort_direction, group_results=group_results, offset=offset, number=number)
        print("The response of DefaultApi->search_books:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->search_books: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The search query. | [optional] 
 **earliest_publish_year** | **float**| The books must have been published after this year. | [optional] 
 **latest_publish_year** | **float**| The books must have been published before this year. | [optional] 
 **min_rating** | **float**| The minimum rating the book must have gotten in the interval [0,1]. | [optional] 
 **max_rating** | **float**| The maximum rating the book must have gotten in the interval [0,1]. | [optional] 
 **genres** | **str**| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] 
 **authors** | **str**| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] 
 **isbn** | **str**| Only the book matching the ISBN-13 will be returned | [optional] 
 **oclc** | **str**| Only the book matching the OCLC will be returned | [optional] 
 **sort** | **str**| The sorting criteria (publish-date or rating). | [optional] 
 **sort_direction** | **str**| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **group_results** | **bool**| Whether to group similar editions of the same book. | [optional] 
 **offset** | **float**| The number of books to skip in range [0,1000] | [optional] 
 **number** | **float**| The number of books to return in range [1,100] | [optional] 

### Return type

**object**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

