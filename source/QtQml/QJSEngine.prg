/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSVALUE
#endif

CLASS QJSEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD collectGarbage
   METHOD evaluate
   METHOD globalObject
   METHOD newArray
   METHOD newObject
   METHOD newQObject

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QJSEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQml/QJSEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtQml/QJSEngine>
#endif

/*
QJSEngine()
*/
void QJSEngine_new1()
{
  QJSEngine * obj = new QJSEngine();
  Qt5xHb::returnNewObject( obj, false );
}

/*
QJSEngine(QObject * parent)
*/
void QJSEngine_new2()
{
  QJSEngine * obj = new QJSEngine( PQOBJECT(1) );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QJSENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJSEngine_new1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QJSEngine_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSENGINE_DELETE )
{
  QJSEngine * obj = (QJSEngine *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
void collectGarbage()
*/
HB_FUNC_STATIC( QJSENGINE_COLLECTGARBAGE )
{
  QJSEngine * obj = (QJSEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->collectGarbage();
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
QJSValue evaluate(const QString & program, const QString & fileName = QString(), int lineNumber = 1)
*/
HB_FUNC_STATIC( QJSENGINE_EVALUATE )
{
  QJSEngine * obj = (QJSEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
    {
#endif
      QJSValue * ptr = new QJSValue( obj->evaluate( PQSTRING(1), OPQSTRING(2,QString()), OPINT(3,1) ) );
      Qt5xHb::createReturnClass( ptr, "QJSVALUE", true );
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
QJSValue globalObject() const
*/
HB_FUNC_STATIC( QJSENGINE_GLOBALOBJECT )
{
  QJSEngine * obj = (QJSEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QJSValue * ptr = new QJSValue( obj->globalObject() );
      Qt5xHb::createReturnClass( ptr, "QJSVALUE", true );
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
QJSValue newArray(uint length = 0)
*/
HB_FUNC_STATIC( QJSENGINE_NEWARRAY )
{
  QJSEngine * obj = (QJSEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
    {
#endif
      QJSValue * ptr = new QJSValue( obj->newArray( OPUINT(1,0) ) );
      Qt5xHb::createReturnClass( ptr, "QJSVALUE", true );
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
QJSValue newObject()
*/
HB_FUNC_STATIC( QJSENGINE_NEWOBJECT )
{
  QJSEngine * obj = (QJSEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QJSValue * ptr = new QJSValue( obj->newObject() );
      Qt5xHb::createReturnClass( ptr, "QJSVALUE", true );
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
QJSValue newQObject(QObject * object)
*/
HB_FUNC_STATIC( QJSENGINE_NEWQOBJECT )
{
  QJSEngine * obj = (QJSEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      QJSValue * ptr = new QJSValue( obj->newQObject( PQOBJECT(1) ) );
      Qt5xHb::createReturnClass( ptr, "QJSVALUE", true );
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
