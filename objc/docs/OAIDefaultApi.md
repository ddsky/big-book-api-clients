# OAIDefaultApi

All URIs are relative to *https://api.bigbookapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSimilarBooks**](OAIDefaultApi.md#findsimilarbooks) | **GET** /{id}/similar | Find Similar Books
[**getBookInformation**](OAIDefaultApi.md#getbookinformation) | **GET** /{id} | Get Book Information
[**searchAuthors**](OAIDefaultApi.md#searchauthors) | **GET** /search-authors | Search Authors
[**searchBooks**](OAIDefaultApi.md#searchbooks) | **GET** /search-books | Search Books


# **findSimilarBooks**
```objc
-(NSURLSessionTask*) findSimilarBooksWithId: (NSNumber*) _id
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Find Similar Books

 Find books that are similar to the given book. 

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* _id = 8302059; // The id of the book to which similar books should be found.
NSNumber* number = 10; // The number of similar books to return in range [1,100] (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Find Similar Books
[apiInstance findSimilarBooksWithId:_id
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->findSimilarBooks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the book to which similar books should be found. | 
 **number** | **NSNumber***| The number of similar books to return in range [1,100] | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBookInformation**
```objc
-(NSURLSessionTask*) getBookInformationWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Get Book Information

 Get all information about a certain book. 

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSNumber* _id = 15912250; // The id of the book.

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Get Book Information
[apiInstance getBookInformationWithId:_id
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->getBookInformation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| The id of the book. | 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAuthors**
```objc
-(NSURLSessionTask*) searchAuthorsWithName: (NSString*) name
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Search Authors

 Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* name = Morgan Housel; // The (partial/beginning) name of the author. (optional)
NSNumber* offset = 0; // The number of authors to skip in range [0,100] (optional)
NSNumber* number = 10; // The number of authors to return in range [1,100] (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Search Authors
[apiInstance searchAuthorsWithName:name
              offset:offset
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchAuthors: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| The (partial/beginning) name of the author. | [optional] 
 **offset** | **NSNumber***| The number of authors to skip in range [0,100] | [optional] 
 **number** | **NSNumber***| The number of authors to return in range [1,100] | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchBooks**
```objc
-(NSURLSessionTask*) searchBooksWithQuery: (NSString*) query
    earliestPublishYear: (NSNumber*) earliestPublishYear
    latestPublishYear: (NSNumber*) latestPublishYear
    minRating: (NSNumber*) minRating
    maxRating: (NSNumber*) maxRating
    genres: (NSString*) genres
    authors: (NSString*) authors
    isbn: (NSString*) isbn
    oclc: (NSString*) oclc
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    offset: (NSNumber*) offset
    number: (NSNumber*) number
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Search Books

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: apiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api-key"];

// Configure API key authorization: (authentication scheme: headerApiKey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"x-api-key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"x-api-key"];


NSString* query = books about wizards; // The search query. (optional)
NSNumber* earliestPublishYear = 2022; // The books must have been published after this year. (optional)
NSNumber* latestPublishYear = 2023; // The books must have been published before this year. (optional)
NSNumber* minRating = 0.8; // The minimum rating the book must have gotten in the interval [0,1]. (optional)
NSNumber* maxRating = 0.99; // The maximum rating the book must have gotten in the interval [0,1]. (optional)
NSString* genres = nonfiction; // A comma-separated list of  genres. Only books from any of the given genres will be returned. (optional)
NSString* authors = J.K. Rowling; // A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. (optional)
NSString* isbn = 9781781257654; // Only the book matching the ISBN-13 will be returned (optional)
NSString* oclc = 864418200; // Only the book matching the OCLC will be returned (optional)
NSString* sort = rating; // The sorting criteria (publish-date or rating). (optional)
NSString* sortDirection = DESC; // Whether to sort ascending or descending (ASC or DESC). (optional)
NSNumber* offset = 0; // The number of books to skip in range [0,1000] (optional)
NSNumber* number = 10; // The number of books to return in range [1,100] (optional)

OAIDefaultApi*apiInstance = [[OAIDefaultApi alloc] init];

// Search Books
[apiInstance searchBooksWithQuery:query
              earliestPublishYear:earliestPublishYear
              latestPublishYear:latestPublishYear
              minRating:minRating
              maxRating:maxRating
              genres:genres
              authors:authors
              isbn:isbn
              oclc:oclc
              sort:sort
              sortDirection:sortDirection
              offset:offset
              number:number
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDefaultApi->searchBooks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| The search query. | [optional] 
 **earliestPublishYear** | **NSNumber***| The books must have been published after this year. | [optional] 
 **latestPublishYear** | **NSNumber***| The books must have been published before this year. | [optional] 
 **minRating** | **NSNumber***| The minimum rating the book must have gotten in the interval [0,1]. | [optional] 
 **maxRating** | **NSNumber***| The maximum rating the book must have gotten in the interval [0,1]. | [optional] 
 **genres** | **NSString***| A comma-separated list of  genres. Only books from any of the given genres will be returned. | [optional] 
 **authors** | **NSString***| A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. | [optional] 
 **isbn** | **NSString***| Only the book matching the ISBN-13 will be returned | [optional] 
 **oclc** | **NSString***| Only the book matching the OCLC will be returned | [optional] 
 **sort** | **NSString***| The sorting criteria (publish-date or rating). | [optional] 
 **sortDirection** | **NSString***| Whether to sort ascending or descending (ASC or DESC). | [optional] 
 **offset** | **NSNumber***| The number of books to skip in range [0,1000] | [optional] 
 **number** | **NSNumber***| The number of books to return in range [1,100] | [optional] 

### Return type

**NSObject***

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

