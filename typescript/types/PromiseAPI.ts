import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import * as models from '../models/all';
import { Configuration} from '../configuration'

import { ObservableDefaultApi } from './ObservableAPI';

import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";
export class PromiseDefaultApi {
    private api: ObservableDefaultApi

    public constructor(
        configuration: Configuration,
        requestFactory?: DefaultApiRequestFactory,
        responseProcessor?: DefaultApiResponseProcessor
    ) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     *  Find books that are similar to the given book. 
     * Find Similar Books
     * @param id The id of the book to which similar books should be found.
     * @param number The number of similar books to return in range [1,100]
     */
    public findSimilarBooks(id: number, number?: number, _options?: Configuration): Promise<any> {
        const result = this.api.findSimilarBooks(id, number, _options);
        return result.toPromise();
    }

    /**
     *  Get all information about a certain book. 
     * Get Book Information
     * @param id The id of the book.
     */
    public getBookInformation(id: number, _options?: Configuration): Promise<any> {
        const result = this.api.getBookInformation(id, _options);
        return result.toPromise();
    }

    /**
     *  Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search. 
     * Search Authors
     * @param name The (partial/beginning) name of the author.
     * @param offset The number of authors to skip in range [0,100]
     * @param number The number of authors to return in range [1,100]
     */
    public searchAuthors(name?: string, offset?: number, number?: number, _options?: Configuration): Promise<any> {
        const result = this.api.searchAuthors(name, offset, number, _options);
        return result.toPromise();
    }

    /**
     *  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query. 
     * Search Books
     * @param query The search query.
     * @param earliestPublishYear The books must have been published after this year.
     * @param latestPublishYear The books must have been published before this year.
     * @param minRating The minimum rating the book must have gotten in the interval [0,1].
     * @param maxRating The maximum rating the book must have gotten in the interval [0,1].
     * @param genres A comma-separated list of  genres. Only books from any of the given genres will be returned.
     * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.
     * @param isbn Only the book matching the ISBN-13 will be returned
     * @param oclc Only the book matching the OCLC will be returned
     * @param sort The sorting criteria (publish-date or rating).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of books to skip in range [0,1000]
     * @param number The number of books to return in range [1,100]
     */
    public searchBooks(query?: string, earliestPublishYear?: number, latestPublishYear?: number, minRating?: number, maxRating?: number, genres?: string, authors?: string, isbn?: string, oclc?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Promise<any> {
        const result = this.api.searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, offset, number, _options);
        return result.toPromise();
    }


}



