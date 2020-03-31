/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMagnetometerSlots.h"

QMagnetometerSlots::QMagnetometerSlots(QObject *parent) : QObject(parent)
{
}

QMagnetometerSlots::~QMagnetometerSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QMagnetometerSlots::returnGeoValuesChanged( bool returnGeoValues )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "returnGeoValuesChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QMAGNETOMETER" );
    PHB_ITEM preturnGeoValues = hb_itemPutL( NULL, returnGeoValues );
    hb_vmEvalBlockV( cb, 2, psender, preturnGeoValues );
    hb_itemRelease( psender );
    hb_itemRelease( preturnGeoValues );
  }
}
#endif

void QMagnetometerSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMagnetometer * obj = (QMagnetometer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QMagnetometerSlots * s = QCoreApplication::instance()->findChild<QMagnetometerSlots *>();

    if( s == NULL )
    {
      s = new QMagnetometerSlots();
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
