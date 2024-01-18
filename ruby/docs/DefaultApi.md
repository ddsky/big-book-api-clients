# OpenapiClient::DefaultApi

All URIs are relative to *https://api.bigbookapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_similar_books**](DefaultApi.md#find_similar_books) | **GET** /{id}/similar | Find Similar Books |
| [**get_book_information**](DefaultApi.md#get_book_information) | **GET** /{id} | Get Book Information |
| [**search_authors**](DefaultApi.md#search_authors) | **GET** /search-authors | Search Authors |
| [**search_books**](DefaultApi.md#search_books) | **GET** /search-books | Search Books |


## find_similar_books

> Object find_similar_books(id, opts)

Find Similar Books

 Find books that are similar to the given book. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
id = 8302059 # Float | The id of the book to which similar books should be found.
opts = {
  number: 10 # Float | The number of similar books to return in range [1,100]
}

begin
  # Find Similar Books
  result = api_instance.find_similar_books(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->find_similar_books: #{e}"
end
```

#### Using the find_similar_books_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> find_similar_books_with_http_info(id, opts)

```ruby
begin
  # Find Similar Books
  data, status_code, headers = api_instance.find_similar_books_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->find_similar_books_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Float** | The id of the book to which similar books should be found. |  |
| **number** | **Float** | The number of similar books to return in range [1,100] | [optional] |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_book_information

> Object get_book_information(id)

Get Book Information

 Get all information about a certain book. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
id = 15912250 # Float | The id of the book.

begin
  # Get Book Information
  result = api_instance.get_book_information(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->get_book_information: #{e}"
end
```

#### Using the get_book_information_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_book_information_with_http_info(id)

```ruby
begin
  # Get Book Information
  data, status_code, headers = api_instance.get_book_information_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->get_book_information_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Float** | The id of the book. |  |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_authors

> Object search_authors(opts)

Search Authors

 Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
opts = {
  name: 'Morgan Housel', # String | The (partial/beginning) name of the author.
  offset: 0, # Float | The number of authors to skip in range [0,100]
  number: 10 # Float | The number of authors to return in range [1,100]
}

begin
  # Search Authors
  result = api_instance.search_authors(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->search_authors: #{e}"
end
```

#### Using the search_authors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> search_authors_with_http_info(opts)

```ruby
begin
  # Search Authors
  data, status_code, headers = api_instance.search_authors_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->search_authors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The (partial/beginning) name of the author. | [optional] |
| **offset** | **Float** | The number of authors to skip in range [0,100] | [optional] |
| **number** | **Float** | The number of authors to return in range [1,100] | [optional] |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_books

> Object search_books(opts)

Search Books

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
opts = {
  query: 'books about wizards', # String | The search query.
  earliest_publish_year: 2022, # Float | The books must have been published after this year.
  latest_publish_year: 2023, # Float | The books must have been published before this year.
  min_rating: 0.8, # Float | The minimum rating the book must have gotten in the interval [0,1].
  max_rating: 0.99, # Float | The maximum rating the book must have gotten in the interval [0,1].
  genres: 'nonfiction', # String | A comma-separated list of  genres. Only books from any of the given genres will be returned.
  authors: 'J.K. Rowling', # String | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
  isbn: '9781781257654', # String | Only the book matching the ISBN-13 will be returned
  oclc: '864418200', # String | Only the book matching the OCLC will be returned
  sort: 'rating', # String | The sorting criteria (publish-date or rating).
  sort_direction: 'DESC', # String | Whether to sort ascending or descending (ASC or DESC).
  group_results: false, # Boolean | Whether to group similar editions of the same book.
  offset: 0, # Float | The number of books to skip in range [0,1000]
  number: 10 # Float | The number of books to return in range [1,100]
}

begin
  # Search Books
  result = api_instance.search_books(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->search_books: #{e}"
end
```

#### Using the search_books_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> search_books_with_http_info(opts)

```ruby
begin
  # Search Books
  data, status_code, headers = api_instance.search_books_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->search_books_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. | [optional] |
| **earliest_publish_year** | **Float** | The books must have been published after this year. | [optional] |
| **latest_publish_year** | **Float** | The books must have been published before this year. | [optional] |
| **min_rating** | **Float** | The minimum rating the book must have gotten in the interval [0,1]. | [optional] |
| **max_rating** | **Float** | The maximum rating the book must have gotten in the interval [0,1]. | [optional] |
| **genres** | **String** | A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] |
| **authors** | **String** | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] |
| **isbn** | **String** | Only the book matching the ISBN-13 will be returned | [optional] |
| **oclc** | **String** | Only the book matching the OCLC will be returned | [optional] |
| **sort** | **String** | The sorting criteria (publish-date or rating). | [optional] |
| **sort_direction** | **String** | Whether to sort ascending or descending (ASC or DESC). | [optional] |
| **group_results** | **Boolean** | Whether to group similar editions of the same book. | [optional] |
| **offset** | **Float** | The number of books to skip in range [0,1000] | [optional] |
| **number** | **Float** | The number of books to return in range [1,100] | [optional] |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

