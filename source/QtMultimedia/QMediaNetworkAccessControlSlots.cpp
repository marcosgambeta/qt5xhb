/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMediaNetworkAccessControlSlots.h"

QMediaNetworkAccessControlSlots::QMediaNetworkAccessControlSlots( QObject *parent ) : QObject( parent )
{
}

QMediaNetworkAccessControlSlots::~QMediaNetworkAccessControlSlots()
{
}

void QMediaNetworkAccessControlSlots::configurationChanged( const QNetworkConfiguration & configuration )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "configurationChanged(QNetworkConfiguration)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIANETWORKACCESSCONTROL" );
    PHB_ITEM pconfiguration = Qt5xHb::Signals_return_object( (void *) &configuration, "QNETWORKCONFIGURATION" );

    hb_vmEvalBlockV( cb, 2, psender, pconfiguration );

    hb_itemRelease( psender );
    hb_itemRelease( pconfiguration );
  }
}

void QMediaNetworkAccessControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QMediaNetworkAccessControl * obj = (QMediaNetworkAccessControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QMediaNetworkAccessControlSlots * s = QCoreApplication::instance()->findChild<QMediaNetworkAccessControlSlots *>();

    if( s == NULL )
    {
      s = new QMediaNetworkAccessControlSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
