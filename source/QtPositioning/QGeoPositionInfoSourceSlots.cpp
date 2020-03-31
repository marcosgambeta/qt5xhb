/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGeoPositionInfoSourceSlots.h"

QGeoPositionInfoSourceSlots::QGeoPositionInfoSourceSlots(QObject *parent) : QObject(parent)
{
}

QGeoPositionInfoSourceSlots::~QGeoPositionInfoSourceSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QGeoPositionInfoSourceSlots::positionUpdated( const QGeoPositionInfo & update )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "positionUpdated(QGeoPositionInfo)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGEOPOSITIONINFOSOURCE" );
    PHB_ITEM pupdate = Signals_return_object( (void *) &update, "QGEOPOSITIONINFO" );
    hb_vmEvalBlockV( cb, 2, psender, pupdate );
    hb_itemRelease( psender );
    hb_itemRelease( pupdate );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QGeoPositionInfoSourceSlots::updateTimeout()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updateTimeout()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGEOPOSITIONINFOSOURCE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QGeoPositionInfoSourceSlots::error( QGeoPositionInfoSource::Error error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QGeoPositionInfoSource::Error)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGEOPOSITIONINFOSOURCE" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}
#endif

void QGeoPositionInfoSourceSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSource * obj = (QGeoPositionInfoSource *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGeoPositionInfoSourceSlots * s = QCoreApplication::instance()->findChild<QGeoPositionInfoSourceSlots *>();

    if( s == NULL )
    {
      s = new QGeoPositionInfoSourceSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
