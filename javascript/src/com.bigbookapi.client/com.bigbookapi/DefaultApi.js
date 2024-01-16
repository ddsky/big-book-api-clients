/**
 * Big Book API
 * The world's book wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@bigbookapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";

/**
* Default service.
* @module com.bigbookapi.client/com.bigbookapi/DefaultApi
* @version 1.0
*/
export default class DefaultApi {

    /**
    * Constructs a new DefaultApi. 
    * @alias module:com.bigbookapi.client/com.bigbookapi/DefaultApi
    * @class
    * @param {module:com.bigbookapi.client/ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:com.bigbookapi.client/ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the findSimilarBooks operation.
     * @callback module:com.bigbookapi.client/com.bigbookapi/DefaultApi~findSimilarBooksCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Find Similar Books
     *  Find books that are similar to the given book. 
     * @param {Number} id The id of the book to which similar books should be found.
     * @param {Object} opts Optional parameters
     * @param {Number} opts.number The number of similar books to return in range [1,100]
     * @param {module:com.bigbookapi.client/com.bigbookapi/DefaultApi~findSimilarBooksCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    findSimilarBooks(id, opts, callback) {
      opts = opts || {};
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling findSimilarBooks");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/{id}/similar', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getBookInformation operation.
     * @callback module:com.bigbookapi.client/com.bigbookapi/DefaultApi~getBookInformationCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Book Information
     *  Get all information about a certain book. 
     * @param {Number} id The id of the book.
     * @param {module:com.bigbookapi.client/com.bigbookapi/DefaultApi~getBookInformationCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    getBookInformation(id, callback) {
      let postBody = null;
      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getBookInformation");
      }

      let pathParams = {
        'id': id
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchAuthors operation.
     * @callback module:com.bigbookapi.client/com.bigbookapi/DefaultApi~searchAuthorsCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Authors
     *  Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 
     * @param {Object} opts Optional parameters
     * @param {String} opts.name The (partial/beginning) name of the author.
     * @param {Number} opts.offset The number of authors to skip in range [0,100]
     * @param {Number} opts.number The number of authors to return in range [1,100]
     * @param {module:com.bigbookapi.client/com.bigbookapi/DefaultApi~searchAuthorsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    searchAuthors(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'name': opts['name'],
        'offset': opts['offset'],
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/search-authors', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the searchBooks operation.
     * @callback module:com.bigbookapi.client/com.bigbookapi/DefaultApi~searchBooksCallback
     * @param {String} error Error message, if any.
     * @param {Object} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Search Books
     *  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 
     * @param {Object} opts Optional parameters
     * @param {String} opts.query The search query.
     * @param {Number} opts.earliestPublishYear The books must have been published after this year.
     * @param {Number} opts.latestPublishYear The books must have been published before this year.
     * @param {Number} opts.minRating The minimum rating the book must have gotten in the interval [0,1].
     * @param {Number} opts.maxRating The maximum rating the book must have gotten in the interval [0,1].
     * @param {String} opts.genres A comma-separated list of  genres. Only books from any of the given genres will be returned.
     * @param {String} opts.authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
     * @param {String} opts.isbn Only the book matching the ISBN-13 will be returned
     * @param {String} opts.oclc Only the book matching the OCLC will be returned
     * @param {String} opts.sort The sorting criteria (publish-date or rating).
     * @param {String} opts.sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param {Number} opts.offset The number of books to skip in range [0,1000]
     * @param {Number} opts.number The number of books to return in range [1,100]
     * @param {module:com.bigbookapi.client/com.bigbookapi/DefaultApi~searchBooksCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object}
     */
    searchBooks(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'query': opts['query'],
        'earliest-publish-year': opts['earliestPublishYear'],
        'latest-publish-year': opts['latestPublishYear'],
        'min-rating': opts['minRating'],
        'max-rating': opts['maxRating'],
        'genres': opts['genres'],
        'authors': opts['authors'],
        'isbn': opts['isbn'],
        'oclc': opts['oclc'],
        'sort': opts['sort'],
        'sort-direction': opts['sortDirection'],
        'offset': opts['offset'],
        'number': opts['number']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['apiKey', 'headerApiKey'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = Object;
      return this.apiClient.callApi(
        '/search-books', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
