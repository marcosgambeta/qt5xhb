/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QScatterSeriesSlots.h"

static SlotsQScatterSeries * s = NULL;

SlotsQScatterSeries::SlotsQScatterSeries(QObject *parent) : QObject(parent)
{
}

SlotsQScatterSeries::~SlotsQScatterSeries()
{
}
void SlotsQScatterSeries::borderColorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "borderColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
void SlotsQScatterSeries::colorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
void SlotsQScatterSeries::markerShapeChanged( QScatterSeries::MarkerShape shape )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "markerShapeChanged(QScatterSeries::MarkerShape)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pshape = hb_itemPutNI( NULL, (int) shape );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pshape );
    hb_itemRelease( psender );
    hb_itemRelease( pshape );
  }
}
void SlotsQScatterSeries::markerSizeChanged( qreal size )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "markerSizeChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psize = hb_itemPutND( NULL, size );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psize );
    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}

HB_FUNC( QSCATTERSERIES_ONBORDERCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScatterSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "borderColorChanged(QColor)", "borderColorChanged(QColor)" ) );
}

HB_FUNC( QSCATTERSERIES_ONCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScatterSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "colorChanged(QColor)", "colorChanged(QColor)" ) );
}

HB_FUNC( QSCATTERSERIES_ONMARKERSHAPECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScatterSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "markerShapeChanged(QScatterSeries::MarkerShape)", "markerShapeChanged(QScatterSeries::MarkerShape)" ) );
}

HB_FUNC( QSCATTERSERIES_ONMARKERSIZECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQScatterSeries( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "markerSizeChanged(qreal)", "markerSizeChanged(qreal)" ) );
}
