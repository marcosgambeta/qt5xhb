/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSerialPortSlots.h"

QSerialPortSlots::QSerialPortSlots( QObject *parent ) : QObject( parent )
{
}

QSerialPortSlots::~QSerialPortSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QSerialPortSlots::baudRateChanged( qint32 baudRate, QSerialPort::Directions dir )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "baudRateChanged(qint32,QSerialPort::Directions)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSERIALPORT" );
    PHB_ITEM pbaudRate = hb_itemPutNI( NULL, baudRate );
    PHB_ITEM pdir = hb_itemPutNI( NULL, (int) dir );

    hb_vmEvalBlockV( cb, 3, psender, pbaudRate, pdir );

    hb_itemRelease( psender );
    hb_itemRelease( pbaudRate );
    hb_itemRelease( pdir );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QSerialPortSlots::dataBitsChanged( QSerialPort::DataBits dataBits )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "dataBitsChanged(QSerialPort::DataBits)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSERIALPORT" );
    PHB_ITEM pdataBits = hb_itemPutNI( NULL, (int) dataBits );

    hb_vmEvalBlockV( cb, 2, psender, pdataBits );

    hb_itemRelease( psender );
    hb_itemRelease( pdataBits );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QSerialPortSlots::parityChanged( QSerialPort::Parity parity )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "parityChanged(QSerialPort::Parity)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSERIALPORT" );
    PHB_ITEM pparity = hb_itemPutNI( NULL, (int) parity );

    hb_vmEvalBlockV( cb, 2, psender, pparity );

    hb_itemRelease( psender );
    hb_itemRelease( pparity );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QSerialPortSlots::stopBitsChanged( QSerialPort::StopBits stopBits )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "stopBitsChanged(QSerialPort::StopBits)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSERIALPORT" );
    PHB_ITEM pstopBits = hb_itemPutNI( NULL, (int) stopBits );

    hb_vmEvalBlockV( cb, 2, psender, pstopBits );

    hb_itemRelease( psender );
    hb_itemRelease( pstopBits );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QSerialPortSlots::flowControlChanged( QSerialPort::FlowControl flow )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "flowControlChanged(QSerialPort::FlowControl)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSERIALPORT" );
    PHB_ITEM pflow = hb_itemPutNI( NULL, (int) flow );

    hb_vmEvalBlockV( cb, 2, psender, pflow );

    hb_itemRelease( psender );
    hb_itemRelease( pflow );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QSerialPortSlots::dataErrorPolicyChanged( QSerialPort::DataErrorPolicy policy )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSERIALPORT" );
    PHB_ITEM ppolicy = hb_itemPutNI( NULL, (int) policy );

    hb_vmEvalBlockV( cb, 2, psender, ppolicy );

    hb_itemRelease( psender );
    hb_itemRelease( ppolicy );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QSerialPortSlots::dataTerminalReadyChanged( bool set )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "dataTerminalReadyChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSERIALPORT" );
    PHB_ITEM pset = hb_itemPutL( NULL, set );

    hb_vmEvalBlockV( cb, 2, psender, pset );

    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QSerialPortSlots::requestToSendChanged( bool set )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "requestToSendChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSERIALPORT" );
    PHB_ITEM pset = hb_itemPutL( NULL, set );

    hb_vmEvalBlockV( cb, 2, psender, pset );

    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QSerialPortSlots::error( QSerialPort::SerialPortError serialPortError )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "error(QSerialPort::SerialPortError)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSERIALPORT" );
    PHB_ITEM pserialPortError = hb_itemPutNI( NULL, (int) serialPortError );

    hb_vmEvalBlockV( cb, 2, psender, pserialPortError );

    hb_itemRelease( psender );
    hb_itemRelease( pserialPortError );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QSerialPortSlots::settingsRestoredOnCloseChanged( bool restore )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "settingsRestoredOnCloseChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSERIALPORT" );
    PHB_ITEM prestore = hb_itemPutL( NULL, restore );

    hb_vmEvalBlockV( cb, 2, psender, prestore );

    hb_itemRelease( psender );
    hb_itemRelease( prestore );
  }
}
#endif

void QSerialPortSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSerialPortSlots * s = QCoreApplication::instance()->findChild<QSerialPortSlots *>();

    if( s == NULL )
    {
      s = new QSerialPortSlots();
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
