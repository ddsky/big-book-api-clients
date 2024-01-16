# android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>com.bigbookapi</groupId>
    <artifactId>android-client</artifactId>
    <version>1.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "com.bigbookapi:android-client:1.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/android-client-1.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import com.bigbookapi.DefaultApi;

public class DefaultApiExample {

    public static void main(String[] args) {
        DefaultApi apiInstance = new DefaultApi();
        BigDecimal id = 8302059; // BigDecimal | The id of the book to which similar books should be found.
        BigDecimal number = 10; // BigDecimal | The number of similar books to return in range [1,100]
        try {
            Object result = apiInstance.findSimilarBooks(id, number);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DefaultApi#findSimilarBooks");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.bigbookapi.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**findSimilarBooks**](docs/DefaultApi.md#findSimilarBooks) | **GET** /{id}/similar | Find Similar Books
*DefaultApi* | [**getBookInformation**](docs/DefaultApi.md#getBookInformation) | **GET** /{id} | Get Book Information
*DefaultApi* | [**searchAuthors**](docs/DefaultApi.md#searchAuthors) | **GET** /search-authors | Search Authors
*DefaultApi* | [**searchBooks**](docs/DefaultApi.md#searchBooks) | **GET** /search-books | Search Books


## Documentation for Models



## Documentation for Authorization

Authentication schemes defined for the API:
### apiKey

- **Type**: API key

- **API key parameter name**: api-key
- **Location**: URL query string

### headerApiKey

- **Type**: API key

- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

mail@bigbookapi.com

