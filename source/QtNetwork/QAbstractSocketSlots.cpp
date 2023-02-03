/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractSocketSlots.hpp"

QAbstractSocketSlots::QAbstractSocketSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractSocketSlots::~QAbstractSocketSlots()
{
}

void QAbstractSocketSlots::connected()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "connected()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTSOCKET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAbstractSocketSlots::disconnected()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "disconnected()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTSOCKET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAbstractSocketSlots::error( QAbstractSocket::SocketError socketError )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "error(QAbstractSocket::SocketError)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTSOCKET");
    PHB_ITEM psocketError = hb_itemPutNI( NULL, static_cast<int>(socketError) );

    hb_vmEvalBlockV(cb, 2, psender, psocketError);

    hb_itemRelease(psender);
    hb_itemRelease( psocketError );
  }
}

void QAbstractSocketSlots::hostFound()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "hostFound()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTSOCKET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAbstractSocketSlots::proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTSOCKET");
    PHB_ITEM pproxy = Qt5xHb::Signals_return_object( (void *) &proxy, "QNETWORKPROXY");
    PHB_ITEM pauthenticator = Qt5xHb::Signals_return_object( (void *) authenticator, "QAUTHENTICATOR");

    hb_vmEvalBlockV(cb, 3, psender, pproxy, pauthenticator);

    hb_itemRelease(psender);
    hb_itemRelease( pproxy );
    hb_itemRelease( pauthenticator );
  }
}

void QAbstractSocketSlots::stateChanged( QAbstractSocket::SocketState socketState )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stateChanged(QAbstractSocket::SocketState)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QABSTRACTSOCKET");
    PHB_ITEM psocketState = hb_itemPutNI( NULL, static_cast<int>(socketState) );

    hb_vmEvalBlockV(cb, 2, psender, psocketState);

    hb_itemRelease(psender);
    hb_itemRelease( psocketState );
  }
}

void QAbstractSocketSlots_connect_signal(const QString & signal, const QString & slot)
{
  QAbstractSocket * obj = (QAbstractSocket *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAbstractSocketSlots * s = QCoreApplication::instance()->findChild<QAbstractSocketSlots*>();

    if( s == NULL )
    {
      s = new QAbstractSocketSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
