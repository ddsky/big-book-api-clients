/**
 * Big Book API
 *
 * The world's book wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@bigbookapi.com
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package com.bigbookapi

import java.io.IOException


import com.squareup.moshi.Json

import org.openapitools.client.infrastructure.ApiClient
import org.openapitools.client.infrastructure.ApiResponse
import org.openapitools.client.infrastructure.ClientException
import org.openapitools.client.infrastructure.ClientError
import org.openapitools.client.infrastructure.ServerException
import org.openapitools.client.infrastructure.ServerError
import org.openapitools.client.infrastructure.MultiValueMap
import org.openapitools.client.infrastructure.RequestConfig
import org.openapitools.client.infrastructure.RequestMethod
import org.openapitools.client.infrastructure.ResponseType
import org.openapitools.client.infrastructure.Success
import org.openapitools.client.infrastructure.toMultiValue

class DefaultApi(basePath: kotlin.String = defaultBasePath) : ApiClient(basePath) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "https://api.bigbookapi.com")
        }
    }

    /**
    * Find Similar Books
    *  Find books that are similar to the given book. 
    * @param id The id of the book to which similar books should be found. 
    * @param number The number of similar books to return in range [1,100] (optional)
    * @return kotlin.Any
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun findSimilarBooks(id: java.math.BigDecimal, number: java.math.BigDecimal?) : kotlin.Any {
        val localVarResponse = findSimilarBooksWithHttpInfo(id = id, number = number)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.Any
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Find Similar Books
    *  Find books that are similar to the given book. 
    * @param id The id of the book to which similar books should be found. 
    * @param number The number of similar books to return in range [1,100] (optional)
    * @return ApiResponse<kotlin.Any?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun findSimilarBooksWithHttpInfo(id: java.math.BigDecimal, number: java.math.BigDecimal?) : ApiResponse<kotlin.Any?> {
        val localVariableConfig = findSimilarBooksRequestConfig(id = id, number = number)

        return request<Unit, kotlin.Any>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation findSimilarBooks
    *
    * @param id The id of the book to which similar books should be found. 
    * @param number The number of similar books to return in range [1,100] (optional)
    * @return RequestConfig
    */
    fun findSimilarBooksRequestConfig(id: java.math.BigDecimal, number: java.math.BigDecimal?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (number != null) {
                    put("number", listOf(number.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/{id}/similar".replace("{"+"id"+"}", "$id"),
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
    * Get Book Information
    *  Get all information about a certain book. 
    * @param id The id of the book. 
    * @return kotlin.Any
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun getBookInformation(id: java.math.BigDecimal) : kotlin.Any {
        val localVarResponse = getBookInformationWithHttpInfo(id = id)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.Any
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Get Book Information
    *  Get all information about a certain book. 
    * @param id The id of the book. 
    * @return ApiResponse<kotlin.Any?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun getBookInformationWithHttpInfo(id: java.math.BigDecimal) : ApiResponse<kotlin.Any?> {
        val localVariableConfig = getBookInformationRequestConfig(id = id)

        return request<Unit, kotlin.Any>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation getBookInformation
    *
    * @param id The id of the book. 
    * @return RequestConfig
    */
    fun getBookInformationRequestConfig(id: java.math.BigDecimal) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/{id}".replace("{"+"id"+"}", "$id"),
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
    * Search Authors
    *  Search for book authors by name or partial name. The response contains the author&#39;s name and their id. You can then use the id in the book search. 
    * @param name The (partial/beginning) name of the author. (optional)
    * @param offset The number of authors to skip in range [0,100] (optional)
    * @param number The number of authors to return in range [1,100] (optional)
    * @return kotlin.Any
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun searchAuthors(name: kotlin.String?, offset: java.math.BigDecimal?, number: java.math.BigDecimal?) : kotlin.Any {
        val localVarResponse = searchAuthorsWithHttpInfo(name = name, offset = offset, number = number)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.Any
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Search Authors
    *  Search for book authors by name or partial name. The response contains the author&#39;s name and their id. You can then use the id in the book search. 
    * @param name The (partial/beginning) name of the author. (optional)
    * @param offset The number of authors to skip in range [0,100] (optional)
    * @param number The number of authors to return in range [1,100] (optional)
    * @return ApiResponse<kotlin.Any?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun searchAuthorsWithHttpInfo(name: kotlin.String?, offset: java.math.BigDecimal?, number: java.math.BigDecimal?) : ApiResponse<kotlin.Any?> {
        val localVariableConfig = searchAuthorsRequestConfig(name = name, offset = offset, number = number)

        return request<Unit, kotlin.Any>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation searchAuthors
    *
    * @param name The (partial/beginning) name of the author. (optional)
    * @param offset The number of authors to skip in range [0,100] (optional)
    * @param number The number of authors to return in range [1,100] (optional)
    * @return RequestConfig
    */
    fun searchAuthorsRequestConfig(name: kotlin.String?, offset: java.math.BigDecimal?, number: java.math.BigDecimal?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (name != null) {
                    put("name", listOf(name.toString()))
                }
                if (offset != null) {
                    put("offset", listOf(offset.toString()))
                }
                if (number != null) {
                    put("number", listOf(number.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/search-authors",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
    * Search Books
    *  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query. 
    * @param query The search query. (optional)
    * @param earliestPublishYear The books must have been published after this year. (optional)
    * @param latestPublishYear The books must have been published before this year. (optional)
    * @param minRating The minimum rating the book must have gotten in the interval [0,1]. (optional)
    * @param maxRating The maximum rating the book must have gotten in the interval [0,1]. (optional)
    * @param genres A comma-separated list of  genres. Only books from any of the given genres will be returned. (optional)
    * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. (optional)
    * @param isbn Only the book matching the ISBN-13 will be returned (optional)
    * @param oclc Only the book matching the OCLC will be returned (optional)
    * @param sort The sorting criteria (publish-date or rating). (optional)
    * @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
    * @param offset The number of books to skip in range [0,1000] (optional)
    * @param number The number of books to return in range [1,100] (optional)
    * @return kotlin.Any
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun searchBooks(query: kotlin.String?, earliestPublishYear: java.math.BigDecimal?, latestPublishYear: java.math.BigDecimal?, minRating: java.math.BigDecimal?, maxRating: java.math.BigDecimal?, genres: kotlin.String?, authors: kotlin.String?, isbn: kotlin.String?, oclc: kotlin.String?, sort: kotlin.String?, sortDirection: kotlin.String?, offset: java.math.BigDecimal?, number: java.math.BigDecimal?) : kotlin.Any {
        val localVarResponse = searchBooksWithHttpInfo(query = query, earliestPublishYear = earliestPublishYear, latestPublishYear = latestPublishYear, minRating = minRating, maxRating = maxRating, genres = genres, authors = authors, isbn = isbn, oclc = oclc, sort = sort, sortDirection = sortDirection, offset = offset, number = number)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.Any
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Search Books
    *  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query. 
    * @param query The search query. (optional)
    * @param earliestPublishYear The books must have been published after this year. (optional)
    * @param latestPublishYear The books must have been published before this year. (optional)
    * @param minRating The minimum rating the book must have gotten in the interval [0,1]. (optional)
    * @param maxRating The maximum rating the book must have gotten in the interval [0,1]. (optional)
    * @param genres A comma-separated list of  genres. Only books from any of the given genres will be returned. (optional)
    * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. (optional)
    * @param isbn Only the book matching the ISBN-13 will be returned (optional)
    * @param oclc Only the book matching the OCLC will be returned (optional)
    * @param sort The sorting criteria (publish-date or rating). (optional)
    * @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
    * @param offset The number of books to skip in range [0,1000] (optional)
    * @param number The number of books to return in range [1,100] (optional)
    * @return ApiResponse<kotlin.Any?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun searchBooksWithHttpInfo(query: kotlin.String?, earliestPublishYear: java.math.BigDecimal?, latestPublishYear: java.math.BigDecimal?, minRating: java.math.BigDecimal?, maxRating: java.math.BigDecimal?, genres: kotlin.String?, authors: kotlin.String?, isbn: kotlin.String?, oclc: kotlin.String?, sort: kotlin.String?, sortDirection: kotlin.String?, offset: java.math.BigDecimal?, number: java.math.BigDecimal?) : ApiResponse<kotlin.Any?> {
        val localVariableConfig = searchBooksRequestConfig(query = query, earliestPublishYear = earliestPublishYear, latestPublishYear = latestPublishYear, minRating = minRating, maxRating = maxRating, genres = genres, authors = authors, isbn = isbn, oclc = oclc, sort = sort, sortDirection = sortDirection, offset = offset, number = number)

        return request<Unit, kotlin.Any>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation searchBooks
    *
    * @param query The search query. (optional)
    * @param earliestPublishYear The books must have been published after this year. (optional)
    * @param latestPublishYear The books must have been published before this year. (optional)
    * @param minRating The minimum rating the book must have gotten in the interval [0,1]. (optional)
    * @param maxRating The maximum rating the book must have gotten in the interval [0,1]. (optional)
    * @param genres A comma-separated list of  genres. Only books from any of the given genres will be returned. (optional)
    * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate. (optional)
    * @param isbn Only the book matching the ISBN-13 will be returned (optional)
    * @param oclc Only the book matching the OCLC will be returned (optional)
    * @param sort The sorting criteria (publish-date or rating). (optional)
    * @param sortDirection Whether to sort ascending or descending (ASC or DESC). (optional)
    * @param offset The number of books to skip in range [0,1000] (optional)
    * @param number The number of books to return in range [1,100] (optional)
    * @return RequestConfig
    */
    fun searchBooksRequestConfig(query: kotlin.String?, earliestPublishYear: java.math.BigDecimal?, latestPublishYear: java.math.BigDecimal?, minRating: java.math.BigDecimal?, maxRating: java.math.BigDecimal?, genres: kotlin.String?, authors: kotlin.String?, isbn: kotlin.String?, oclc: kotlin.String?, sort: kotlin.String?, sortDirection: kotlin.String?, offset: java.math.BigDecimal?, number: java.math.BigDecimal?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (query != null) {
                    put("query", listOf(query.toString()))
                }
                if (earliestPublishYear != null) {
                    put("earliest-publish-year", listOf(earliestPublishYear.toString()))
                }
                if (latestPublishYear != null) {
                    put("latest-publish-year", listOf(latestPublishYear.toString()))
                }
                if (minRating != null) {
                    put("min-rating", listOf(minRating.toString()))
                }
                if (maxRating != null) {
                    put("max-rating", listOf(maxRating.toString()))
                }
                if (genres != null) {
                    put("genres", listOf(genres.toString()))
                }
                if (authors != null) {
                    put("authors", listOf(authors.toString()))
                }
                if (isbn != null) {
                    put("isbn", listOf(isbn.toString()))
                }
                if (oclc != null) {
                    put("oclc", listOf(oclc.toString()))
                }
                if (sort != null) {
                    put("sort", listOf(sort.toString()))
                }
                if (sortDirection != null) {
                    put("sort-direction", listOf(sortDirection.toString()))
                }
                if (offset != null) {
                    put("offset", listOf(offset.toString()))
                }
                if (number != null) {
                    put("number", listOf(number.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/search-books",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

}
