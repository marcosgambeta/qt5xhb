/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QQuickPaintedItemSlots.h"

QQuickPaintedItemSlots::QQuickPaintedItemSlots( QObject *parent ) : QObject( parent )
{
}

QQuickPaintedItemSlots::~QQuickPaintedItemSlots()
{
}

void QQuickPaintedItemSlots::contentsScaleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "contentsScaleChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QQUICKPAINTEDITEM" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QQuickPaintedItemSlots::contentsSizeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "contentsSizeChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QQUICKPAINTEDITEM" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QQuickPaintedItemSlots::fillColorChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "fillColorChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QQUICKPAINTEDITEM" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QQuickPaintedItemSlots::renderTargetChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "renderTargetChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QQUICKPAINTEDITEM" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QQuickPaintedItemSlots_connect_signal( const QString & signal, const QString & slot )
{
  QQuickPaintedItem * obj = (QQuickPaintedItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QQuickPaintedItemSlots * s = QCoreApplication::instance()->findChild<QQuickPaintedItemSlots *>();

    if( s == NULL )
    {
      s = new QQuickPaintedItemSlots();
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
