/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTWEBENGINECORE_H
#define QT5XHB_MACROS_QTWEBENGINECORE_H

#define ISQWEBENGINECOOKIESTORE(n)                          Qt5xHb::isObjectDerivedFrom(n, "QWebEngineCookieStore")
#define ISQWEBENGINEHTTPREQUEST(n)                          Qt5xHb::isObjectDerivedFrom(n, "QWebEngineHttpRequest")
#define ISQWEBENGINEURLREQUESTINFO(n)                       Qt5xHb::isObjectDerivedFrom(n, "QWebEngineUrlRequestInfo")
#define ISQWEBENGINEURLREQUESTINTERCEPTOR(n)                Qt5xHb::isObjectDerivedFrom(n, "QWebEngineUrlRequestInterceptor")
#define ISQWEBENGINEURLREQUESTJOB(n)                        Qt5xHb::isObjectDerivedFrom(n, "QWebEngineUrlRequestJob")
#define ISQWEBENGINEURLSCHEMEHANDLER(n)                     Qt5xHb::isObjectDerivedFrom(n, "QWebEngineUrlSchemeHandler")

#define PQWEBENGINECOOKIESTORE(n)                           static_cast<QWebEngineCookieStore*>(Qt5xHb::itemGetPtr(n))
#define PQWEBENGINEHTTPREQUEST(n)                           static_cast<QWebEngineHttpRequest*>(Qt5xHb::itemGetPtr(n))
#define PQWEBENGINEURLREQUESTINFO(n)                        static_cast<QWebEngineUrlRequestInfo*>(Qt5xHb::itemGetPtr(n))
#define PQWEBENGINEURLREQUESTINTERCEPTOR(n)                 static_cast<QWebEngineUrlRequestInterceptor*>(Qt5xHb::itemGetPtr(n))
#define PQWEBENGINEURLREQUESTJOB(n)                         static_cast<QWebEngineUrlRequestJob*>(Qt5xHb::itemGetPtr(n))
#define PQWEBENGINEURLSCHEMEHANDLER(n)                      static_cast<QWebEngineUrlSchemeHandler*>(Qt5xHb::itemGetPtr(n))

#define OPQWEBENGINECOOKIESTORE(n, v)                       HB_ISNIL(n) ? v : static_cast<QWebEngineCookieStore*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBENGINEHTTPREQUEST(n, v)                       HB_ISNIL(n) ? v : static_cast<QWebEngineHttpRequest*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBENGINEURLREQUESTINFO(n, v)                    HB_ISNIL(n) ? v : static_cast<QWebEngineUrlRequestInfo*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBENGINEURLREQUESTINTERCEPTOR(n, v)             HB_ISNIL(n) ? v : static_cast<QWebEngineUrlRequestInterceptor*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBENGINEURLREQUESTJOB(n, v)                     HB_ISNIL(n) ? v : static_cast<QWebEngineUrlRequestJob*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBENGINEURLSCHEMEHANDLER(n, v)                  HB_ISNIL(n) ? v : static_cast<QWebEngineUrlSchemeHandler*>(Qt5xHb::itemGetPtr(n))

#endif /* QT5XHB_MACROS_QTWEBENGINECORE_H */
