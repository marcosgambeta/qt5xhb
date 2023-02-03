/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QEventLoop INHERIT QObject

   METHOD new
   METHOD delete
   METHOD exec
   METHOD exit
   METHOD isRunning
   METHOD processEvents
   METHOD wakeUp
   METHOD quit

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QEventLoop
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QEventLoop>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QEventLoop>
#endif

/*
QEventLoop( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QEVENTLOOP_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QEventLoop * obj = new QEventLoop( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QEVENTLOOP_DELETE )
{
  QEventLoop * obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

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
int exec( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXEC )
{
  QEventLoop * obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      RINT( obj->exec( HB_ISNIL(1)? (QEventLoop::ProcessEventsFlags) QEventLoop::AllEvents : (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
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
void exit( int returnCode = 0 )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXIT )
{
  QEventLoop * obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      obj->exit( OPINT(1,0) );
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
bool isRunning() const
*/
HB_FUNC_STATIC( QEVENTLOOP_ISRUNNING )
{
  QEventLoop * obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRunning() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && ( HB_ISNUM(1)||HB_ISNIL(1)) )
  {
    /*
    bool processEvents( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
    */
    QEventLoop * obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->processEvents( HB_ISNIL(1)? (QEventLoop::ProcessEventsFlags) QEventLoop::AllEvents : (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
    }
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void processEvents( QEventLoop::ProcessEventsFlags flags, int maxTime )
    */
    QEventLoop * obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->processEvents( (QEventLoop::ProcessEventsFlags) hb_parni(1), PINT(2) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void wakeUp()
*/
HB_FUNC_STATIC( QEVENTLOOP_WAKEUP )
{
  QEventLoop * obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->wakeUp();
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
void quit()
*/
HB_FUNC_STATIC( QEVENTLOOP_QUIT )
{
  QEventLoop * obj = (QEventLoop *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->quit();
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
