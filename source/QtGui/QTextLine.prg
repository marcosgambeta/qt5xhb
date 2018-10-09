/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QRECTF
#endif

CLASS QTextLine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD rect
   METHOD x
   METHOD y
   METHOD width
   METHOD ascent
   METHOD descent
   METHOD height
   METHOD leading
   METHOD setLeadingIncluded
   METHOD leadingIncluded
   METHOD naturalTextWidth
   METHOD horizontalAdvance
   METHOD naturalTextRect
   METHOD cursorToX
   METHOD xToCursor
   METHOD setLineWidth
   METHOD setNumColumns
   METHOD setPosition
   METHOD position
   METHOD textStart
   METHOD textLength
   METHOD lineNumber

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextLine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextLine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextLine>
#endif

/*
QTextLine()
*/
HB_FUNC_STATIC( QTEXTLINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextLine * o = new QTextLine ();
    _qt5xhb_returnNewObject( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTLINE_DELETE )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTLINE_ISVALID )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRectF rect() const
*/
HB_FUNC_STATIC( QTEXTLINE_RECT )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRectF * ptr = new QRectF( obj->rect () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal x() const
*/
HB_FUNC_STATIC( QTEXTLINE_X )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->x () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal y() const
*/
HB_FUNC_STATIC( QTEXTLINE_Y )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->y () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal width() const
*/
HB_FUNC_STATIC( QTEXTLINE_WIDTH )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->width () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal ascent() const
*/
HB_FUNC_STATIC( QTEXTLINE_ASCENT )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->ascent () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal descent() const
*/
HB_FUNC_STATIC( QTEXTLINE_DESCENT )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->descent () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal height() const
*/
HB_FUNC_STATIC( QTEXTLINE_HEIGHT )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->height () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal leading() const
*/
HB_FUNC_STATIC( QTEXTLINE_LEADING )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->leading () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLeadingIncluded(bool included)
*/
HB_FUNC_STATIC( QTEXTLINE_SETLEADINGINCLUDED )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setLeadingIncluded ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool leadingIncluded() const
*/
HB_FUNC_STATIC( QTEXTLINE_LEADINGINCLUDED )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->leadingIncluded () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal naturalTextWidth() const
*/
HB_FUNC_STATIC( QTEXTLINE_NATURALTEXTWIDTH )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->naturalTextWidth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal horizontalAdvance() const
*/
HB_FUNC_STATIC( QTEXTLINE_HORIZONTALADVANCE )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->horizontalAdvance () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRectF naturalTextRect() const
*/
HB_FUNC_STATIC( QTEXTLINE_NATURALTEXTRECT )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRectF * ptr = new QRectF( obj->naturalTextRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal cursorToX(int *cursorPos, Edge edge = Leading) const
*/
void QTextLine_cursorToX1 ()
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
       int par1;
      RQREAL( obj->cursorToX ( &par1, ISNIL(2)? (QTextLine::Edge) QTextLine::Leading : (QTextLine::Edge) hb_parni(2) ) );
       hb_storni( par1, 1 );
  }
}

/*
qreal cursorToX(int cursorPos, Edge edge = Leading) const
*/
void QTextLine_cursorToX2 ()
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RQREAL( obj->cursorToX ( PINT(1), ISNIL(2)? (QTextLine::Edge) QTextLine::Leading : (QTextLine::Edge) hb_parni(2) ) );
  }
}

//[1]qreal cursorToX(int *cursorPos, Edge edge = Leading) const
//[2]qreal cursorToX(int cursorPos, Edge edge = Leading) const

HB_FUNC_STATIC( QTEXTLINE_CURSORTOX )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QTextLine_cursorToX1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QTextLine_cursorToX2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int xToCursor(qreal x, CursorPosition = CursorBetweenCharacters) const
*/
HB_FUNC_STATIC( QTEXTLINE_XTOCURSOR )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
      RINT( obj->xToCursor ( PQREAL(1), ISNIL(2)? (QTextLine::CursorPosition) QTextLine::CursorBetweenCharacters : (QTextLine::CursorPosition) hb_parni(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLineWidth(qreal width)
*/
HB_FUNC_STATIC( QTEXTLINE_SETLINEWIDTH )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLineWidth ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNumColumns(int columns)
*/
void QTextLine_setNumColumns1 ()
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setNumColumns ( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNumColumns(int columns, qreal alignmentWidth)
*/
void QTextLine_setNumColumns2 ()
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setNumColumns ( PINT(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setNumColumns(int columns)
//[2]void setNumColumns(int columns, qreal alignmentWidth)

HB_FUNC_STATIC( QTEXTLINE_SETNUMCOLUMNS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextLine_setNumColumns1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextLine_setNumColumns2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPosition(const QPointF &pos)
*/
HB_FUNC_STATIC( QTEXTLINE_SETPOSITION )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
      obj->setPosition ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPointF position() const
*/
HB_FUNC_STATIC( QTEXTLINE_POSITION )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPointF * ptr = new QPointF( obj->position () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int textStart() const
*/
HB_FUNC_STATIC( QTEXTLINE_TEXTSTART )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->textStart () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int textLength() const
*/
HB_FUNC_STATIC( QTEXTLINE_TEXTLENGTH )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->textLength () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int lineNumber() const
*/
HB_FUNC_STATIC( QTEXTLINE_LINENUMBER )
{
  QTextLine * obj = (QTextLine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lineNumber () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void draw(QPainter *p, const QPointF &point, const QTextLayout::FormatRange *selection = 0) const
*/

HB_FUNC_STATIC( QTEXTLINE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTLINE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTLINE_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLINE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTLINE_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLINE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTLINE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
