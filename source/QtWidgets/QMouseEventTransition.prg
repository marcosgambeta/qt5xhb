/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTERPATH
#endif

CLASS QMouseEventTransition INHERIT QEventTransition

   METHOD new
   METHOD delete
   METHOD button
   METHOD hitTestPath
   METHOD modifierMask
   METHOD setButton
   METHOD setHitTestPath
   METHOD setModifierMask

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMouseEventTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QMouseEventTransition>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QMouseEventTransition>
#endif

#include <QtGui/QPainterPath>

HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||HB_ISNIL(1)) )
  {
    /*
    QMouseEventTransition( QState * sourceState = 0 )
    */
    QMouseEventTransition * obj = new QMouseEventTransition( OPQSTATE(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(3,4) && ISQOBJECT(1) && HB_ISNUM(2) && HB_ISNUM(3) && (ISQSTATE(4)||HB_ISNIL(4)) )
  {
    /*
    QMouseEventTransition( QObject * object, QEvent::Type type, Qt::MouseButton button, QState * sourceState = 0 )
    */
    QMouseEventTransition * obj = new QMouseEventTransition( PQOBJECT(1), (QEvent::Type) hb_parni(2), (Qt::MouseButton) hb_parni(3), OPQSTATE(4,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_DELETE )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::MouseButton button() const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_BUTTON )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->button() );
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
QPainterPath hitTestPath() const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_HITTESTPATH )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPainterPath * ptr = new QPainterPath( obj->hitTestPath() );
      Qt5xHb::createReturnClass(ptr, "QPAINTERPATH", true);
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
Qt::KeyboardModifiers modifierMask() const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_MODIFIERMASK )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->modifierMask() );
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
void setButton( Qt::MouseButton button )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETBUTTON )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setButton( (Qt::MouseButton) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setHitTestPath( const QPainterPath & path )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETHITTESTPATH )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
    {
#endif
      obj->setHitTestPath( *PQPAINTERPATH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setModifierMask( Qt::KeyboardModifiers modifierMask )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETMODIFIERMASK )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setModifierMask( (Qt::KeyboardModifiers) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
