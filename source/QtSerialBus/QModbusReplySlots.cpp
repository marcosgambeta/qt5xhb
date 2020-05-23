/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QModbusReplySlots.h"

QModbusReplySlots::QModbusReplySlots( QObject *parent ) : QObject( parent )
{
}

QModbusReplySlots::~QModbusReplySlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QModbusReplySlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "finished()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMODBUSREPLY" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QModbusReplySlots::errorOccurred( QModbusDevice::Error error )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "errorOccurred(QModbusDevice::Error)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMODBUSREPLY" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );

    hb_vmEvalBlockV( cb, 2, psender, perror );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}
#endif

void QModbusReplySlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusReply * obj = (QModbusReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QModbusReplySlots * s = QCoreApplication::instance()->findChild<QModbusReplySlots *>();

    if( s == NULL )
    {
      s = new QModbusReplySlots();
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
