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
REQUEST QPEN
REQUEST QPIESERIES
#endif

CLASS QPieSlice INHERIT QObject

   METHOD new
   METHOD delete
   METHOD label
   METHOD setLabel
   METHOD value
   METHOD setValue
   METHOD isLabelVisible
   METHOD setLabelVisible
   METHOD labelPosition
   METHOD setLabelPosition
   METHOD isExploded
   METHOD setExploded
   METHOD pen
   METHOD setPen
   METHOD borderColor
   METHOD setBorderColor
   METHOD borderWidth
   METHOD setBorderWidth
   METHOD brush
   METHOD setBrush
   METHOD color
   METHOD setColor
   METHOD labelBrush
   METHOD setLabelBrush
   METHOD labelColor
   METHOD setLabelColor
   METHOD labelFont
   METHOD setLabelFont
   METHOD labelArmLengthFactor
   METHOD setLabelArmLengthFactor
   METHOD explodeDistanceFactor
   METHOD setExplodeDistanceFactor
   METHOD percentage
   METHOD startAngle
   METHOD angleSpan
   METHOD series

   METHOD onAngleSpanChanged
   METHOD onBorderColorChanged
   METHOD onBorderWidthChanged
   METHOD onBrushChanged
   METHOD onClicked
   METHOD onColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onLabelBrushChanged
   METHOD onLabelChanged
   METHOD onLabelColorChanged
   METHOD onLabelFontChanged
   METHOD onLabelVisibleChanged
   METHOD onPenChanged
   METHOD onPercentageChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onStartAngleChanged
   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPieSlice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QPieSlice>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QPieSlice>
#endif
#endif

#include <QtCharts/QPieSeries>

using namespace QtCharts;

HB_FUNC_STATIC( QPIESLICE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    /*
    QPieSlice( QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    QPieSlice * obj = new QPieSlice( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else if( ISBETWEEN(2,3) && HB_ISCHAR(1) && HB_ISNUM(2) && (ISQOBJECT(3)||HB_ISNIL(3)) )
  {
    /*
    QPieSlice( QString label, qreal value, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    QPieSlice * obj = new QPieSlice( PQSTRING(1), PQREAL(2), OPQOBJECT(3,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QPieSlice();
*/
HB_FUNC_STATIC( QPIESLICE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString label() const
*/
HB_FUNC_STATIC( QPIESLICE_LABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->label() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLabel( QString label )
*/
HB_FUNC_STATIC( QPIESLICE_SETLABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setLabel( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
qreal value() const
*/
HB_FUNC_STATIC( QPIESLICE_VALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->value() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setValue( qreal value )
*/
HB_FUNC_STATIC( QPIESLICE_SETVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setValue( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isLabelVisible() const
*/
HB_FUNC_STATIC( QPIESLICE_ISLABELVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLabelVisible() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLabelVisible( bool visible = true )
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISLOG(1)||HB_ISNIL(1)) )
    {
#endif
      obj->setLabelVisible( OPBOOL(1,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QPieSlice::LabelPosition labelPosition()
*/
HB_FUNC_STATIC( QPIESLICE_LABELPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->labelPosition() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLabelPosition( QPieSlice::LabelPosition position )
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setLabelPosition( (QPieSlice::LabelPosition) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isExploded() const
*/
HB_FUNC_STATIC( QPIESLICE_ISEXPLODED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isExploded() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setExploded( bool exploded = true )
*/
HB_FUNC_STATIC( QPIESLICE_SETEXPLODED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISLOG(1)||HB_ISNIL(1)) )
    {
#endif
      obj->setExploded( OPBOOL(1,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QPen pen() const
*/
HB_FUNC_STATIC( QPIESLICE_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPen * ptr = new QPen( obj->pen() );
      Qt5xHb::createReturnClass(ptr, "QPEN", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setPen( const QPen & pen )
*/
HB_FUNC_STATIC( QPIESLICE_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QColor borderColor()
*/
HB_FUNC_STATIC( QPIESLICE_BORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->borderColor() );
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setBorderColor( QColor color )
*/
HB_FUNC_STATIC( QPIESLICE_SETBORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
#endif
      obj->setBorderColor( *PQCOLOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
int borderWidth()
*/
HB_FUNC_STATIC( QPIESLICE_BORDERWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->borderWidth() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setBorderWidth( int width )
*/
HB_FUNC_STATIC( QPIESLICE_SETBORDERWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setBorderWidth( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QPIESLICE_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->brush() );
      Qt5xHb::createReturnClass(ptr, "QBRUSH", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setBrush( const QBrush & brush )
*/
HB_FUNC_STATIC( QPIESLICE_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QColor color()
*/
HB_FUNC_STATIC( QPIESLICE_COLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->color() );
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setColor( QColor color )
*/
HB_FUNC_STATIC( QPIESLICE_SETCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
#endif
      obj->setColor( *PQCOLOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QBrush labelBrush() const
*/
HB_FUNC_STATIC( QPIESLICE_LABELBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->labelBrush() );
      Qt5xHb::createReturnClass(ptr, "QBRUSH", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLabelBrush( const QBrush & brush )
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setLabelBrush( *PQBRUSH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QColor labelColor()
*/
HB_FUNC_STATIC( QPIESLICE_LABELCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->labelColor() );
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLabelColor( QColor color )
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
#endif
      obj->setLabelColor( *PQCOLOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QFont labelFont() const
*/
HB_FUNC_STATIC( QPIESLICE_LABELFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->labelFont() );
      Qt5xHb::createReturnClass(ptr, "QFONT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLabelFont( const QFont & font )
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setLabelFont( *PQFONT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
qreal labelArmLengthFactor() const
*/
HB_FUNC_STATIC( QPIESLICE_LABELARMLENGTHFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->labelArmLengthFactor() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setLabelArmLengthFactor( qreal factor )
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELARMLENGTHFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setLabelArmLengthFactor( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
qreal explodeDistanceFactor() const
*/
HB_FUNC_STATIC( QPIESLICE_EXPLODEDISTANCEFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->explodeDistanceFactor() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setExplodeDistanceFactor( qreal factor )
*/
HB_FUNC_STATIC( QPIESLICE_SETEXPLODEDISTANCEFACTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setExplodeDistanceFactor( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
qreal percentage() const
*/
HB_FUNC_STATIC( QPIESLICE_PERCENTAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->percentage() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
qreal startAngle() const
*/
HB_FUNC_STATIC( QPIESLICE_STARTANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->startAngle() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
qreal angleSpan() const
*/
HB_FUNC_STATIC( QPIESLICE_ANGLESPAN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->angleSpan() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QPieSeries * series() const
*/
HB_FUNC_STATIC( QPIESLICE_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSlice * obj = (QPieSlice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPieSeries * ptr = obj->series();
      Qt5xHb::createReturnQObjectClass( ptr, "QPIESERIES" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

void QPieSliceSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QPIESLICE_ONANGLESPANCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "angleSpanChanged()", "angleSpanChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONBORDERCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "borderColorChanged()", "borderColorChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONBORDERWIDTHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "borderWidthChanged()", "borderWidthChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "brushChanged()", "brushChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "clicked()", "clicked()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "colorChanged()", "colorChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "doubleClicked()", "doubleClicked()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "hovered(bool)", "hovered(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONLABELBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "labelBrushChanged()", "labelBrushChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONLABELCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "labelChanged()", "labelChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONLABELCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "labelColorChanged()", "labelColorChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONLABELFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "labelFontChanged()", "labelFontChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONLABELVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "labelVisibleChanged()", "labelVisibleChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "penChanged()", "penChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONPERCENTAGECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "percentageChanged()", "percentageChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "pressed()", "pressed()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "released()", "released()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONSTARTANGLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "startAngleChanged()", "startAngleChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QPIESLICE_ONVALUECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSliceSlots_connect_signal( "valueChanged()", "valueChanged()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
