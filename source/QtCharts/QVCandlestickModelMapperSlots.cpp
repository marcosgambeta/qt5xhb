/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVCandlestickModelMapperSlots.h"

static SlotsQVCandlestickModelMapper * s = NULL;

SlotsQVCandlestickModelMapper::SlotsQVCandlestickModelMapper(QObject *parent) : QObject(parent)
{
}

SlotsQVCandlestickModelMapper::~SlotsQVCandlestickModelMapper()
{
}
void SlotsQVCandlestickModelMapper::closeRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "closeRowChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVCandlestickModelMapper::firstSetColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "firstSetColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVCandlestickModelMapper::highRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "highRowChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVCandlestickModelMapper::lastSetColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lastSetColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVCandlestickModelMapper::lowRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lowRowChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVCandlestickModelMapper::openRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "openRowChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQVCandlestickModelMapper::timestampRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "timestampRowChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QVCANDLESTICKMODELMAPPER_ONCLOSEROWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVCandlestickModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "closeRowChanged()", "closeRowChanged()" ) );
}

HB_FUNC( QVCANDLESTICKMODELMAPPER_ONFIRSTSETCOLUMNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVCandlestickModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "firstSetColumnChanged()", "firstSetColumnChanged()" ) );
}

HB_FUNC( QVCANDLESTICKMODELMAPPER_ONHIGHROWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVCandlestickModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "highRowChanged()", "highRowChanged()" ) );
}

HB_FUNC( QVCANDLESTICKMODELMAPPER_ONLASTSETCOLUMNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVCandlestickModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "lastSetColumnChanged()", "lastSetColumnChanged()" ) );
}

HB_FUNC( QVCANDLESTICKMODELMAPPER_ONLOWROWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVCandlestickModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "lowRowChanged()", "lowRowChanged()" ) );
}

HB_FUNC( QVCANDLESTICKMODELMAPPER_ONOPENROWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVCandlestickModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "openRowChanged()", "openRowChanged()" ) );
}

HB_FUNC( QVCANDLESTICKMODELMAPPER_ONTIMESTAMPROWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVCandlestickModelMapper( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "timestampRowChanged()", "timestampRowChanged()" ) );
}
