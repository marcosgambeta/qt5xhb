/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractEventDispatcherSlots.h"

QAbstractEventDispatcherSlots::QAbstractEventDispatcherSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractEventDispatcherSlots::~QAbstractEventDispatcherSlots()
{
}

void QAbstractEventDispatcherSlots::aboutToBlock()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "aboutToBlock()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTEVENTDISPATCHER" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractEventDispatcherSlots::awake()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "awake()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTEVENTDISPATCHER" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractEventDispatcherSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractEventDispatcherSlots * s = QCoreApplication::instance()->findChild<QAbstractEventDispatcherSlots *>();

    if( s == NULL )
    {
      s = new QAbstractEventDispatcherSlots();
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
