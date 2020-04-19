/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoCodingManager INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD geocode
   METHOD reverseGeocode
   METHOD setLocale
   METHOD locale

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoCodingManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoCodingManager>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoCodingManager>
#endif
#endif

#include <QtCore/QLocale>

HB_FUNC_STATIC( QGEOCODINGMANAGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManager * obj = (QGeoCodingManager *) Qt5xHb::itemGetPtrStackSelfItem();

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
QString managerName() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManager * obj = (QGeoCodingManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->managerName() );
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
int managerVersion() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManager * obj = (QGeoCodingManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->managerVersion() );
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
QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds = QGeoShape())
*/
void QGeoCodingManager_geocode1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManager * obj = (QGeoCodingManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGeoCodeReply * ptr = obj->geocode( *PQGEOADDRESS(1), ISNIL(2)? QGeoShape() : *(QGeoShape *) Qt5xHb::itemGetPtr(2) );
    Qt5xHb::createReturnQObjectClass( ptr, "QGEOCODEREPLY" );
  }
#endif
}

/*
QGeoCodeReply *geocode(const QString &searchString, int limit = -1, int offset = 0, const QGeoShape &bounds = QGeoShape())
*/
void QGeoCodingManager_geocode2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManager * obj = (QGeoCodingManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGeoCodeReply * ptr = obj->geocode( PQSTRING(1), OPINT(2,-1), OPINT(3,0), ISNIL(4)? QGeoShape() : *(QGeoShape *) Qt5xHb::itemGetPtr(4) );
    Qt5xHb::createReturnQObjectClass( ptr, "QGEOCODEREPLY" );
  }
#endif
}

/*
[1]QGeoCodeReply *geocode(const QGeoAddress &address, const QGeoShape &bounds = QGeoShape())
[2]QGeoCodeReply *geocode(const QString &searchString, int limit = -1, int offset = 0, const QGeoShape &bounds = QGeoShape())
*/

HB_FUNC_STATIC( QGEOCODINGMANAGER_GEOCODE )
{
  if( ISBETWEEN(1,2) && ISQGEOADDRESS(1) && (ISQGEOSHAPE(2)||ISNIL(2)) )
  {
    QGeoCodingManager_geocode1();
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISQGEOSHAPE(4)||ISNIL(4)) )
  {
    QGeoCodingManager_geocode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGeoCodeReply *reverseGeocode(const QGeoCoordinate &coordinate, const QGeoShape &bounds = QGeoShape())
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_REVERSEGEOCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManager * obj = (QGeoCodingManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQGEOCOORDINATE(1) && (ISQGEOSHAPE(2)||ISNIL(2)) )
    {
#endif
      QGeoCodeReply * ptr = obj->reverseGeocode( *PQGEOCOORDINATE(1), ISNIL(2)? QGeoShape() : *(QGeoShape *) Qt5xHb::itemGetPtr(2) );
      Qt5xHb::createReturnQObjectClass( ptr, "QGEOCODEREPLY" );
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
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManager * obj = (QGeoCodingManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
#endif
      obj->setLocale( *PQLOCALE(1) );
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
QLocale locale() const
*/
HB_FUNC_STATIC( QGEOCODINGMANAGER_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManager * obj = (QGeoCodingManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLocale * ptr = new QLocale( obj->locale() );
      Qt5xHb::createReturnClass( ptr, "QLOCALE", true );
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

void QGeoCodingManagerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGEOCODINGMANAGER_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerSlots_connect_signal( "finished(QGeoCodeReply*)", "finished(QGeoCodeReply*)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGEOCODINGMANAGER_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodingManagerSlots_connect_signal( "error(QGeoCodeReply*,QGeoCodeReply::Error,QString)", "error(QGeoCodeReply*,QGeoCodeReply::Error,QString)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
