/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QNetworkReplySlots.h"

static SlotsQNetworkReply * s = NULL;

SlotsQNetworkReply::SlotsQNetworkReply(QObject *parent) : QObject(parent)
{
}

SlotsQNetworkReply::~SlotsQNetworkReply()
{
}
void SlotsQNetworkReply::downloadProgress( qint64 bytesReceived, qint64 bytesTotal )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "downloadProgress(qint64,qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbytesReceived = hb_itemPutNLL( NULL, bytesReceived );
    PHB_ITEM pbytesTotal = hb_itemPutNLL( NULL, bytesTotal );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pbytesReceived, pbytesTotal );
    hb_itemRelease( psender );
    hb_itemRelease( pbytesReceived );
    hb_itemRelease( pbytesTotal );
  }
}
void SlotsQNetworkReply::error( QNetworkReply::NetworkError code )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QNetworkReply::NetworkError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcode = hb_itemPutNI( NULL, (int) code );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcode );
    hb_itemRelease( psender );
    hb_itemRelease( pcode );
  }
}
void SlotsQNetworkReply::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQNetworkReply::metaDataChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "metaDataChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQNetworkReply::uploadProgress( qint64 bytesSent, qint64 bytesTotal )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "uploadProgress(qint64,qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbytesSent = hb_itemPutNLL( NULL, bytesSent );
    PHB_ITEM pbytesTotal = hb_itemPutNLL( NULL, bytesTotal );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pbytesSent, pbytesTotal );
    hb_itemRelease( psender );
    hb_itemRelease( pbytesSent );
    hb_itemRelease( pbytesTotal );
  }
}
void SlotsQNetworkReply::encrypted()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "encrypted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQNetworkReply::sslErrors( const QList<QSslError> & errors )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sslErrors(QList<QSslError>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLERROR" );
    PHB_ITEM perrors = hb_itemArrayNew(0);
    int i;
    for(i=0;i<errors.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QSslError *) new QSslError ( errors [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( perrors, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perrors );
    hb_itemRelease( psender );
    hb_itemRelease( perrors );
  }
}
void SlotsQNetworkReply::preSharedKeyAuthenticationRequired( QSslPreSharedKeyAuthenticator * authenticator )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pauthenticator = hb_itemPutPtr( NULL, (QSslPreSharedKeyAuthenticator *) authenticator );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pauthenticator );
    hb_itemRelease( psender );
    hb_itemRelease( pauthenticator );
  }
}
void SlotsQNetworkReply::redirected( const QUrl & url )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redirected(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM purl = hb_itemPutPtr( NULL, (QUrl *) &url );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, purl );
    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
void SlotsQNetworkReply::redirectAllowed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redirectAllowed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QNETWORKREPLY_ONDOWNLOADPROGRESS )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "downloadProgress(qint64,qint64)", "downloadProgress(qint64,qint64)" ) );
}

HB_FUNC( QNETWORKREPLY_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "error(QNetworkReply::NetworkError)", "error(QNetworkReply::NetworkError)" ) );
}

HB_FUNC( QNETWORKREPLY_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "finished()", "finished()" ) );
}

HB_FUNC( QNETWORKREPLY_ONMETADATACHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "metaDataChanged()", "metaDataChanged()" ) );
}

HB_FUNC( QNETWORKREPLY_ONUPLOADPROGRESS )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "uploadProgress(qint64,qint64)", "uploadProgress(qint64,qint64)" ) );
}

HB_FUNC( QNETWORKREPLY_ONENCRYPTED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "encrypted()", "encrypted()" ) );
}

HB_FUNC( QNETWORKREPLY_ONSSLERRORS )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "sslErrors(QList<QSslError>)", "sslErrors(QList<QSslError>)" ) );
}

HB_FUNC( QNETWORKREPLY_ONPRESHAREDKEYAUTHENTICATIONREQUIRED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)", "preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)" ) );
}

HB_FUNC( QNETWORKREPLY_ONREDIRECTED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "redirected(QUrl)", "redirected(QUrl)" ) );
}

HB_FUNC( QNETWORKREPLY_ONREDIRECTALLOWED )
{
  if( s == NULL )
  {
    s = new SlotsQNetworkReply( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "redirectAllowed()", "redirectAllowed()" ) );
}

