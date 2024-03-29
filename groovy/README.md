# bigbookapi

Big Book API lets you semantically search over 4 million English books by text, genre, author, ISBN, and more. You can also find books that are similar to each other.

This Groovy package, using the [http-builder-ng library](https://http-builder-ng.github.io/http-builder-ng/), is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.0.1
- Build date: 2024-03-08T00:34:50.121425300+01:00[Europe/Berlin]
- Build package: org.openapitools.codegen.languages.GroovyClientCodegen

## Requirements

* Groovy 2.5.7
* Gradle 4.9

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

## Getting Started


```groovy
def apiInstance = new DefaultApi()
def id = new BigDecimal("8302059") // BigDecimal | The id of the book to which similar books should be found.
def number = new BigDecimal("10") // BigDecimal | The number of similar books to return in range [1,100]

apiInstance.findSimilarBooks(id, number)
    {
    // on success
    def result = (Object)it
    println result
    
}
    {
    // on failure
    statusCode, message ->
        println "${statusCode} ${message}"
};
```

