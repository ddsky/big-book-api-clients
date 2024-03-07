package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal

class DefaultApi {
    String basePath = "https://api.bigbookapi.com"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def findSimilarBooks ( BigDecimal id, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/${id}/similar"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def getBookInformation ( BigDecimal id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def searchAuthors ( String name, BigDecimal offset, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-authors"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (name != null) {
            queryParams.put("name", name)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

    def searchBooks ( String query, BigDecimal earliestPublishYear, BigDecimal latestPublishYear, BigDecimal minRating, BigDecimal maxRating, String genres, String authors, String isbn, String oclc, String sort, String sortDirection, Boolean groupResults, BigDecimal offset, BigDecimal number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/search-books"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (query != null) {
            queryParams.put("query", query)
        }
        if (earliestPublishYear != null) {
            queryParams.put("earliest-publish-year", earliestPublishYear)
        }
        if (latestPublishYear != null) {
            queryParams.put("latest-publish-year", latestPublishYear)
        }
        if (minRating != null) {
            queryParams.put("min-rating", minRating)
        }
        if (maxRating != null) {
            queryParams.put("max-rating", maxRating)
        }
        if (genres != null) {
            queryParams.put("genres", genres)
        }
        if (authors != null) {
            queryParams.put("authors", authors)
        }
        if (isbn != null) {
            queryParams.put("isbn", isbn)
        }
        if (oclc != null) {
            queryParams.put("oclc", oclc)
        }
        if (sort != null) {
            queryParams.put("sort", sort)
        }
        if (sortDirection != null) {
            queryParams.put("sort-direction", sortDirection)
        }
        if (groupResults != null) {
            queryParams.put("group-results", groupResults)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (number != null) {
            queryParams.put("number", number)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Object.class )

    }

}
