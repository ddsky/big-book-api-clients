"""
    Big Book API

    The world's book wrapped into a single API.  # noqa: E501

    The version of the OpenAPI document: 1.0
    Contact: mail@bigbookapi.com
    Generated by: https://openapi-generator.tech
"""


import re  # noqa: F401
import sys  # noqa: F401

from openapi_client.api_client import ApiClient, Endpoint as _Endpoint
from openapi_client.model_utils import (  # noqa: F401
    check_allowed_values,
    check_validations,
    date,
    datetime,
    file_type,
    none_type,
    validate_and_convert_types
)


class DefaultApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client
        self.find_similar_books_endpoint = _Endpoint(
            settings={
                'response_type': ({str: (bool, date, datetime, dict, float, int, list, str, none_type)},),
                'auth': [
                    'apiKey',
                    'headerApiKey'
                ],
                'endpoint_path': '/{id}/similar',
                'operation_id': 'find_similar_books',
                'http_method': 'GET',
                'servers': None,
            },
            params_map={
                'all': [
                    'id',
                    'number',
                ],
                'required': [
                    'id',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'id':
                        (float,),
                    'number':
                        (float,),
                },
                'attribute_map': {
                    'id': 'id',
                    'number': 'number',
                },
                'location_map': {
                    'id': 'path',
                    'number': 'query',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json'
                ],
                'content_type': [],
            },
            api_client=api_client
        )
        self.get_book_information_endpoint = _Endpoint(
            settings={
                'response_type': ({str: (bool, date, datetime, dict, float, int, list, str, none_type)},),
                'auth': [
                    'apiKey',
                    'headerApiKey'
                ],
                'endpoint_path': '/{id}',
                'operation_id': 'get_book_information',
                'http_method': 'GET',
                'servers': None,
            },
            params_map={
                'all': [
                    'id',
                ],
                'required': [
                    'id',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'id':
                        (float,),
                },
                'attribute_map': {
                    'id': 'id',
                },
                'location_map': {
                    'id': 'path',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json'
                ],
                'content_type': [],
            },
            api_client=api_client
        )
        self.search_authors_endpoint = _Endpoint(
            settings={
                'response_type': ({str: (bool, date, datetime, dict, float, int, list, str, none_type)},),
                'auth': [
                    'apiKey',
                    'headerApiKey'
                ],
                'endpoint_path': '/search-authors',
                'operation_id': 'search_authors',
                'http_method': 'GET',
                'servers': None,
            },
            params_map={
                'all': [
                    'name',
                    'offset',
                    'number',
                ],
                'required': [],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'name':
                        (str,),
                    'offset':
                        (float,),
                    'number':
                        (float,),
                },
                'attribute_map': {
                    'name': 'name',
                    'offset': 'offset',
                    'number': 'number',
                },
                'location_map': {
                    'name': 'query',
                    'offset': 'query',
                    'number': 'query',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json'
                ],
                'content_type': [],
            },
            api_client=api_client
        )
        self.search_books_endpoint = _Endpoint(
            settings={
                'response_type': ({str: (bool, date, datetime, dict, float, int, list, str, none_type)},),
                'auth': [
                    'apiKey',
                    'headerApiKey'
                ],
                'endpoint_path': '/search-books',
                'operation_id': 'search_books',
                'http_method': 'GET',
                'servers': None,
            },
            params_map={
                'all': [
                    'query',
                    'earliest_publish_year',
                    'latest_publish_year',
                    'min_rating',
                    'max_rating',
                    'genres',
                    'authors',
                    'isbn',
                    'oclc',
                    'sort',
                    'sort_direction',
                    'offset',
                    'number',
                ],
                'required': [],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'query':
                        (str,),
                    'earliest_publish_year':
                        (float,),
                    'latest_publish_year':
                        (float,),
                    'min_rating':
                        (float,),
                    'max_rating':
                        (float,),
                    'genres':
                        (str,),
                    'authors':
                        (str,),
                    'isbn':
                        (str,),
                    'oclc':
                        (str,),
                    'sort':
                        (str,),
                    'sort_direction':
                        (str,),
                    'offset':
                        (float,),
                    'number':
                        (float,),
                },
                'attribute_map': {
                    'query': 'query',
                    'earliest_publish_year': 'earliest-publish-year',
                    'latest_publish_year': 'latest-publish-year',
                    'min_rating': 'min-rating',
                    'max_rating': 'max-rating',
                    'genres': 'genres',
                    'authors': 'authors',
                    'isbn': 'isbn',
                    'oclc': 'oclc',
                    'sort': 'sort',
                    'sort_direction': 'sort-direction',
                    'offset': 'offset',
                    'number': 'number',
                },
                'location_map': {
                    'query': 'query',
                    'earliest_publish_year': 'query',
                    'latest_publish_year': 'query',
                    'min_rating': 'query',
                    'max_rating': 'query',
                    'genres': 'query',
                    'authors': 'query',
                    'isbn': 'query',
                    'oclc': 'query',
                    'sort': 'query',
                    'sort_direction': 'query',
                    'offset': 'query',
                    'number': 'query',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json'
                ],
                'content_type': [],
            },
            api_client=api_client
        )

    def find_similar_books(
        self,
        id,
        **kwargs
    ):
        """Find Similar Books  # noqa: E501

         Find books that are similar to the given book.   # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.find_similar_books(id, async_req=True)
        >>> result = thread.get()

        Args:
            id (float): The id of the book to which similar books should be found.

        Keyword Args:
            number (float): The number of similar books to return in range [1,100]. [optional]
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            async_req (bool): execute request asynchronously

        Returns:
            {str: (bool, date, datetime, dict, float, int, list, str, none_type)}
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['id'] = \
            id
        return self.find_similar_books_endpoint.call_with_http_info(**kwargs)

    def get_book_information(
        self,
        id,
        **kwargs
    ):
        """Get Book Information  # noqa: E501

         Get all information about a certain book.   # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.get_book_information(id, async_req=True)
        >>> result = thread.get()

        Args:
            id (float): The id of the book.

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            async_req (bool): execute request asynchronously

        Returns:
            {str: (bool, date, datetime, dict, float, int, list, str, none_type)}
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['id'] = \
            id
        return self.get_book_information_endpoint.call_with_http_info(**kwargs)

    def search_authors(
        self,
        **kwargs
    ):
        """Search Authors  # noqa: E501

         Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search.   # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.search_authors(async_req=True)
        >>> result = thread.get()


        Keyword Args:
            name (str): The (partial/beginning) name of the author.. [optional]
            offset (float): The number of authors to skip in range [0,100]. [optional]
            number (float): The number of authors to return in range [1,100]. [optional]
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            async_req (bool): execute request asynchronously

        Returns:
            {str: (bool, date, datetime, dict, float, int, list, str, none_type)}
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        return self.search_authors_endpoint.call_with_http_info(**kwargs)

    def search_books(
        self,
        **kwargs
    ):
        """Search Books  # noqa: E501

         Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query.   # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.search_books(async_req=True)
        >>> result = thread.get()


        Keyword Args:
            query (str): The search query.. [optional]
            earliest_publish_year (float): The books must have been published after this year.. [optional]
            latest_publish_year (float): The books must have been published before this year.. [optional]
            min_rating (float): The minimum rating the book must have gotten in the interval [0,1].. [optional]
            max_rating (float): The maximum rating the book must have gotten in the interval [0,1].. [optional]
            genres (str): A comma-separated list of  genres. Only books from any of the given genres will be returned.. [optional]
            authors (str): A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.. [optional]
            isbn (str): Only the book matching the ISBN-13 will be returned. [optional]
            oclc (str): Only the book matching the OCLC will be returned. [optional]
            sort (str): The sorting criteria (publish-date or rating).. [optional]
            sort_direction (str): Whether to sort ascending or descending (ASC or DESC).. [optional]
            offset (float): The number of books to skip in range [0,1000]. [optional]
            number (float): The number of books to return in range [1,100]. [optional]
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            async_req (bool): execute request asynchronously

        Returns:
            {str: (bool, date, datetime, dict, float, int, list, str, none_type)}
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        return self.search_books_endpoint.call_with_http_info(**kwargs)

