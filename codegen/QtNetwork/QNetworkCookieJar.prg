%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCOOKIE
#endif

CLASS QNetworkCookieJar INHERIT QObject

   METHOD new
   METHOD delete

   METHOD cookiesForUrl
   METHOD deleteCookie
   METHOD insertCookie
   METHOD setCookiesFromUrl
   METHOD updateCookie

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QNetworkCookie>

$prototype=explicit QNetworkCookieJar(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=virtual ~QNetworkCookieJar()
$deleteMethod

$prototype=virtual QList<QNetworkCookie> cookiesForUrl ( const QUrl & url ) const
$virtualMethod=|QList<QNetworkCookie>|cookiesForUrl|const QUrl &

$prototype=virtual bool setCookiesFromUrl ( const QList<QNetworkCookie> & cookieList, const QUrl & url )
$virtualMethod=|bool|setCookiesFromUrl|const QList<QNetworkCookie> &,const QUrl &

$prototype=virtual bool insertCookie(const QNetworkCookie &cookie)
$virtualMethod=|bool|insertCookie|const QNetworkCookie &

$prototype=virtual bool updateCookie(const QNetworkCookie &cookie)
$virtualMethod=|bool|updateCookie|const QNetworkCookie &

$prototype=virtual bool deleteCookie(const QNetworkCookie &cookie)
$virtualMethod=|bool|deleteCookie|const QNetworkCookie &

$prototype=QList<QNetworkCookie> allCookies() const (protected)

$prototype=void setAllCookies(const QList<QNetworkCookie> &cookieList) (protected)

$prototype=virtual bool validateCookie(const QNetworkCookie &cookie, const QUrl &url) const (protected)

#pragma ENDDUMP
