(ns big-book-api.api.default
  (:require [big-book-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            )
  (:import (java.io File)))


(defn-spec find-similar-books-with-http-info any?
  "Find Similar Books
  Find books that are similar to the given book."
  ([id float?, ] (find-similar-books-with-http-info id nil))
  ([id float?, {:keys [number]} (s/map-of keyword? any?)]
   (check-required-params id)
   (call-api "/{id}/similar" :get
             {:path-params   {"id" id }
              :header-params {}
              :query-params  {"number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec find-similar-books any?
  "Find Similar Books
  Find books that are similar to the given book."
  ([id float?, ] (find-similar-books id nil))
  ([id float?, optional-params any?]
   (let [res (:data (find-similar-books-with-http-info id optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec get-book-information-with-http-info any?
  "Get Book Information
  Get all information about a certain book."
  [id float?]
  (check-required-params id)
  (call-api "/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec get-book-information any?
  "Get Book Information
  Get all information about a certain book."
  [id float?]
  (let [res (:data (get-book-information-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode any? res st/string-transformer)
       res)))


(defn-spec search-authors-with-http-info any?
  "Search Authors
  Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search."
  ([] (search-authors-with-http-info nil))
  ([{:keys [name offset number]} (s/map-of keyword? any?)]
   (call-api "/search-authors" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"name" name "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-authors any?
  "Search Authors
  Search for book authors by name or partial name. The response contains the author's name and their id. You can then use the id in the book search."
  ([] (search-authors nil))
  ([optional-params any?]
   (let [res (:data (search-authors-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


(defn-spec search-books-with-http-info any?
  "Search Books
  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query."
  ([] (search-books-with-http-info nil))
  ([{:keys [query earliest-publish-year latest-publish-year min-rating max-rating genres authors isbn oclc sort sort-direction group-results offset number]} (s/map-of keyword? any?)]
   (call-api "/search-books" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "earliest-publish-year" earliest-publish-year "latest-publish-year" latest-publish-year "min-rating" min-rating "max-rating" max-rating "genres" genres "authors" authors "isbn" isbn "oclc" oclc "sort" sort "sort-direction" sort-direction "group-results" group-results "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-books any?
  "Search Books
  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query."
  ([] (search-books nil))
  ([optional-params any?]
   (let [res (:data (search-books-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode any? res st/string-transformer)
        res))))


