/**
 * Big Book API
 * Big Book API lets you semantically search over 4 million English books by text, genre, author, ISBN, and more. You can also find books that are similar to each other.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@bigbookapi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OAIDefaultApi_H
#define OAI_OAIDefaultApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "com.bigbookapi.client.model\OAIObject.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAIDefaultApi : public QObject {
    Q_OBJECT

public:
    OAIDefaultApi(const int timeOut = 0);
    ~OAIDefaultApi();

    void initializeServerConfigs();
    int setDefaultServerValue(int serverIndex,const QString &operation, const QString &variable,const QString &val);
    void setServerIndex(const QString &operation, int serverIndex);
    void setApiKey(const QString &apiKeyName, const QString &apiKey);
    void setBearerToken(const QString &token);
    void setUsername(const QString &username);
    void setPassword(const QString &password);
    void setTimeOut(const int timeOut);
    void setWorkingDirectory(const QString &path);
    void setNetworkAccessManager(QNetworkAccessManager* manager);
    int addServerConfiguration(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables = QMap<QString, OAIServerVariable>());
    void setNewServerForAllOperations(const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void setNewServer(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void addHeaders(const QString &key, const QString &value);
    void enableRequestCompression();
    void enableResponseCompression();
    void abortRequests();
    QString getParamStylePrefix(const QString &style);
    QString getParamStyleSuffix(const QString &style);
    QString getParamStyleDelimiter(const QString &style, const QString &name, bool isExplode);

    /**
    * @param[in]  id double [required]
    * @param[in]  number double [optional]
    */
    void findSimilarBooks(const double &id, const ::OpenAPI::OptionalParam<double> &number = ::OpenAPI::OptionalParam<double>());

    /**
    * @param[in]  id double [required]
    */
    void getBookInformation(const double &id);

    /**
    * @param[in]  name QString [optional]
    * @param[in]  offset double [optional]
    * @param[in]  number double [optional]
    */
    void searchAuthors(const ::OpenAPI::OptionalParam<QString> &name = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<double> &offset = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<double> &number = ::OpenAPI::OptionalParam<double>());

    /**
    * @param[in]  query QString [optional]
    * @param[in]  earliest_publish_year double [optional]
    * @param[in]  latest_publish_year double [optional]
    * @param[in]  min_rating double [optional]
    * @param[in]  max_rating double [optional]
    * @param[in]  genres QString [optional]
    * @param[in]  authors QString [optional]
    * @param[in]  isbn QString [optional]
    * @param[in]  oclc QString [optional]
    * @param[in]  sort QString [optional]
    * @param[in]  sort_direction QString [optional]
    * @param[in]  group_results bool [optional]
    * @param[in]  offset double [optional]
    * @param[in]  number double [optional]
    */
    void searchBooks(const ::OpenAPI::OptionalParam<QString> &query = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<double> &earliest_publish_year = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<double> &latest_publish_year = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<double> &min_rating = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<double> &max_rating = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<QString> &genres = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &authors = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &isbn = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &oclc = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &sort = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<QString> &sort_direction = ::OpenAPI::OptionalParam<QString>(), const ::OpenAPI::OptionalParam<bool> &group_results = ::OpenAPI::OptionalParam<bool>(), const ::OpenAPI::OptionalParam<double> &offset = ::OpenAPI::OptionalParam<double>(), const ::OpenAPI::OptionalParam<double> &number = ::OpenAPI::OptionalParam<double>());


private:
    QMap<QString,int> _serverIndices;
    QMap<QString,QList<OAIServerConfiguration>> _serverConfigs;
    QMap<QString, QString> _apiKeys;
    QString _bearerToken;
    QString _username;
    QString _password;
    int _timeOut;
    QString _workingDirectory;
    QNetworkAccessManager* _manager;
    QMap<QString, QString> _defaultHeaders;
    bool _isResponseCompressionEnabled;
    bool _isRequestCompressionEnabled;
    OAIHttpRequestInput _latestInput;
    OAIHttpRequestWorker *_latestWorker;
    QStringList _latestScope;
    OauthCode _authFlow;
    OauthImplicit _implicitFlow;
    OauthCredentials _credentialFlow;
    OauthPassword _passwordFlow;
    int _OauthMethod = 0;

    void findSimilarBooksCallback(OAIHttpRequestWorker *worker);
    void getBookInformationCallback(OAIHttpRequestWorker *worker);
    void searchAuthorsCallback(OAIHttpRequestWorker *worker);
    void searchBooksCallback(OAIHttpRequestWorker *worker);

signals:

    void findSimilarBooksSignal(OAIObject summary);
    void getBookInformationSignal(OAIObject summary);
    void searchAuthorsSignal(OAIObject summary);
    void searchBooksSignal(OAIObject summary);

    void findSimilarBooksSignalFull(OAIHttpRequestWorker *worker, OAIObject summary);
    void getBookInformationSignalFull(OAIHttpRequestWorker *worker, OAIObject summary);
    void searchAuthorsSignalFull(OAIHttpRequestWorker *worker, OAIObject summary);
    void searchBooksSignalFull(OAIHttpRequestWorker *worker, OAIObject summary);

    void findSimilarBooksSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString error_str);
    void getBookInformationSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchAuthorsSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString error_str);
    void searchBooksSignalE(OAIObject summary, QNetworkReply::NetworkError error_type, QString error_str);

    void findSimilarBooksSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void getBookInformationSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchAuthorsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void searchBooksSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public slots:
    void tokenAvailable();
    
};

} // namespace OpenAPI
#endif
