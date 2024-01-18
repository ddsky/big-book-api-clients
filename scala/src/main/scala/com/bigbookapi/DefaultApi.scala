package com.bigbookapi

import java.io._
import org.openapitools._
import com.bigbookapi.client.model._
import com.bigbookapi.client.model.BigDecimal
import io.finch.circe._
import io.circe.generic.semiauto._
import com.twitter.concurrent.AsyncStream
import com.twitter.finagle.Service
import com.twitter.finagle.Http
import com.twitter.finagle.http.{Request, Response}
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}
import com.twitter.util.Future
import com.twitter.io.Buf
import io.finch._, items._
import java.io.File
import java.nio.file.Files
import java.time._

object DefaultApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        findSimilarBooks(da) :+:
        getBookInformation(da) :+:
        searchAuthors(da) :+:
        searchBooks(da)


    private def checkError(e: CommonError) = e match {
      case InvalidInput(_) => BadRequest(e)
      case MissingIdentifier(_) => BadRequest(e)
      case RecordNotFound(_) => NotFound(e)
      case _ => InternalServerError(e)
    }

    implicit class StringOps(s: String) {

      import java.time.format.DateTimeFormatter

      lazy val localformatter: DateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")
      lazy val datetimeformatter: DateTimeFormatter =
      DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZ")

      def toLocalDateTime: LocalDateTime = LocalDateTime.parse(s,localformatter)
      def toZonedDateTime: ZonedDateTime = ZonedDateTime.parse(s, datetimeformatter)

    }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def findSimilarBooks(da: DataAccessor): Endpoint[Object] =
        get(bigdecimal :: "similar" :: paramOption("number").map(_.map(_.toBigDecimal)) :: param("api-key") :: header("x-api-key")) { (id: BigDecimal, number: Option[BigDecimal], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Default_findSimilarBooks(id, number, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def getBookInformation(da: DataAccessor): Endpoint[Object] =
        get(bigdecimal :: param("api-key") :: header("x-api-key")) { (id: BigDecimal, authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Default_getBookInformation(id, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchAuthors(da: DataAccessor): Endpoint[Object] =
        get("search-authors" :: paramOption("name") :: paramOption("offset").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal)) :: param("api-key") :: header("x-api-key")) { (name: Option[String], offset: Option[BigDecimal], number: Option[BigDecimal], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Default_searchAuthors(name, offset, number, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Object
        */
        private def searchBooks(da: DataAccessor): Endpoint[Object] =
        get("search-books" :: paramOption("query") :: paramOption("earliest-publish-year").map(_.map(_.toBigDecimal)) :: paramOption("latest-publish-year").map(_.map(_.toBigDecimal)) :: paramOption("min-rating").map(_.map(_.toBigDecimal)) :: paramOption("max-rating").map(_.map(_.toBigDecimal)) :: paramOption("genres") :: paramOption("authors") :: paramOption("isbn") :: paramOption("oclc") :: paramOption("sort") :: paramOption("sort-direction") :: paramOption("group-results").map(_.map(_.toBoolean)) :: paramOption("offset").map(_.map(_.toBigDecimal)) :: paramOption("number").map(_.map(_.toBigDecimal)) :: param("api-key") :: header("x-api-key")) { (query: Option[String], earliestPublishYear: Option[BigDecimal], latestPublishYear: Option[BigDecimal], minRating: Option[BigDecimal], maxRating: Option[BigDecimal], genres: Option[String], authors: Option[String], isbn: Option[String], oclc: Option[String], sort: Option[String], sortDirection: Option[String], groupResults: Option[Boolean], offset: Option[BigDecimal], number: Option[BigDecimal], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Default_searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }


    implicit private def fileUploadToFile(fileUpload: FileUpload) : File = {
      fileUpload match {
        case upload: InMemoryFileUpload =>
          bytesToFile(Buf.ByteArray.Owned.extract(upload.content))
        case upload: OnDiskFileUpload =>
          upload.content
        case _ => null
      }
    }

    private def bytesToFile(input: Array[Byte]): java.io.File = {
      val file = Files.createTempFile("tmpDefaultApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
