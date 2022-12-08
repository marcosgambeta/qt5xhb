/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QModbusClientSlots.h"

QModbusClientSlots::QModbusClientSlots( QObject *parent ) : QObject( parent )
{
}

QModbusClientSlots::~QModbusClientSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QModbusClientSlots::timeoutChanged( int newTimeout )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "timeoutChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMODBUSCLIENT" );
    PHB_ITEM pnewTimeout = hb_itemPutNI( NULL, newTimeout );

    hb_vmEvalBlockV( cb, 2, psender, pnewTimeout );

    hb_itemRelease( psender );
    hb_itemRelease( pnewTimeout );
  }
}
#endif

void QModbusClientSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusClient * obj = (QModbusClient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QModbusClientSlots * s = QCoreApplication::instance()->findChild<QModbusClientSlots *>();

    if( s == NULL )
    {
      s = new QModbusClientSlots();
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
