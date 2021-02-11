/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QQmlEngineSlots.h"

QQmlEngineSlots::QQmlEngineSlots( QObject *parent ) : QObject( parent )
{
}

QQmlEngineSlots::~QQmlEngineSlots()
{
}

void QQmlEngineSlots::quit()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "quit()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QQMLENGINE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QQmlEngineSlots_connect_signal( const QString & signal, const QString & slot )
{
  QQmlEngine * obj = (QQmlEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QQmlEngineSlots * s = QCoreApplication::instance()->findChild<QQmlEngineSlots *>();

    if( s == NULL )
    {
      s = new QQmlEngineSlots();
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
