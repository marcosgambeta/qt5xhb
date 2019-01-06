%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

/*
enum QNetworkReply::NetworkError
*/
#define QNetworkReply_NoError                                        0
#define QNetworkReply_ConnectionRefusedError                         1
#define QNetworkReply_RemoteHostClosedError                          2
#define QNetworkReply_HostNotFoundError                              3
#define QNetworkReply_TimeoutError                                   4
#define QNetworkReply_OperationCanceledError                         5
#define QNetworkReply_SslHandshakeFailedError                        6
#define QNetworkReply_TemporaryNetworkFailureError                   7
#define QNetworkReply_NetworkSessionFailedError                      8
#define QNetworkReply_BackgroundRequestNotAllowedError               9
#define QNetworkReply_TooManyRedirectsError                          10
#define QNetworkReply_InsecureRedirectError                          11
#define QNetworkReply_UnknownNetworkError                            99
#define QNetworkReply_ProxyConnectionRefusedError                    101
#define QNetworkReply_ProxyConnectionClosedError                     102
#define QNetworkReply_ProxyNotFoundError                             103
#define QNetworkReply_ProxyTimeoutError                              104
#define QNetworkReply_ProxyAuthenticationRequiredError               105
#define QNetworkReply_UnknownProxyError                              199
#define QNetworkReply_ContentAccessDenied                            201
#define QNetworkReply_ContentOperationNotPermittedError              202
#define QNetworkReply_ContentNotFoundError                           203
#define QNetworkReply_AuthenticationRequiredError                    204
#define QNetworkReply_ContentReSendError                             205
#define QNetworkReply_ContentConflictError                           206
#define QNetworkReply_ContentGoneError                               207
#define QNetworkReply_UnknownContentError                            299
#define QNetworkReply_ProtocolUnknownError                           301
#define QNetworkReply_ProtocolInvalidOperationError                  302
#define QNetworkReply_ProtocolFailure                                399
#define QNetworkReply_InternalServerError                            401
#define QNetworkReply_OperationNotImplementedError                   402
#define QNetworkReply_ServiceUnavailableError                        403
#define QNetworkReply_UnknownServerError                             499
