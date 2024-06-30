/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QNativeGestureEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD gestureType
   METHOD value
   METHOD pos
   METHOD globalPos
   METHOD localPos
   METHOD windowPos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNativeGestureEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QNativeGestureEvent>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QNativeGestureEvent>
#endif

/*
QNativeGestureEvent( Qt::NativeGestureType type, const QPointF & localPos, const QPointF & windowPos, const QPointF & screenPos, qreal value, ulong sequenceId, quint64 intArgument )
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_NEW )
{
  if( ISNUMPAR(7) && HB_ISNUM(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) && HB_ISNUM(5) && HB_ISNUM(6) && HB_ISNUM(7) )
  {
    QNativeGestureEvent * obj = new QNativeGestureEvent( (Qt::NativeGestureType) hb_parni(1), *PQPOINTF(2), *PQPOINTF(3), *PQPOINTF(4), PQREAL(5), PULONG(6), PQUINT64(7) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QNATIVEGESTUREEVENT_DELETE )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::NativeGestureType gestureType() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_GESTURETYPE )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->gestureType() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal value() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_VALUE )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
}

/*
const QPoint pos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_POS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPoint * ptr = new QPoint( obj->pos() );
      Qt5xHb::createReturnClass(ptr, "QPOINT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
const QPoint globalPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_GLOBALPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPoint * ptr = new QPoint( obj->globalPos() );
      Qt5xHb::createReturnClass(ptr, "QPOINT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
const QPointF & localPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_LOCALPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPointF * ptr = &obj->localPos();
      Qt5xHb::createReturnClass(ptr, "QPOINTF", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
const QPointF & windowPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_WINDOWPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPointF * ptr = &obj->windowPos();
      Qt5xHb::createReturnClass(ptr, "QPOINTF", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
const QPointF & screenPos() const
*/
HB_FUNC_STATIC( QNATIVEGESTUREEVENT_SCREENPOS )
{
  QNativeGestureEvent * obj = (QNativeGestureEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPointF * ptr = &obj->screenPos();
      Qt5xHb::createReturnClass(ptr, "QPOINTF", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
