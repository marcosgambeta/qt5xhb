$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKPROXY
#endif

CLASS QNetworkProxyFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD queryProxy
   METHOD proxyForQuery
   METHOD setApplicationProxyFactory
   METHOD setUseSystemConfiguration
   METHOD systemProxyForQuery

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QList<QNetworkProxy> queryProxy ( const QNetworkProxyQuery & query = QNetworkProxyQuery() ) = 0
*/
$method=|QList<QNetworkProxy>|queryProxy|const QNetworkProxyQuery &=QNetworkProxyQuery()

/*
static QList<QNetworkProxy> proxyForQuery ( const QNetworkProxyQuery & query )
*/
$staticMethod=|QList<QNetworkProxy>|proxyForQuery|const QNetworkProxyQuery &

/*
static void setApplicationProxyFactory ( QNetworkProxyFactory * factory )
*/
$staticMethod=|void|setApplicationProxyFactory|QNetworkProxyFactory *

/*
static void setUseSystemConfiguration ( bool enable )
*/
$staticMethod=|void|setUseSystemConfiguration|bool

/*
static QList<QNetworkProxy> systemProxyForQuery ( const QNetworkProxyQuery & query = QNetworkProxyQuery() )
*/
$staticMethod=|QList<QNetworkProxy>|systemProxyForQuery|const QNetworkProxyQuery &=QNetworkProxyQuery()

$extraMethods

#pragma ENDDUMP
