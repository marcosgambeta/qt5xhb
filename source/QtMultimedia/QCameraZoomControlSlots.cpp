/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCameraZoomControlSlots.h"

QCameraZoomControlSlots::QCameraZoomControlSlots(QObject *parent) : QObject(parent)
{
}

QCameraZoomControlSlots::~QCameraZoomControlSlots()
{
}
void QCameraZoomControlSlots::currentDigitalZoomChanged( qreal zoom )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentDigitalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAZOOMCONTROL" );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}
void QCameraZoomControlSlots::currentOpticalZoomChanged( qreal zoom )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentOpticalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAZOOMCONTROL" );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}
void QCameraZoomControlSlots::maximumDigitalZoomChanged( qreal zoom )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maximumDigitalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAZOOMCONTROL" );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}
void QCameraZoomControlSlots::maximumOpticalZoomChanged( qreal zoom )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maximumOpticalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAZOOMCONTROL" );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}
void QCameraZoomControlSlots::requestedDigitalZoomChanged( qreal zoom )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestedDigitalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAZOOMCONTROL" );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}
void QCameraZoomControlSlots::requestedOpticalZoomChanged( qreal zoom )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestedOpticalZoomChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERAZOOMCONTROL" );
    PHB_ITEM pzoom = hb_itemPutND( NULL, zoom );
    hb_vmEvalBlockV( cb, 2, psender, pzoom );
    hb_itemRelease( psender );
    hb_itemRelease( pzoom );
  }
}

void QCameraZoomControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QCameraZoomControl * obj = (QCameraZoomControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QCameraZoomControlSlots * s = QCoreApplication::instance()->findChild<QCameraZoomControlSlots *>();

    if( s == NULL )
    {
      s = new QCameraZoomControlSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
