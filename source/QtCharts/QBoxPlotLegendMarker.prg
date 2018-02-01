/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QBoxPlotLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete

   METHOD series
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBoxPlotLegendMarker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QBoxPlotLegendMarker>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBoxPlotLegendMarker>
#endif

using namespace QtCharts;

/*
explicit QBoxPlotLegendMarker(QBoxPlotSeries *series, QLegend *legend, QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QBOXPLOTLEGENDMARKER_NEW )
{
  if( ISBETWEEN(2,3) && ISQBOXPLOTSERIES(1) && ISQLEGEND(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QBoxPlotLegendMarker * o = new QBoxPlotLegendMarker ( PQBOXPLOTSERIES(1), PQLEGEND(2), OPQOBJECT(3,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QBoxPlotLegendMarker(QBoxPlotLegendMarkerPrivate &d, QObject *parent = Q_NULLPTR) (protected)
*/

/*
virtual ~QBoxPlotLegendMarker()
*/
HB_FUNC_STATIC( QBOXPLOTLEGENDMARKER_DELETE )
{
  QBoxPlotLegendMarker * obj = (QBoxPlotLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual LegendMarkerType type()
*/
HB_FUNC_STATIC( QBOXPLOTLEGENDMARKER_TYPE )
{
  QBoxPlotLegendMarker * obj = (QBoxPlotLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QBoxPlotSeries* series()
*/
HB_FUNC_STATIC( QBOXPLOTLEGENDMARKER_SERIES )
{
  QBoxPlotLegendMarker * obj = (QBoxPlotLegendMarker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBoxPlotSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QBOXPLOTSERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP