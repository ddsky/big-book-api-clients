=begin
#Big Book API

#Big Book API lets you semantically search over 4 million English books by text, genre, author, ISBN, and more. You can also find books that are similar to each other.

The version of the OpenAPI document: 1.0
Contact: mail@bigbookapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module OpenapiClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Find Similar Books
    #  Find books that are similar to the given book. 
    # @param id [Float] The id of the book to which similar books should be found.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :number The number of similar books to return in range [1,100]
    # @return [Object]
    def find_similar_books(id, opts = {})
      data, _status_code, _headers = find_similar_books_with_http_info(id, opts)
      data
    end

    # Find Similar Books
    #  Find books that are similar to the given book. 
    # @param id [Float] The id of the book to which similar books should be found.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :number The number of similar books to return in range [1,100]
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def find_similar_books_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.find_similar_books ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DefaultApi.find_similar_books"
      end
      # resource path
      local_var_path = '/{id}/similar'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"DefaultApi.find_similar_books",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#find_similar_books\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Book Information
    #  Get all information about a certain book. 
    # @param id [Float] The id of the book.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_book_information(id, opts = {})
      data, _status_code, _headers = get_book_information_with_http_info(id, opts)
      data
    end

    # Get Book Information
    #  Get all information about a certain book. 
    # @param id [Float] The id of the book.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_book_information_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_book_information ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DefaultApi.get_book_information"
      end
      # resource path
      local_var_path = '/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"DefaultApi.get_book_information",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_book_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Authors
    #  Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name The (partial/beginning) name of the author.
    # @option opts [Float] :offset The number of authors to skip in range [0,100]
    # @option opts [Float] :number The number of authors to return in range [1,100]
    # @return [Object]
    def search_authors(opts = {})
      data, _status_code, _headers = search_authors_with_http_info(opts)
      data
    end

    # Search Authors
    #  Search for book authors by name or partial name. The response contains the author&#39;s name and their id. You can then use the id in the book search. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name The (partial/beginning) name of the author.
    # @option opts [Float] :offset The number of authors to skip in range [0,100]
    # @option opts [Float] :number The number of authors to return in range [1,100]
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def search_authors_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.search_authors ...'
      end
      # resource path
      local_var_path = '/search-authors'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"DefaultApi.search_authors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#search_authors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Books
    #  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The search query.
    # @option opts [Float] :earliest_publish_year The books must have been published after this year.
    # @option opts [Float] :latest_publish_year The books must have been published before this year.
    # @option opts [Float] :min_rating The minimum rating the book must have gotten in the interval [0,1].
    # @option opts [Float] :max_rating The maximum rating the book must have gotten in the interval [0,1].
    # @option opts [String] :genres A comma-separated list of  genres. Only books from any of the given genres will be returned.
    # @option opts [String] :authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.
    # @option opts [String] :isbn Only the book matching the ISBN-13 will be returned
    # @option opts [String] :oclc Only the book matching the OCLC will be returned
    # @option opts [String] :sort The sorting criteria (publish-date or rating).
    # @option opts [String] :sort_direction Whether to sort ascending or descending (ASC or DESC).
    # @option opts [Boolean] :group_results Whether to group similar editions of the same book.
    # @option opts [Float] :offset The number of books to skip in range [0,1000]
    # @option opts [Float] :number The number of books to return in range [1,100]
    # @return [Object]
    def search_books(opts = {})
      data, _status_code, _headers = search_books_with_http_info(opts)
      data
    end

    # Search Books
    #  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query The search query.
    # @option opts [Float] :earliest_publish_year The books must have been published after this year.
    # @option opts [Float] :latest_publish_year The books must have been published before this year.
    # @option opts [Float] :min_rating The minimum rating the book must have gotten in the interval [0,1].
    # @option opts [Float] :max_rating The maximum rating the book must have gotten in the interval [0,1].
    # @option opts [String] :genres A comma-separated list of  genres. Only books from any of the given genres will be returned.
    # @option opts [String] :authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.
    # @option opts [String] :isbn Only the book matching the ISBN-13 will be returned
    # @option opts [String] :oclc Only the book matching the OCLC will be returned
    # @option opts [String] :sort The sorting criteria (publish-date or rating).
    # @option opts [String] :sort_direction Whether to sort ascending or descending (ASC or DESC).
    # @option opts [Boolean] :group_results Whether to group similar editions of the same book.
    # @option opts [Float] :offset The number of books to skip in range [0,1000]
    # @option opts [Float] :number The number of books to return in range [1,100]
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def search_books_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.search_books ...'
      end
      # resource path
      local_var_path = '/search-books'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'earliest-publish-year'] = opts[:'earliest_publish_year'] if !opts[:'earliest_publish_year'].nil?
      query_params[:'latest-publish-year'] = opts[:'latest_publish_year'] if !opts[:'latest_publish_year'].nil?
      query_params[:'min-rating'] = opts[:'min_rating'] if !opts[:'min_rating'].nil?
      query_params[:'max-rating'] = opts[:'max_rating'] if !opts[:'max_rating'].nil?
      query_params[:'genres'] = opts[:'genres'] if !opts[:'genres'].nil?
      query_params[:'authors'] = opts[:'authors'] if !opts[:'authors'].nil?
      query_params[:'isbn'] = opts[:'isbn'] if !opts[:'isbn'].nil?
      query_params[:'oclc'] = opts[:'oclc'] if !opts[:'oclc'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'sort-direction'] = opts[:'sort_direction'] if !opts[:'sort_direction'].nil?
      query_params[:'group-results'] = opts[:'group_results'] if !opts[:'group_results'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'headerApiKey']

      new_options = opts.merge(
        :operation => :"DefaultApi.search_books",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#search_books\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
