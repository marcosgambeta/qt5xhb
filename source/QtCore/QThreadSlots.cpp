/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QThreadSlots.h"

QThreadSlots::QThreadSlots( QObject *parent ) : QObject( parent )
{
}

QThreadSlots::~QThreadSlots()
{
}

void QThreadSlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "finished()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QTHREAD" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QThreadSlots::started()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "started()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QTHREAD" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QThreadSlots_connect_signal( const QString & signal, const QString & slot )
{
  QThread * obj = (QThread *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QThreadSlots * s = QCoreApplication::instance()->findChild<QThreadSlots *>();

    if( s == NULL )
    {
      s = new QThreadSlots();
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
