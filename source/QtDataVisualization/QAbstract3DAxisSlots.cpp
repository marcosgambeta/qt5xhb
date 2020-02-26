/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstract3DAxisSlots.h"

QAbstract3DAxisSlots::QAbstract3DAxisSlots(QObject *parent) : QObject(parent)
{
}

QAbstract3DAxisSlots::~QAbstract3DAxisSlots()
{
}
void QAbstract3DAxisSlots::autoAdjustRangeChanged( bool autoAdjust )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "autoAdjustRangeChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACT3DAXIS" );
    PHB_ITEM pautoAdjust = hb_itemPutL( NULL, autoAdjust );
    hb_vmEvalBlockV( cb, 2, psender, pautoAdjust );
    hb_itemRelease( psender );
    hb_itemRelease( pautoAdjust );
  }
}
void QAbstract3DAxisSlots::labelAutoRotationChanged( float angle )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelAutoRotationChanged(float)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACT3DAXIS" );
    PHB_ITEM pangle = hb_itemPutND( NULL, angle );
    hb_vmEvalBlockV( cb, 2, psender, pangle );
    hb_itemRelease( psender );
    hb_itemRelease( pangle );
  }
}
void QAbstract3DAxisSlots::labelsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACT3DAXIS" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QAbstract3DAxisSlots::maxChanged( float value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maxChanged(float)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACT3DAXIS" );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}
void QAbstract3DAxisSlots::minChanged( float value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "minChanged(float)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACT3DAXIS" );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}
void QAbstract3DAxisSlots::orientationChanged( QAbstract3DAxis::AxisOrientation orientation )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "orientationChanged(QAbstract3DAxis::AxisOrientation)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACT3DAXIS" );
    PHB_ITEM porientation = hb_itemPutNI( NULL, (int) orientation );
    hb_vmEvalBlockV( cb, 2, psender, porientation );
    hb_itemRelease( psender );
    hb_itemRelease( porientation );
  }
}
void QAbstract3DAxisSlots::rangeChanged( float min, float max )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rangeChanged(float,float)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACT3DAXIS" );
    PHB_ITEM pmin = hb_itemPutND( NULL, min );
    PHB_ITEM pmax = hb_itemPutND( NULL, max );
    hb_vmEvalBlockV( cb, 3, psender, pmin, pmax );
    hb_itemRelease( psender );
    hb_itemRelease( pmin );
    hb_itemRelease( pmax );
  }
}
void QAbstract3DAxisSlots::titleChanged( const QString & newTitle )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "titleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACT3DAXIS" );
    PHB_ITEM pnewTitle = hb_itemPutC( NULL, QSTRINGTOSTRING(newTitle) );
    hb_vmEvalBlockV( cb, 2, psender, pnewTitle );
    hb_itemRelease( psender );
    hb_itemRelease( pnewTitle );
  }
}
void QAbstract3DAxisSlots::titleFixedChanged( bool fixed )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "titleFixedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACT3DAXIS" );
    PHB_ITEM pfixed = hb_itemPutL( NULL, fixed );
    hb_vmEvalBlockV( cb, 2, psender, pfixed );
    hb_itemRelease( psender );
    hb_itemRelease( pfixed );
  }
}
void QAbstract3DAxisSlots::titleVisibilityChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "titleVisibilityChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACT3DAXIS" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void QAbstract3DAxisSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QAbstract3DAxis * obj = (QAbstract3DAxis *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAbstract3DAxisSlots * s = QCoreApplication::instance()->findChild<QAbstract3DAxisSlots *>();

    if( s == NULL )
    {
      s = new QAbstract3DAxisSlots();
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
