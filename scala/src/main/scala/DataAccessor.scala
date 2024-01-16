package org.openapitools

// TODO: properly handle custom imports
import java.io._
import java.util.UUID
import java.time._
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}

import com.bigbookapi.client.model._

trait DataAccessor {
    // TODO: apiInfo -> apis -> operations = TODO error
    private object TODO extends CommonError("Not implemented") {
        def message = "Not implemented"
    }

        /**
        * 
        * @return A Object
        */
        def Default_findSimilarBooks(id: BigDecimal, number: Option[BigDecimal], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_getBookInformation(id: BigDecimal, authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_searchAuthors(name: Option[String], offset: Option[BigDecimal], number: Option[BigDecimal], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Object] = Left(TODO)

        /**
        * 
        * @return A Object
        */
        def Default_searchBooks(query: Option[String], earliestPublishYear: Option[BigDecimal], latestPublishYear: Option[BigDecimal], minRating: Option[BigDecimal], maxRating: Option[BigDecimal], genres: Option[String], authors: Option[String], isbn: Option[String], oclc: Option[String], sort: Option[String], sortDirection: Option[String], offset: Option[BigDecimal], number: Option[BigDecimal], authParamapiKey: String, authParamheaderApiKey: String): Either[CommonError,Object] = Left(TODO)

}