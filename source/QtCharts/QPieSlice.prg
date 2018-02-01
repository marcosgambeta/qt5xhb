/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QPieSlice INHERIT QObject

   METHOD new
   METHOD delete

   METHOD angleSpan
   METHOD borderColor
   METHOD borderWidth
   METHOD brush
   METHOD color
   METHOD explodeDistanceFactor
   METHOD isExploded
   METHOD isLabelVisible
   METHOD label
   METHOD labelArmLengthFactor
   METHOD labelBrush
   METHOD labelColor
   METHOD labelFont
   METHOD labelPosition
   METHOD pen
   METHOD percentage
   METHOD series
   METHOD setBorderColor
   METHOD setBorderWidth
   METHOD setBrush
   METHOD setColor
   METHOD setExploded
   METHOD setExplodeDistanceFactor
   METHOD setLabel
   METHOD setLabelArmLengthFactor
   METHOD setLabelBrush
   METHOD setLabelColor
   METHOD setLabelFont
   METHOD setLabelPosition
   METHOD setLabelVisible
   METHOD setPen
   METHOD setValue
   METHOD startAngle
   METHOD value

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

PROCEDURE destroyObject () CLASS QPieSlice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPieSlice>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPieSlice>
#endif

#include <QPieSeries>

using namespace QtCharts;

/*
explicit QPieSlice(QObject *parent = Q_NULLPTR)
*/
void QPieSlice_new1 ()
{
  QPieSlice * o = new QPieSlice ( OPQOBJECT(1,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QPieSlice(QString label, qreal value, QObject *parent = Q_NULLPTR)
*/
void QPieSlice_new2 ()
{
  QPieSlice * o = new QPieSlice ( PQSTRING(1), PQREAL(2), OPQOBJECT(3,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QPieSlice(QObject *parent = Q_NULLPTR)
//[2]QPieSlice(QString label, qreal value, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QPIESLICE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QPieSlice_new1();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QPieSlice_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QPieSlice();
*/
HB_FUNC_STATIC( QPIESLICE_DELETE )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString label() const
*/
HB_FUNC_STATIC( QPIESLICE_LABEL )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->label () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLabel(QString label)
*/
HB_FUNC_STATIC( QPIESLICE_SETLABEL )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setLabel ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal value() const
*/
HB_FUNC_STATIC( QPIESLICE_VALUE )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->value () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setValue(qreal value)
*/
HB_FUNC_STATIC( QPIESLICE_SETVALUE )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setValue ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isLabelVisible() const
*/
HB_FUNC_STATIC( QPIESLICE_ISLABELVISIBLE )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isLabelVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLabelVisible(bool visible = true)
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELVISIBLE )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setLabelVisible ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
LabelPosition labelPosition()
*/
HB_FUNC_STATIC( QPIESLICE_LABELPOSITION )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->labelPosition () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLabelPosition(LabelPosition position)
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELPOSITION )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLabelPosition ( (QPieSlice::LabelPosition) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isExploded() const
*/
HB_FUNC_STATIC( QPIESLICE_ISEXPLODED )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isExploded () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setExploded(bool exploded = true)
*/
HB_FUNC_STATIC( QPIESLICE_SETEXPLODED )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setExploded ( OPBOOL(1,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPen pen() const
*/
HB_FUNC_STATIC( QPIESLICE_PEN )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPen * ptr = new QPen( obj->pen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QPIESLICE_SETPEN )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setPen ( *PQPEN(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor borderColor()
*/
HB_FUNC_STATIC( QPIESLICE_BORDERCOLOR )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->borderColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBorderColor(QColor color)
*/
HB_FUNC_STATIC( QPIESLICE_SETBORDERCOLOR )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->setBorderColor ( *PQCOLOR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int borderWidth()
*/
HB_FUNC_STATIC( QPIESLICE_BORDERWIDTH )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->borderWidth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBorderWidth(int width)
*/
HB_FUNC_STATIC( QPIESLICE_SETBORDERWIDTH )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setBorderWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QPIESLICE_BRUSH )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->brush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QPIESLICE_SETBRUSH )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor color()
*/
HB_FUNC_STATIC( QPIESLICE_COLOR )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->color () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setColor(QColor color)
*/
HB_FUNC_STATIC( QPIESLICE_SETCOLOR )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->setColor ( *PQCOLOR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBrush labelBrush() const
*/
HB_FUNC_STATIC( QPIESLICE_LABELBRUSH )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->labelBrush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLabelBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELBRUSH )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setLabelBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor labelColor()
*/
HB_FUNC_STATIC( QPIESLICE_LABELCOLOR )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->labelColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLabelColor(QColor color)
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELCOLOR )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->setLabelColor ( *PQCOLOR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont labelFont() const
*/
HB_FUNC_STATIC( QPIESLICE_LABELFONT )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->labelFont () );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLabelFont(const QFont &font)
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELFONT )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->setLabelFont ( *PQFONT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal labelArmLengthFactor() const
*/
HB_FUNC_STATIC( QPIESLICE_LABELARMLENGTHFACTOR )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->labelArmLengthFactor () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLabelArmLengthFactor(qreal factor)
*/
HB_FUNC_STATIC( QPIESLICE_SETLABELARMLENGTHFACTOR )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLabelArmLengthFactor ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal explodeDistanceFactor() const
*/
HB_FUNC_STATIC( QPIESLICE_EXPLODEDISTANCEFACTOR )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->explodeDistanceFactor () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setExplodeDistanceFactor(qreal factor)
*/
HB_FUNC_STATIC( QPIESLICE_SETEXPLODEDISTANCEFACTOR )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setExplodeDistanceFactor ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal percentage() const
*/
HB_FUNC_STATIC( QPIESLICE_PERCENTAGE )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->percentage () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal startAngle() const
*/
HB_FUNC_STATIC( QPIESLICE_STARTANGLE )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->startAngle () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal angleSpan() const
*/
HB_FUNC_STATIC( QPIESLICE_ANGLESPAN )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->angleSpan () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPieSeries *series() const
*/
HB_FUNC_STATIC( QPIESLICE_SERIES )
{
  QPieSlice * obj = (QPieSlice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPieSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QPIESERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP