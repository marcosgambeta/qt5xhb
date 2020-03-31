/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QSensorGestureRecognizer INHERIT QObject

   METHOD delete
   METHOD id
   METHOD isActive
   METHOD startBackend
   METHOD stopBackend
   METHOD createBackend
   METHOD gestureSignals

   METHOD onDetected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSensorGestureRecognizer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSensors/QSensorGestureRecognizer>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSensors/QSensorGestureRecognizer>
#endif
#endif

HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual QString id() const = 0
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_ID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->id() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual bool isActive() = 0
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void startBackend()
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_STARTBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->startBackend();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void stopBackend()
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_STOPBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stopBackend();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void createBackend()
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_CREATEBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->createBackend();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QStringList gestureSignals() const
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_GESTURESIGNALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->gestureSignals() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

void QSensorGestureRecognizerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_ONDETECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizerSlots_connect_signal( "detected(QString)", "detected(QString)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
