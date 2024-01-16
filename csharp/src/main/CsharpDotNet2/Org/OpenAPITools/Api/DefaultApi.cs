using System;
using System.Collections.Generic;
using RestSharp;
using Org.OpenAPITools.Client;

namespace com.bigbookapi
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IDefaultApi
    {
        /// <summary>
        /// Find Similar Books  Find books that are similar to the given book. 
        /// </summary>
        /// <param name="id">The id of the book to which similar books should be found.</param>
        /// <param name="number">The number of similar books to return in range [1,100]</param>
        /// <returns>Object</returns>
        Object FindSimilarBooks (decimal? id, decimal? number);
        /// <summary>
        /// Get Book Information  Get all information about a certain book. 
        /// </summary>
        /// <param name="id">The id of the book.</param>
        /// <returns>Object</returns>
        Object GetBookInformation (decimal? id);
        /// <summary>
        /// Search Authors  Search for book authors by name or partial name. The response contains the author&#39;s name and their id. You can then use the id in the book search. 
        /// </summary>
        /// <param name="name">The (partial/beginning) name of the author.</param>
        /// <param name="offset">The number of authors to skip in range [0,100]</param>
        /// <param name="number">The number of authors to return in range [1,100]</param>
        /// <returns>Object</returns>
        Object SearchAuthors (string name, decimal? offset, decimal? number);
        /// <summary>
        /// Search Books  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query. 
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="earliestPublishYear">The books must have been published after this year.</param>
        /// <param name="latestPublishYear">The books must have been published before this year.</param>
        /// <param name="minRating">The minimum rating the book must have gotten in the interval [0,1].</param>
        /// <param name="maxRating">The maximum rating the book must have gotten in the interval [0,1].</param>
        /// <param name="genres">A comma-separated list of  genres. Only books from any of the given genres will be returned.</param>
        /// <param name="authors">A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.</param>
        /// <param name="isbn">Only the book matching the ISBN-13 will be returned</param>
        /// <param name="oclc">Only the book matching the OCLC will be returned</param>
        /// <param name="sort">The sorting criteria (publish-date or rating).</param>
        /// <param name="sortDirection">Whether to sort ascending or descending (ASC or DESC).</param>
        /// <param name="offset">The number of books to skip in range [0,1000]</param>
        /// <param name="number">The number of books to return in range [1,100]</param>
        /// <returns>Object</returns>
        Object SearchBooks (string query, decimal? earliestPublishYear, decimal? latestPublishYear, decimal? minRating, decimal? maxRating, string genres, string authors, string isbn, string oclc, string sort, string sortDirection, decimal? offset, decimal? number);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class DefaultApi : IDefaultApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DefaultApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public DefaultApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="DefaultApi"/> class.
        /// </summary>
        /// <returns></returns>
        public DefaultApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }

        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}

        /// <summary>
        /// Find Similar Books  Find books that are similar to the given book. 
        /// </summary>
        /// <param name="id">The id of the book to which similar books should be found.</param>
        /// <param name="number">The number of similar books to return in range [1,100]</param>
        /// <returns>Object</returns>
        public Object FindSimilarBooks (decimal? id, decimal? number)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling FindSimilarBooks");
            

            var path = "/{id}/similar";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling FindSimilarBooks: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling FindSimilarBooks: " + response.ErrorMessage, response.ErrorMessage);

            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }

        /// <summary>
        /// Get Book Information  Get all information about a certain book. 
        /// </summary>
        /// <param name="id">The id of the book.</param>
        /// <returns>Object</returns>
        public Object GetBookInformation (decimal? id)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetBookInformation");
            

            var path = "/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));

            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

                                                
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBookInformation: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBookInformation: " + response.ErrorMessage, response.ErrorMessage);

            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }

        /// <summary>
        /// Search Authors  Search for book authors by name or partial name. The response contains the author&#39;s name and their id. You can then use the id in the book search. 
        /// </summary>
        /// <param name="name">The (partial/beginning) name of the author.</param>
        /// <param name="offset">The number of authors to skip in range [0,100]</param>
        /// <param name="number">The number of authors to return in range [1,100]</param>
        /// <returns>Object</returns>
        public Object SearchAuthors (string name, decimal? offset, decimal? number)
        {
            

            var path = "/search-authors";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (name != null) queryParams.Add("name", ApiClient.ParameterToString(name)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchAuthors: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchAuthors: " + response.ErrorMessage, response.ErrorMessage);

            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }

        /// <summary>
        /// Search Books  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query. 
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="earliestPublishYear">The books must have been published after this year.</param>
        /// <param name="latestPublishYear">The books must have been published before this year.</param>
        /// <param name="minRating">The minimum rating the book must have gotten in the interval [0,1].</param>
        /// <param name="maxRating">The maximum rating the book must have gotten in the interval [0,1].</param>
        /// <param name="genres">A comma-separated list of  genres. Only books from any of the given genres will be returned.</param>
        /// <param name="authors">A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.</param>
        /// <param name="isbn">Only the book matching the ISBN-13 will be returned</param>
        /// <param name="oclc">Only the book matching the OCLC will be returned</param>
        /// <param name="sort">The sorting criteria (publish-date or rating).</param>
        /// <param name="sortDirection">Whether to sort ascending or descending (ASC or DESC).</param>
        /// <param name="offset">The number of books to skip in range [0,1000]</param>
        /// <param name="number">The number of books to return in range [1,100]</param>
        /// <returns>Object</returns>
        public Object SearchBooks (string query, decimal? earliestPublishYear, decimal? latestPublishYear, decimal? minRating, decimal? maxRating, string genres, string authors, string isbn, string oclc, string sort, string sortDirection, decimal? offset, decimal? number)
        {
            

            var path = "/search-books";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (earliestPublishYear != null) queryParams.Add("earliest-publish-year", ApiClient.ParameterToString(earliestPublishYear)); // query parameter
 if (latestPublishYear != null) queryParams.Add("latest-publish-year", ApiClient.ParameterToString(latestPublishYear)); // query parameter
 if (minRating != null) queryParams.Add("min-rating", ApiClient.ParameterToString(minRating)); // query parameter
 if (maxRating != null) queryParams.Add("max-rating", ApiClient.ParameterToString(maxRating)); // query parameter
 if (genres != null) queryParams.Add("genres", ApiClient.ParameterToString(genres)); // query parameter
 if (authors != null) queryParams.Add("authors", ApiClient.ParameterToString(authors)); // query parameter
 if (isbn != null) queryParams.Add("isbn", ApiClient.ParameterToString(isbn)); // query parameter
 if (oclc != null) queryParams.Add("oclc", ApiClient.ParameterToString(oclc)); // query parameter
 if (sort != null) queryParams.Add("sort", ApiClient.ParameterToString(sort)); // query parameter
 if (sortDirection != null) queryParams.Add("sort-direction", ApiClient.ParameterToString(sortDirection)); // query parameter
 if (offset != null) queryParams.Add("offset", ApiClient.ParameterToString(offset)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchBooks: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchBooks: " + response.ErrorMessage, response.ErrorMessage);

            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }

    }
}
