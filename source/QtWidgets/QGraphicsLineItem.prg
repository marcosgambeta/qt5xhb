/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLINEF
REQUEST QPAINTERPATH
REQUEST QPEN
REQUEST QRECTF
#endif

CLASS QGraphicsLineItem INHERIT QGraphicsItem

   METHOD new
   METHOD delete
   METHOD line
   METHOD pen
   METHOD setLine
   METHOD setPen
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsLineItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsLineItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsLineItem>
#endif

#include <QtGui/QPen>

/*
QGraphicsLineItem ( QGraphicsItem * parent = 0 )
*/
void QGraphicsLineItem_new1 ()
{
  QGraphicsLineItem * o = new QGraphicsLineItem ( ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QGraphicsLineItem ( const QLineF & line, QGraphicsItem * parent = 0 )
*/
void QGraphicsLineItem_new2 ()
{
  QGraphicsLineItem * o = new QGraphicsLineItem ( *PQLINEF(1), ISNIL(2)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(2) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QGraphicsLineItem ( qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem * parent = 0 )
*/
void QGraphicsLineItem_new3 ()
{
  QGraphicsLineItem * o = new QGraphicsLineItem ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), ISNIL(5)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(5) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QGraphicsLineItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsLineItem ( const QLineF & line, QGraphicsItem * parent = 0 )
//[3]QGraphicsLineItem ( qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSLINEITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsLineItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQLINEF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsLineItem_new2();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQGRAPHICSITEM(5)||ISNIL(5)) )
  {
    QGraphicsLineItem_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSLINEITEM_DELETE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
QLineF line () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_LINE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLineF * ptr = new QLineF( obj->line () );
      _qt5xhb_createReturnClass ( ptr, "QLINEF", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPen pen () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_PEN )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPen * ptr = new QPen( obj->pen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setLine ( const QLineF & line )
*/
void QGraphicsLineItem_setLine1 ()
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setLine ( *PQLINEF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLine ( qreal x1, qreal y1, qreal x2, qreal y2 )
*/
void QGraphicsLineItem_setLine2 ()
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setLine ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setLine ( const QLineF & line )
//[2]void setLine ( qreal x1, qreal y1, qreal x2, qreal y2 )

HB_FUNC_STATIC( QGRAPHICSLINEITEM_SETLINE )
{
  if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    QGraphicsLineItem_setLine1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsLineItem_setLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPen ( const QPen & pen )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_SETPEN )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
#endif
      obj->setPen ( *PQPEN(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_BOUNDINGRECT )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRectF * ptr = new QRectF( obj->boundingRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_CONTAINS )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
#endif
      RBOOL( obj->contains ( *PQPOINTF(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_ISOBSCUREDBY )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGRAPHICSITEM(1) )
    {
#endif
      RBOOL( obj->isObscuredBy ( PQGRAPHICSITEM(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_OPAQUEAREA )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
      _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_PAINT )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      obj->paint ( PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_SHAPE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPainterPath * ptr = new QPainterPath( obj->shape () );
      _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_TYPE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->type () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
