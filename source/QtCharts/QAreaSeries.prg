/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
REQUEST QFONT
REQUEST QLINESERIES
REQUEST QPEN
#endif

CLASS QAreaSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete
   METHOD upperSeries
   METHOD lowerSeries
   METHOD color
   METHOD setColor
   METHOD borderColor
   METHOD setBorderColor
   METHOD pointLabelsFormat
   METHOD setPointLabelsFormat
   METHOD pointLabelsVisible
   METHOD setPointLabelsVisible
   METHOD pointLabelsFont
   METHOD setPointLabelsFont
   METHOD pointLabelsColor
   METHOD setPointLabelsColor
   METHOD pointLabelsClipping
   METHOD setPointLabelsClipping
   METHOD type
   METHOD setUpperSeries
   METHOD setLowerSeries
   METHOD setPen
   METHOD pen
   METHOD setBrush
   METHOD brush
   METHOD setPointsVisible
   METHOD pointsVisible

   METHOD onBorderColorChanged
   METHOD onClicked
   METHOD onColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPointLabelsClippingChanged
   METHOD onPointLabelsColorChanged
   METHOD onPointLabelsFontChanged
   METHOD onPointLabelsFormatChanged
   METHOD onPointLabelsVisibilityChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onSelected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAreaSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QAreaSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QAreaSeries>
#endif
#endif

#include <QtCharts/QLineSeries>

using namespace QtCharts;

/*
QAreaSeries( QObject * parent = nullptr )
*/
void QAreaSeries_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = new QAreaSeries( OPQOBJECT(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
QAreaSeries( QLineSeries * upperSeries, QLineSeries * lowerSeries = nullptr )
*/
void QAreaSeries_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = new QAreaSeries( PQLINESERIES(1), OPQLINESERIES(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QAreaSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQLINESERIES(1) && (ISQLINESERIES(2)||HB_ISNIL(2)) )
  {
    QAreaSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QAreaSeries()
*/
HB_FUNC_STATIC( QAREASERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QLineSeries * upperSeries() const
*/
HB_FUNC_STATIC( QAREASERIES_UPPERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLineSeries * ptr = obj->upperSeries();
      Qt5xHb::createReturnQObjectClass( ptr, "QLINESERIES" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QLineSeries * lowerSeries() const
*/
HB_FUNC_STATIC( QAREASERIES_LOWERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLineSeries * ptr = obj->lowerSeries();
      Qt5xHb::createReturnQObjectClass( ptr, "QLINESERIES" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QColor color() const
*/
HB_FUNC_STATIC( QAREASERIES_COLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->color() );
      Qt5xHb::createReturnClass( ptr, "QCOLOR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setColor( const QColor & color )
*/
HB_FUNC_STATIC( QAREASERIES_SETCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||HB_ISCHAR(1)) )
    {
#endif
      obj->setColor( HB_ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QColor borderColor() const
*/
HB_FUNC_STATIC( QAREASERIES_BORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->borderColor() );
      Qt5xHb::createReturnClass( ptr, "QCOLOR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setBorderColor( const QColor & color )
*/
HB_FUNC_STATIC( QAREASERIES_SETBORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||HB_ISCHAR(1)) )
    {
#endif
      obj->setBorderColor( HB_ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString pointLabelsFormat() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->pointLabelsFormat() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointLabelsFormat( const QString & format )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setPointLabelsFormat( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool pointLabelsVisible() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->pointLabelsVisible() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointLabelsVisible( bool visible = true )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISLOG(1)||HB_ISNIL(1)) )
    {
#endif
      obj->setPointLabelsVisible( OPBOOL(1,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QFont pointLabelsFont() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->pointLabelsFont() );
      Qt5xHb::createReturnClass( ptr, "QFONT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointLabelsFont( const QFont & font )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setPointLabelsFont( *PQFONT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QColor pointLabelsColor() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->pointLabelsColor() );
      Qt5xHb::createReturnClass( ptr, "QCOLOR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointLabelsColor( const QColor & color )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||HB_ISCHAR(1)) )
    {
#endif
      obj->setPointLabelsColor( HB_ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool pointLabelsClipping() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTLABELSCLIPPING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->pointLabelsClipping() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointLabelsClipping( bool enabled = true )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTLABELSCLIPPING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISLOG(1)||HB_ISNIL(1)) )
    {
#endif
      obj->setPointLabelsClipping( OPBOOL(1,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QAbstractSeries::SeriesType type() const
*/
HB_FUNC_STATIC( QAREASERIES_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setUpperSeries( QLineSeries * series )
*/
HB_FUNC_STATIC( QAREASERIES_SETUPPERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLINESERIES(1) )
    {
#endif
      obj->setUpperSeries( PQLINESERIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setLowerSeries( QLineSeries * series )
*/
HB_FUNC_STATIC( QAREASERIES_SETLOWERSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLINESERIES(1) )
    {
#endif
      obj->setLowerSeries( PQLINESERIES(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setPen( const QPen & pen )
*/
HB_FUNC_STATIC( QAREASERIES_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
#endif
      obj->setPen( *PQPEN(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QPen pen() const
*/
HB_FUNC_STATIC( QAREASERIES_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPen * ptr = new QPen( obj->pen() );
      Qt5xHb::createReturnClass( ptr, "QPEN", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setBrush( const QBrush & brush )
*/
HB_FUNC_STATIC( QAREASERIES_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setBrush( *PQBRUSH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QAREASERIES_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->brush() );
      Qt5xHb::createReturnClass( ptr, "QBRUSH", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointsVisible( bool visible = true )
*/
HB_FUNC_STATIC( QAREASERIES_SETPOINTSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISLOG(1)||HB_ISNIL(1)) )
    {
#endif
      obj->setPointsVisible( OPBOOL(1,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool pointsVisible() const
*/
HB_FUNC_STATIC( QAREASERIES_POINTSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeries * obj = (QAreaSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->pointsVisible() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

void QAreaSeriesSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QAREASERIES_ONBORDERCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "borderColorChanged(QColor)", "borderColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "clicked(QPointF)", "clicked(QPointF)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "colorChanged(QColor)", "colorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "doubleClicked(QPointF)", "doubleClicked(QPointF)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "hovered(QPointF,bool)", "hovered(QPointF,bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSCLIPPINGCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pointLabelsClippingChanged(bool)", "pointLabelsClippingChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pointLabelsColorChanged(QColor)", "pointLabelsColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pointLabelsFontChanged(QFont)", "pointLabelsFontChanged(QFont)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSFORMATCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pointLabelsFormatChanged(QString)", "pointLabelsFormatChanged(QString)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPOINTLABELSVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pointLabelsVisibilityChanged(bool)", "pointLabelsVisibilityChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "pressed(QPointF)", "pressed(QPointF)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "released(QPointF)", "released(QPointF)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QAREASERIES_ONSELECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAreaSeriesSlots_connect_signal( "selected()", "selected()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
