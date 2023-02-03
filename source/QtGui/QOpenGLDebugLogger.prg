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

CLASS QOpenGLDebugLogger INHERIT QObject

   METHOD new
   METHOD delete
   METHOD initialize
   METHOD isLogging
   METHOD loggingMode
   METHOD maximumMessageLength
   METHOD pushGroup
   METHOD popGroup
   METHOD logMessage
   METHOD startLogging
   METHOD stopLogging

   METHOD onMessageLogged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QOpenGLDebugLogger
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QOpenGLDebugLogger>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QOpenGLDebugLogger>
#endif

/*
QOpenGLDebugLogger( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QOpenGLDebugLogger * obj = new QOpenGLDebugLogger( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_DELETE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool initialize()
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_INITIALIZE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->initialize() );
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
bool isLogging() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_ISLOGGING )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLogging() );
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
QOpenGLDebugLogger::LoggingMode loggingMode() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_LOGGINGMODE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->loggingMode() );
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
qint64 maximumMessageLength() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_MAXIMUMMESSAGELENGTH )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->maximumMessageLength() );
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
void pushGroup( const QString & name, GLuint id = 0, QOpenGLDebugMessage::Source source = QOpenGLDebugMessage::ApplicationSource )
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_PUSHGROUP )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && HB_ISCHAR(1) && (HB_ISNUM(2)||HB_ISNIL(2)) && (HB_ISNUM(3)||HB_ISNIL(3)) )
    {
#endif
      obj->pushGroup( PQSTRING(1), OPGLUINT(2,0), HB_ISNIL(3)? (QOpenGLDebugMessage::Source) QOpenGLDebugMessage::ApplicationSource : (QOpenGLDebugMessage::Source) hb_parni(3) );
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
void popGroup()
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_POPGROUP )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->popGroup();
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
void logMessage( const QOpenGLDebugMessage & debugMessage )
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_LOGMESSAGE )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOPENGLDEBUGMESSAGE(1) )
    {
#endif
      obj->logMessage( *PQOPENGLDEBUGMESSAGE(1) );
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
void startLogging( QOpenGLDebugLogger::LoggingMode loggingMode = QOpenGLDebugLogger::AsynchronousLogging )
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_STARTLOGGING )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      obj->startLogging( HB_ISNIL(1)? (QOpenGLDebugLogger::LoggingMode) QOpenGLDebugLogger::AsynchronousLogging : (QOpenGLDebugLogger::LoggingMode) hb_parni(1) );
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
void stopLogging()
*/
HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_STOPLOGGING )
{
  QOpenGLDebugLogger * obj = (QOpenGLDebugLogger *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stopLogging();
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

void QOpenGLDebugLoggerSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QOPENGLDEBUGLOGGER_ONMESSAGELOGGED )
{
  QOpenGLDebugLoggerSlots_connect_signal("messageLogged(QOpenGLDebugMessage)", "messageLogged(QOpenGLDebugMessage)");
}

#pragma ENDDUMP
