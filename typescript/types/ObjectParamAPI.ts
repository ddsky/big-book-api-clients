import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import * as models from '../models/all';
import { Configuration} from '../configuration'


import { ObservableDefaultApi } from "./ObservableAPI";
import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";

export interface DefaultApiFindSimilarBooksRequest {
    /**
     * The id of the book to which similar books should be found.
     * @type number
     * @memberof DefaultApifindSimilarBooks
     */
    id: number
    /**
     * The number of similar books to return in range [1,100]
     * @type number
     * @memberof DefaultApifindSimilarBooks
     */
    number?: number
}

export interface DefaultApiGetBookInformationRequest {
    /**
     * The id of the book.
     * @type number
     * @memberof DefaultApigetBookInformation
     */
    id: number
}

export interface DefaultApiSearchAuthorsRequest {
    /**
     * The (partial/beginning) name of the author.
     * @type string
     * @memberof DefaultApisearchAuthors
     */
    name?: string
    /**
     * The number of authors to skip in range [0,100]
     * @type number
     * @memberof DefaultApisearchAuthors
     */
    offset?: number
    /**
     * The number of authors to return in range [1,100]
     * @type number
     * @memberof DefaultApisearchAuthors
     */
    number?: number
}

export interface DefaultApiSearchBooksRequest {
    /**
     * The search query.
     * @type string
     * @memberof DefaultApisearchBooks
     */
    query?: string
    /**
     * The books must have been published after this year.
     * @type number
     * @memberof DefaultApisearchBooks
     */
    earliestPublishYear?: number
    /**
     * The books must have been published before this year.
     * @type number
     * @memberof DefaultApisearchBooks
     */
    latestPublishYear?: number
    /**
     * The minimum rating the book must have gotten in the interval [0,1].
     * @type number
     * @memberof DefaultApisearchBooks
     */
    minRating?: number
    /**
     * The maximum rating the book must have gotten in the interval [0,1].
     * @type number
     * @memberof DefaultApisearchBooks
     */
    maxRating?: number
    /**
     * A comma-separated list of  genres. Only books from any of the given genres will be returned.
     * @type string
     * @memberof DefaultApisearchBooks
     */
    genres?: string
    /**
     * A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.
     * @type string
     * @memberof DefaultApisearchBooks
     */
    authors?: string
    /**
     * Only the book matching the ISBN-13 will be returned
     * @type string
     * @memberof DefaultApisearchBooks
     */
    isbn?: string
    /**
     * Only the book matching the OCLC will be returned
     * @type string
     * @memberof DefaultApisearchBooks
     */
    oclc?: string
    /**
     * The sorting criteria (publish-date or rating).
     * @type string
     * @memberof DefaultApisearchBooks
     */
    sort?: string
    /**
     * Whether to sort ascending or descending (ASC or DESC).
     * @type string
     * @memberof DefaultApisearchBooks
     */
    sortDirection?: string
    /**
     * Whether to group similar editions of the same book.
     * @type boolean
     * @memberof DefaultApisearchBooks
     */
    groupResults?: boolean
    /**
     * The number of books to skip in range [0,1000]
     * @type number
     * @memberof DefaultApisearchBooks
     */
    offset?: number
    /**
     * The number of books to return in range [1,100]
     * @type number
     * @memberof DefaultApisearchBooks
     */
    number?: number
}

export class ObjectDefaultApi {
    private api: ObservableDefaultApi

    public constructor(configuration: Configuration, requestFactory?: DefaultApiRequestFactory, responseProcessor?: DefaultApiResponseProcessor) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     *  Find books that are similar to the given book. 
     * Find Similar Books
     * @param param the request object
     */
    public findSimilarBooks(param: DefaultApiFindSimilarBooksRequest, options?: Configuration): Promise<any> {
        return this.api.findSimilarBooks(param.id, param.number,  options).toPromise();
    }

    /**
     *  Get all information about a certain book. 
     * Get Book Information
     * @param param the request object
     */
    public getBookInformation(param: DefaultApiGetBookInformationRequest, options?: Configuration): Promise<any> {
        return this.api.getBookInformation(param.id,  options).toPromise();
    }

    /**
     *  Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 
     * Search Authors
     * @param param the request object
     */
    public searchAuthors(param: DefaultApiSearchAuthorsRequest = {}, options?: Configuration): Promise<any> {
        return this.api.searchAuthors(param.name, param.offset, param.number,  options).toPromise();
    }

    /**
     *  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 
     * Search Books
     * @param param the request object
     */
    public searchBooks(param: DefaultApiSearchBooksRequest = {}, options?: Configuration): Promise<any> {
        return this.api.searchBooks(param.query, param.earliestPublishYear, param.latestPublishYear, param.minRating, param.maxRating, param.genres, param.authors, param.isbn, param.oclc, param.sort, param.sortDirection, param.groupResults, param.offset, param.number,  options).toPromise();
    }

}
