/*
Big Book API

Big Book API lets you semantically search over 4 million English books by text, genre, author, ISBN, and more. You can also find books that are similar to each other.

API version: 1.0
Contact: mail@bigbookapi.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package bigbookapi

import (
	"bytes"
	"context"
	"io"
	"net/http"
	"net/url"
	"strings"
)


// DefaultAPIService DefaultAPI service
type DefaultAPIService service

type ApiFindSimilarBooksRequest struct {
	ctx context.Context
	ApiService *DefaultAPIService
	id float32
	number *float32
}

// The number of similar books to return in range [1,100]
func (r ApiFindSimilarBooksRequest) Number(number float32) ApiFindSimilarBooksRequest {
	r.number = &number
	return r
}

func (r ApiFindSimilarBooksRequest) Execute() (map[string]interface{}, *http.Response, error) {
	return r.ApiService.FindSimilarBooksExecute(r)
}

/*
FindSimilarBooks Find Similar Books

 Find books that are similar to the given book. 

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param id The id of the book to which similar books should be found.
 @return ApiFindSimilarBooksRequest
*/
func (a *DefaultAPIService) FindSimilarBooks(ctx context.Context, id float32) ApiFindSimilarBooksRequest {
	return ApiFindSimilarBooksRequest{
		ApiService: a,
		ctx: ctx,
		id: id,
	}
}

// Execute executes the request
//  @return map[string]interface{}
func (a *DefaultAPIService) FindSimilarBooksExecute(r ApiFindSimilarBooksRequest) (map[string]interface{}, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  map[string]interface{}
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DefaultAPIService.FindSimilarBooks")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/{id}/similar"
	localVarPath = strings.Replace(localVarPath, "{"+"id"+"}", url.PathEscape(parameterValueToString(r.id, "id")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.number != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "number", r.number, "")
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarQueryParams.Add("api-key", key)
			}
		}
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["headerApiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["x-api-key"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type ApiGetBookInformationRequest struct {
	ctx context.Context
	ApiService *DefaultAPIService
	id float32
}

func (r ApiGetBookInformationRequest) Execute() (map[string]interface{}, *http.Response, error) {
	return r.ApiService.GetBookInformationExecute(r)
}

/*
GetBookInformation Get Book Information

 Get all information about a certain book. 

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param id The id of the book.
 @return ApiGetBookInformationRequest
*/
func (a *DefaultAPIService) GetBookInformation(ctx context.Context, id float32) ApiGetBookInformationRequest {
	return ApiGetBookInformationRequest{
		ApiService: a,
		ctx: ctx,
		id: id,
	}
}

// Execute executes the request
//  @return map[string]interface{}
func (a *DefaultAPIService) GetBookInformationExecute(r ApiGetBookInformationRequest) (map[string]interface{}, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  map[string]interface{}
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DefaultAPIService.GetBookInformation")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/{id}"
	localVarPath = strings.Replace(localVarPath, "{"+"id"+"}", url.PathEscape(parameterValueToString(r.id, "id")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarQueryParams.Add("api-key", key)
			}
		}
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["headerApiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["x-api-key"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type ApiSearchAuthorsRequest struct {
	ctx context.Context
	ApiService *DefaultAPIService
	name *string
	offset *float32
	number *float32
}

// The (partial/beginning) name of the author.
func (r ApiSearchAuthorsRequest) Name(name string) ApiSearchAuthorsRequest {
	r.name = &name
	return r
}

// The number of authors to skip in range [0,100]
func (r ApiSearchAuthorsRequest) Offset(offset float32) ApiSearchAuthorsRequest {
	r.offset = &offset
	return r
}

// The number of authors to return in range [1,100]
func (r ApiSearchAuthorsRequest) Number(number float32) ApiSearchAuthorsRequest {
	r.number = &number
	return r
}

func (r ApiSearchAuthorsRequest) Execute() (map[string]interface{}, *http.Response, error) {
	return r.ApiService.SearchAuthorsExecute(r)
}

/*
SearchAuthors Search Authors

 Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchAuthorsRequest
*/
func (a *DefaultAPIService) SearchAuthors(ctx context.Context) ApiSearchAuthorsRequest {
	return ApiSearchAuthorsRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return map[string]interface{}
func (a *DefaultAPIService) SearchAuthorsExecute(r ApiSearchAuthorsRequest) (map[string]interface{}, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  map[string]interface{}
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DefaultAPIService.SearchAuthors")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/search-authors"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.name != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "name", r.name, "")
	}
	if r.offset != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "offset", r.offset, "")
	}
	if r.number != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "number", r.number, "")
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarQueryParams.Add("api-key", key)
			}
		}
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["headerApiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["x-api-key"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type ApiSearchBooksRequest struct {
	ctx context.Context
	ApiService *DefaultAPIService
	query *string
	earliestPublishYear *float32
	latestPublishYear *float32
	minRating *float32
	maxRating *float32
	genres *string
	authors *string
	isbn *string
	oclc *string
	sort *string
	sortDirection *string
	groupResults *bool
	offset *float32
	number *float32
}

// The search query.
func (r ApiSearchBooksRequest) Query(query string) ApiSearchBooksRequest {
	r.query = &query
	return r
}

// The books must have been published after this year.
func (r ApiSearchBooksRequest) EarliestPublishYear(earliestPublishYear float32) ApiSearchBooksRequest {
	r.earliestPublishYear = &earliestPublishYear
	return r
}

// The books must have been published before this year.
func (r ApiSearchBooksRequest) LatestPublishYear(latestPublishYear float32) ApiSearchBooksRequest {
	r.latestPublishYear = &latestPublishYear
	return r
}

// The minimum rating the book must have gotten in the interval [0,1].
func (r ApiSearchBooksRequest) MinRating(minRating float32) ApiSearchBooksRequest {
	r.minRating = &minRating
	return r
}

// The maximum rating the book must have gotten in the interval [0,1].
func (r ApiSearchBooksRequest) MaxRating(maxRating float32) ApiSearchBooksRequest {
	r.maxRating = &maxRating
	return r
}

// A comma-separated list of  genres. Only books from any of the given genres will be returned.
func (r ApiSearchBooksRequest) Genres(genres string) ApiSearchBooksRequest {
	r.genres = &genres
	return r
}

// A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.
func (r ApiSearchBooksRequest) Authors(authors string) ApiSearchBooksRequest {
	r.authors = &authors
	return r
}

// Only the book matching the ISBN-13 will be returned
func (r ApiSearchBooksRequest) Isbn(isbn string) ApiSearchBooksRequest {
	r.isbn = &isbn
	return r
}

// Only the book matching the OCLC will be returned
func (r ApiSearchBooksRequest) Oclc(oclc string) ApiSearchBooksRequest {
	r.oclc = &oclc
	return r
}

// The sorting criteria (publish-date or rating).
func (r ApiSearchBooksRequest) Sort(sort string) ApiSearchBooksRequest {
	r.sort = &sort
	return r
}

// Whether to sort ascending or descending (ASC or DESC).
func (r ApiSearchBooksRequest) SortDirection(sortDirection string) ApiSearchBooksRequest {
	r.sortDirection = &sortDirection
	return r
}

// Whether to group similar editions of the same book.
func (r ApiSearchBooksRequest) GroupResults(groupResults bool) ApiSearchBooksRequest {
	r.groupResults = &groupResults
	return r
}

// The number of books to skip in range [0,1000]
func (r ApiSearchBooksRequest) Offset(offset float32) ApiSearchBooksRequest {
	r.offset = &offset
	return r
}

// The number of books to return in range [1,100]
func (r ApiSearchBooksRequest) Number(number float32) ApiSearchBooksRequest {
	r.number = &number
	return r
}

func (r ApiSearchBooksRequest) Execute() (map[string]interface{}, *http.Response, error) {
	return r.ApiService.SearchBooksExecute(r)
}

/*
SearchBooks Search Books

 Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for "books about dogs" and will automatically also find books about "border collies" and other types without specifying them in the query. 

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchBooksRequest
*/
func (a *DefaultAPIService) SearchBooks(ctx context.Context) ApiSearchBooksRequest {
	return ApiSearchBooksRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return map[string]interface{}
func (a *DefaultAPIService) SearchBooksExecute(r ApiSearchBooksRequest) (map[string]interface{}, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  map[string]interface{}
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DefaultAPIService.SearchBooks")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/search-books"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.query != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "query", r.query, "")
	}
	if r.earliestPublishYear != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "earliest-publish-year", r.earliestPublishYear, "")
	}
	if r.latestPublishYear != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "latest-publish-year", r.latestPublishYear, "")
	}
	if r.minRating != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "min-rating", r.minRating, "")
	}
	if r.maxRating != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "max-rating", r.maxRating, "")
	}
	if r.genres != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "genres", r.genres, "")
	}
	if r.authors != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "authors", r.authors, "")
	}
	if r.isbn != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "isbn", r.isbn, "")
	}
	if r.oclc != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "oclc", r.oclc, "")
	}
	if r.sort != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "sort", r.sort, "")
	}
	if r.sortDirection != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "sort-direction", r.sortDirection, "")
	}
	if r.groupResults != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "group-results", r.groupResults, "")
	}
	if r.offset != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "offset", r.offset, "")
	}
	if r.number != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "number", r.number, "")
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarQueryParams.Add("api-key", key)
			}
		}
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["headerApiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["x-api-key"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}
