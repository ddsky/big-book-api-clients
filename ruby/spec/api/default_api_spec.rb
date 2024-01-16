=begin
#Big Book API

#The world's book wrapped into a single API.

The version of the OpenAPI document: 1.0
Contact: mail@bigbookapi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::DefaultApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instance of DefaultApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::DefaultApi)
    end
  end

  # unit tests for find_similar_books
  # Find Similar Books
  #  Find books that are similar to the given book. 
  # @param id The id of the book to which similar books should be found.
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :number The number of similar books to return in range [1,100]
  # @return [Object]
  describe 'find_similar_books test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_book_information
  # Get Book Information
  #  Get all information about a certain book. 
  # @param id The id of the book.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_book_information test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_authors
  # Search Authors
  #  Search for book authors by name or partial name. The response contains the author&#39;s name and their id. You can then use the id in the book search. 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name The (partial/beginning) name of the author.
  # @option opts [Float] :offset The number of authors to skip in range [0,100]
  # @option opts [Float] :number The number of authors to return in range [1,100]
  # @return [Object]
  describe 'search_authors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_books
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
  # @option opts [Float] :offset The number of books to skip in range [0,1000]
  # @option opts [Float] :number The number of books to return in range [1,100]
  # @return [Object]
  describe 'search_books test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
