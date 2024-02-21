/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoCircle INHERIT QGeoShape

   METHOD new
   METHOD delete
   METHOD setCenter
   METHOD center
   METHOD setRadius
   METHOD radius
   METHOD translate
   METHOD translated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoCircle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoCircle>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoCircle>
#endif
#endif

HB_FUNC_STATIC( QGEOCIRCLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QGeoCircle()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoCircle * obj = new QGeoCircle();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISBETWEEN(1,2) && ISQGEOCOORDINATE(1) && ( HB_ISNUM(2)||HB_ISNIL(2)) )
  {
    /*
    QGeoCircle( const QGeoCoordinate & center, qreal radius = -1.0 )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoCircle * obj = new QGeoCircle( *PQGEOCOORDINATE(1), OPQREAL(2,-1.0) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && ISQGEOCIRCLE(1) )
  {
    /*
    QGeoCircle( const QGeoCircle & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoCircle * obj = new QGeoCircle( *PQGEOCIRCLE(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    /*
    QGeoCircle( const QGeoShape & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoCircle * obj = new QGeoCircle( *PQGEOSHAPE(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QGEOCIRCLE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setCenter( const QGeoCoordinate & center )
*/
HB_FUNC_STATIC( QGEOCIRCLE_SETCENTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setCenter( *PQGEOCOORDINATE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QGeoCoordinate center() const
*/
HB_FUNC_STATIC( QGEOCIRCLE_CENTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->center() );
      Qt5xHb::createReturnClass(ptr, "QGEOCOORDINATE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setRadius( qreal radius )
*/
HB_FUNC_STATIC( QGEOCIRCLE_SETRADIUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setRadius( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
qreal radius() const
*/
HB_FUNC_STATIC( QGEOCIRCLE_RADIUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->radius() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void translate( double degreesLatitude, double degreesLongitude )
*/
HB_FUNC_STATIC( QGEOCIRCLE_TRANSLATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->translate( PDOUBLE(1), PDOUBLE(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QGeoCircle translated( double degreesLatitude, double degreesLongitude ) const
*/
HB_FUNC_STATIC( QGEOCIRCLE_TRANSLATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      QGeoCircle * ptr = new QGeoCircle( obj->translated( PDOUBLE(1), PDOUBLE(2) ) );
      Qt5xHb::createReturnClass(ptr, "QGEOCIRCLE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

#pragma ENDDUMP
