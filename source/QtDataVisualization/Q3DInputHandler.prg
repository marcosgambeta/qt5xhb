/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS Q3DInputHandler INHERIT QAbstract3DInputHandler

   METHOD new
   METHOD delete
   METHOD isRotationEnabled
   METHOD setRotationEnabled
   METHOD isZoomEnabled
   METHOD setZoomEnabled
   METHOD isSelectionEnabled
   METHOD setSelectionEnabled
   METHOD isZoomAtTargetEnabled
   METHOD setZoomAtTargetEnabled

   METHOD onRotationEnabledChanged
   METHOD onSelectionEnabledChanged
   METHOD onZoomAtTargetEnabledChanged
   METHOD onZoomEnabledChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS Q3DInputHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/Q3DInputHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/Q3DInputHandler>
#endif

using namespace QtDataVisualization;

/*
Q3DInputHandler( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( Q3DINPUTHANDLER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    Q3DInputHandler * obj = new Q3DInputHandler( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~Q3DInputHandler()
*/
HB_FUNC_STATIC( Q3DINPUTHANDLER_DELETE )
{
  Q3DInputHandler * obj = (Q3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool isRotationEnabled() const
*/
HB_FUNC_STATIC( Q3DINPUTHANDLER_ISROTATIONENABLED )
{
  Q3DInputHandler * obj = (Q3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRotationEnabled() );
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
void setRotationEnabled( bool enable )
*/
HB_FUNC_STATIC( Q3DINPUTHANDLER_SETROTATIONENABLED )
{
  Q3DInputHandler * obj = (Q3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setRotationEnabled( PBOOL(1) );
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
bool isZoomEnabled() const
*/
HB_FUNC_STATIC( Q3DINPUTHANDLER_ISZOOMENABLED )
{
  Q3DInputHandler * obj = (Q3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isZoomEnabled() );
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
void setZoomEnabled( bool enable )
*/
HB_FUNC_STATIC( Q3DINPUTHANDLER_SETZOOMENABLED )
{
  Q3DInputHandler * obj = (Q3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setZoomEnabled( PBOOL(1) );
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
bool isSelectionEnabled() const
*/
HB_FUNC_STATIC( Q3DINPUTHANDLER_ISSELECTIONENABLED )
{
  Q3DInputHandler * obj = (Q3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSelectionEnabled() );
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
void setSelectionEnabled( bool enable )
*/
HB_FUNC_STATIC( Q3DINPUTHANDLER_SETSELECTIONENABLED )
{
  Q3DInputHandler * obj = (Q3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setSelectionEnabled( PBOOL(1) );
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
bool isZoomAtTargetEnabled() const
*/
HB_FUNC_STATIC( Q3DINPUTHANDLER_ISZOOMATTARGETENABLED )
{
  Q3DInputHandler * obj = (Q3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isZoomAtTargetEnabled() );
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
void setZoomAtTargetEnabled( bool enable )
*/
HB_FUNC_STATIC( Q3DINPUTHANDLER_SETZOOMATTARGETENABLED )
{
  Q3DInputHandler * obj = (Q3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setZoomAtTargetEnabled( PBOOL(1) );
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

void Q3DInputHandlerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( Q3DINPUTHANDLER_ONROTATIONENABLEDCHANGED )
{
  Q3DInputHandlerSlots_connect_signal( "rotationEnabledChanged(bool)", "rotationEnabledChanged(bool)" );
}

HB_FUNC_STATIC( Q3DINPUTHANDLER_ONSELECTIONENABLEDCHANGED )
{
  Q3DInputHandlerSlots_connect_signal( "selectionEnabledChanged(bool)", "selectionEnabledChanged(bool)" );
}

HB_FUNC_STATIC( Q3DINPUTHANDLER_ONZOOMATTARGETENABLEDCHANGED )
{
  Q3DInputHandlerSlots_connect_signal( "zoomAtTargetEnabledChanged(bool)", "zoomAtTargetEnabledChanged(bool)" );
}

HB_FUNC_STATIC( Q3DINPUTHANDLER_ONZOOMENABLEDCHANGED )
{
  Q3DInputHandlerSlots_connect_signal( "zoomEnabledChanged(bool)", "zoomEnabledChanged(bool)" );
}

#pragma ENDDUMP
