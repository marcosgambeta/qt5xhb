/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
REQUEST QGEORECTANGLE
#endif

CLASS QGeoRouteRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setWaypoints
   METHOD waypoints
   METHOD setExcludeAreas
   METHOD excludeAreas
   METHOD setNumberAlternativeRoutes
   METHOD numberAlternativeRoutes
   METHOD setTravelModes
   METHOD travelModes
   METHOD setFeatureWeight
   METHOD featureWeight
   METHOD featureTypes
   METHOD setRouteOptimization
   METHOD routeOptimization
   METHOD setSegmentDetail
   METHOD segmentDetail
   METHOD setManeuverDetail
   METHOD maneuverDetail

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoRouteRequest
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoRouteRequest>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoRouteRequest>
#endif
#endif

#include <QtPositioning/QGeoRectangle>

/*
explicit QGeoRouteRequest(const QList<QGeoCoordinate> &waypoints = QList<QGeoCoordinate>())
*/
void QGeoRouteRequest_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QList<QGeoCoordinate> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << *(QGeoCoordinate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QGeoRouteRequest * o = new QGeoRouteRequest ( par1 );
  Qt5xHb::returnNewObject( o, true );
#endif
}

/*
QGeoRouteRequest(const QGeoCoordinate &origin, const QGeoCoordinate &destination)
*/
void QGeoRouteRequest_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * o = new QGeoRouteRequest( *PQGEOCOORDINATE(1), *PQGEOCOORDINATE(2) );
  Qt5xHb::returnNewObject( o, true );
#endif
}

/*
QGeoRouteRequest(const QGeoRouteRequest &other)
*/
void QGeoRouteRequest_new3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * o = new QGeoRouteRequest( *PQGEOROUTEREQUEST(1) );
  Qt5xHb::returnNewObject( o, true );
#endif
}

/*
[1]explicit QGeoRouteRequest(const QList<QGeoCoordinate> &waypoints = QList<QGeoCoordinate>())
[2]QGeoRouteRequest(const QGeoCoordinate &origin, const QGeoCoordinate &destination)
[3]QGeoRouteRequest(const QGeoRouteRequest &other)
*/

HB_FUNC_STATIC( QGEOROUTEREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISARRAY(1)||ISNIL(1)) )
  {
    QGeoRouteRequest_new1();
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQGEOCOORDINATE(2) )
  {
    QGeoRouteRequest_new2();
  }
  else if( ISNUMPAR(1) && ISQGEOROUTEREQUEST(1) )
  {
    QGeoRouteRequest_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEOROUTEREQUEST_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
void setWaypoints(const QList<QGeoCoordinate> &waypoints)
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_SETWAYPOINTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      QList<QGeoCoordinate> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QGeoCoordinate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->setWaypoints( par1 );
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
QList<QGeoCoordinate> waypoints() const
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_WAYPOINTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QGeoCoordinate> list = obj->waypoints();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QGEOCOORDINATE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QGeoCoordinate *) new QGeoCoordinate( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QGEOCOORDINATE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
void setExcludeAreas(const QList<QGeoRectangle> &areas)
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_SETEXCLUDEAREAS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      QList<QGeoRectangle> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QGeoRectangle *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->setExcludeAreas( par1 );
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
QList<QGeoRectangle> excludeAreas() const
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_EXCLUDEAREAS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QGeoRectangle> list = obj->excludeAreas();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QGEORECTANGLE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QGeoRectangle *) new QGeoRectangle( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QGEORECTANGLE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
void setNumberAlternativeRoutes(int alternatives)
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_SETNUMBERALTERNATIVEROUTES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setNumberAlternativeRoutes( PINT(1) );
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
int numberAlternativeRoutes() const
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_NUMBERALTERNATIVEROUTES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->numberAlternativeRoutes() );
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
void setTravelModes(TravelModes travelModes)
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_SETTRAVELMODES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setTravelModes( (QGeoRouteRequest::TravelModes) hb_parni(1) );
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
TravelModes travelModes() const
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_TRAVELMODES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->travelModes() );
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
void setFeatureWeight(FeatureType featureType, FeatureWeight featureWeight)
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_SETFEATUREWEIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setFeatureWeight( (QGeoRouteRequest::FeatureType) hb_parni(1), (QGeoRouteRequest::FeatureWeight) hb_parni(2) );
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
FeatureWeight featureWeight(FeatureType featureType) const
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_FEATUREWEIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RENUM( obj->featureWeight( (QGeoRouteRequest::FeatureType) hb_parni(1) ) );
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
QList<FeatureType> featureTypes() const
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_FEATURETYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QGeoRouteRequest::FeatureType> list = obj->featureTypes();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
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
void setRouteOptimization(RouteOptimizations optimization)
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_SETROUTEOPTIMIZATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setRouteOptimization( (QGeoRouteRequest::RouteOptimizations) hb_parni(1) );
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
RouteOptimizations routeOptimization() const
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_ROUTEOPTIMIZATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->routeOptimization() );
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
void setSegmentDetail(SegmentDetail segmentDetail)
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_SETSEGMENTDETAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSegmentDetail( (QGeoRouteRequest::SegmentDetail) hb_parni(1) );
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
SegmentDetail segmentDetail() const
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_SEGMENTDETAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->segmentDetail() );
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
void setManeuverDetail(ManeuverDetail maneuverDetail)
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_SETMANEUVERDETAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setManeuverDetail( (QGeoRouteRequest::ManeuverDetail) hb_parni(1) );
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
ManeuverDetail maneuverDetail() const
*/
HB_FUNC_STATIC( QGEOROUTEREQUEST_MANEUVERDETAIL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRouteRequest * obj = (QGeoRouteRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->maneuverDetail() );
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

HB_FUNC_STATIC( QGEOROUTEREQUEST_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGEOROUTEREQUEST_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOROUTEREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QGEOROUTEREQUEST_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOROUTEREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QGEOROUTEREQUEST_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGEOROUTEREQUEST_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
