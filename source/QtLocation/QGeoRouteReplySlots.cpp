/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGeoRouteReplySlots.h"

QGeoRouteReplySlots::QGeoRouteReplySlots( QObject *parent ) : QObject( parent )
{
}

QGeoRouteReplySlots::~QGeoRouteReplySlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QGeoRouteReplySlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "finished()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGEOROUTEREPLY" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QGeoRouteReplySlots::error( QGeoRouteReply::Error error, const QString & errorString )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "error(QGeoRouteReply::Error,QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGEOROUTEREPLY" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );

    hb_vmEvalBlockV( cb, 3, psender, perror, perrorString );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}
#endif

void QGeoRouteReplySlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteReply * obj = (QGeoRouteReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGeoRouteReplySlots * s = QCoreApplication::instance()->findChild<QGeoRouteReplySlots *>();

    if( s == NULL )
    {
      s = new QGeoRouteReplySlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
