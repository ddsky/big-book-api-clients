import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';

import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";
export class ObservableDefaultApi {
    private requestFactory: DefaultApiRequestFactory;
    private responseProcessor: DefaultApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: DefaultApiRequestFactory,
        responseProcessor?: DefaultApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new DefaultApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new DefaultApiResponseProcessor();
    }

    /**
     *  Find books that are similar to the given book. 
     * Find Similar Books
     * @param id The id of the book to which similar books should be found.
     * @param number The number of similar books to return in range [1,100]
     */
    public findSimilarBooksWithHttpInfo(id: number, number?: number, _options?: Configuration): Observable<HttpInfo<any>> {
        const requestContextPromise = this.requestFactory.findSimilarBooks(id, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.findSimilarBooksWithHttpInfo(rsp)));
            }));
    }

    /**
     *  Find books that are similar to the given book. 
     * Find Similar Books
     * @param id The id of the book to which similar books should be found.
     * @param number The number of similar books to return in range [1,100]
     */
    public findSimilarBooks(id: number, number?: number, _options?: Configuration): Observable<any> {
        return this.findSimilarBooksWithHttpInfo(id, number, _options).pipe(map((apiResponse: HttpInfo<any>) => apiResponse.data));
    }

    /**
     *  Get all information about a certain book. 
     * Get Book Information
     * @param id The id of the book.
     */
    public getBookInformationWithHttpInfo(id: number, _options?: Configuration): Observable<HttpInfo<any>> {
        const requestContextPromise = this.requestFactory.getBookInformation(id, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getBookInformationWithHttpInfo(rsp)));
            }));
    }

    /**
     *  Get all information about a certain book. 
     * Get Book Information
     * @param id The id of the book.
     */
    public getBookInformation(id: number, _options?: Configuration): Observable<any> {
        return this.getBookInformationWithHttpInfo(id, _options).pipe(map((apiResponse: HttpInfo<any>) => apiResponse.data));
    }

    /**
     *  Search for book authors by name or partial name. The response contains the author\'s name and their id. You can then use the id in the book search. 
     * Search Authors
     * @param name The (partial/beginning) name of the author.
     * @param offset The number of authors to skip in range [0,100]
     * @param number The number of authors to return in range [1,100]
     */
    public searchAuthorsWithHttpInfo(name?: string, offset?: number, number?: number, _options?: Configuration): Observable<HttpInfo<any>> {
        const requestContextPromise = this.requestFactory.searchAuthors(name, offset, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchAuthorsWithHttpInfo(rsp)));
            }));
    }

    /**
     *  Search for book authors by name or partial name. The response contains the author\'s name and their id. You can then use the id in the book search. 
     * Search Authors
     * @param name The (partial/beginning) name of the author.
     * @param offset The number of authors to skip in range [0,100]
     * @param number The number of authors to return in range [1,100]
     */
    public searchAuthors(name?: string, offset?: number, number?: number, _options?: Configuration): Observable<any> {
        return this.searchAuthorsWithHttpInfo(name, offset, number, _options).pipe(map((apiResponse: HttpInfo<any>) => apiResponse.data));
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
     * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can\&#39;t disambiguate.
     * @param isbn Only the book matching the ISBN-13 will be returned
     * @param oclc Only the book matching the OCLC will be returned
     * @param sort The sorting criteria (publish-date or rating).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param groupResults Whether to group similar editions of the same book.
     * @param offset The number of books to skip in range [0,1000]
     * @param number The number of books to return in range [1,100]
     */
    public searchBooksWithHttpInfo(query?: string, earliestPublishYear?: number, latestPublishYear?: number, minRating?: number, maxRating?: number, genres?: string, authors?: string, isbn?: string, oclc?: string, sort?: string, sortDirection?: string, groupResults?: boolean, offset?: number, number?: number, _options?: Configuration): Observable<HttpInfo<any>> {
        const requestContextPromise = this.requestFactory.searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchBooksWithHttpInfo(rsp)));
            }));
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
     * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can\&#39;t disambiguate.
     * @param isbn Only the book matching the ISBN-13 will be returned
     * @param oclc Only the book matching the OCLC will be returned
     * @param sort The sorting criteria (publish-date or rating).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param groupResults Whether to group similar editions of the same book.
     * @param offset The number of books to skip in range [0,1000]
     * @param number The number of books to return in range [1,100]
     */
    public searchBooks(query?: string, earliestPublishYear?: number, latestPublishYear?: number, minRating?: number, maxRating?: number, genres?: string, authors?: string, isbn?: string, oclc?: string, sort?: string, sortDirection?: string, groupResults?: boolean, offset?: number, number?: number, _options?: Configuration): Observable<any> {
        return this.searchBooksWithHttpInfo(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, _options).pipe(map((apiResponse: HttpInfo<any>) => apiResponse.data));
    }

}
