/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAccelerometerSlots.h"

static QAccelerometerSlots * s = NULL;

QAccelerometerSlots::QAccelerometerSlots(QObject *parent) : QObject(parent)
{
}

QAccelerometerSlots::~QAccelerometerSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QAccelerometerSlots::accelerationModeChanged( QAccelerometer::AccelerationMode accelerationMode )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "accelerationModeChanged(QAccelerometer::AccelerationMode)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QACCELEROMETER" );
    PHB_ITEM paccelerationMode = hb_itemPutNI( NULL, (int) accelerationMode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paccelerationMode );
    hb_itemRelease( psender );
    hb_itemRelease( paccelerationMode );
  }
}
#endif

void QAccelerometerSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QAccelerometerSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
