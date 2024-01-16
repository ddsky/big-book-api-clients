# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.bigbookapi.client.Api.Default do
  @moduledoc """
  API calls for all endpoints tagged `Default`.
  """

  alias com.bigbookapi.client.Connection
  import com.bigbookapi.client.RequestBuilder


  @doc """
  Find Similar Books
   Find books that are similar to the given book. 

  ## Parameters

  - connection (com.bigbookapi.client.Connection): Connection to server
  - id (float()): The id of the book to which similar books should be found.
  - opts (KeywordList): [optional] Optional parameters
    - :number (float()): The number of similar books to return in range [1,100]
  ## Returns

  {:ok, map()} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec find_similar_books(Tesla.Env.client, float(), keyword()) :: {:ok, nil} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def find_similar_books(connection, id, opts \\ []) do
    optional_params = %{
      :"number" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{id}/similar")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %{}},
      { 401, false},
      { 402, false},
      { 403, false},
      { 404, false},
      { 429, false}
    ])
  end

  @doc """
  Get Book Information
   Get all information about a certain book. 

  ## Parameters

  - connection (com.bigbookapi.client.Connection): Connection to server
  - id (float()): The id of the book.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, map()} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_book_information(Tesla.Env.client, float(), keyword()) :: {:ok, nil} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def get_book_information(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %{}},
      { 401, false},
      { 402, false},
      { 403, false},
      { 404, false},
      { 429, false}
    ])
  end

  @doc """
  Search Authors
   Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 

  ## Parameters

  - connection (com.bigbookapi.client.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :name (String.t): The (partial/beginning) name of the author.
    - :offset (float()): The number of authors to skip in range [0,100]
    - :number (float()): The number of authors to return in range [1,100]
  ## Returns

  {:ok, map()} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec search_authors(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def search_authors(connection, opts \\ []) do
    optional_params = %{
      :"name" => :query,
      :"offset" => :query,
      :"number" => :query
    }
    %{}
    |> method(:get)
    |> url("/search-authors")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %{}},
      { 401, false},
      { 402, false},
      { 403, false},
      { 404, false},
      { 429, false}
    ])
  end

  @doc """
  Search Books
   Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 

  ## Parameters

  - connection (com.bigbookapi.client.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :query (String.t): The search query.
    - :earliest_publish_year (float()): The books must have been published after this year.
    - :latest_publish_year (float()): The books must have been published before this year.
    - :min_rating (float()): The minimum rating the book must have gotten in the interval [0,1].
    - :max_rating (float()): The maximum rating the book must have gotten in the interval [0,1].
    - :genres (String.t): A comma-separated list of  genres. Only books from any of the given genres will be returned.
    - :authors (String.t): A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
    - :isbn (String.t): Only the book matching the ISBN-13 will be returned
    - :oclc (String.t): Only the book matching the OCLC will be returned
    - :sort (String.t): The sorting criteria (publish-date or rating).
    - :sort_direction (String.t): Whether to sort ascending or descending (ASC or DESC).
    - :offset (float()): The number of books to skip in range [0,1000]
    - :number (float()): The number of books to return in range [1,100]
  ## Returns

  {:ok, map()} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec search_books(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def search_books(connection, opts \\ []) do
    optional_params = %{
      :"query" => :query,
      :"earliest-publish-year" => :query,
      :"latest-publish-year" => :query,
      :"min-rating" => :query,
      :"max-rating" => :query,
      :"genres" => :query,
      :"authors" => :query,
      :"isbn" => :query,
      :"oclc" => :query,
      :"sort" => :query,
      :"sort-direction" => :query,
      :"offset" => :query,
      :"number" => :query
    }
    %{}
    |> method(:get)
    |> url("/search-books")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %{}},
      { 401, false},
      { 402, false},
      { 403, false},
      { 404, false},
      { 429, false}
    ])
  end
end