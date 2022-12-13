/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QRadialGradient INHERIT QGradient

   METHOD new
   METHOD delete
   METHOD center
   METHOD centerRadius
   METHOD focalPoint
   METHOD focalRadius
   METHOD radius
   METHOD setCenter
   METHOD setCenterRadius
   METHOD setFocalPoint
   METHOD setFocalRadius
   METHOD setRadius

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRadialGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QRadialGradient>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QRadialGradient>
#endif

HB_FUNC_STATIC( QRADIALGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QRadialGradient()
    */
    QRadialGradient * obj = new QRadialGradient();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && HB_ISNUM(2) && ISQPOINTF(3) )
  {
    /*
    QRadialGradient( const QPointF & center, qreal radius, const QPointF & focalPoint )
    */
    QRadialGradient * obj = new QRadialGradient( *PQPOINTF(1), PQREAL(2), *PQPOINTF(3) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) )
  {
    /*
    QRadialGradient( qreal cx, qreal cy, qreal radius, qreal fx, qreal fy )
    */
    QRadialGradient * obj = new QRadialGradient( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && HB_ISNUM(2) )
  {
    /*
    QRadialGradient( const QPointF & center, qreal radius )
    */
    QRadialGradient * obj = new QRadialGradient( *PQPOINTF(1), PQREAL(2) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
  {
    /*
    QRadialGradient( qreal cx, qreal cy, qreal radius )
    */
    QRadialGradient * obj = new QRadialGradient( PQREAL(1), PQREAL(2), PQREAL(3) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(4) && ISQPOINTF(1) && HB_ISNUM(2) && ISQPOINTF(3) && HB_ISNUM(4) )
  {
    /*
    QRadialGradient( const QPointF & center, qreal centerRadius, const QPointF & focalPoint, qreal focalRadius )
    */
    QRadialGradient * obj = new QRadialGradient( *PQPOINTF(1), PQREAL(2), *PQPOINTF(3), PQREAL(4) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) )
  {
    /*
    QRadialGradient( qreal cx, qreal cy, qreal centerRadius, qreal fx, qreal fy, qreal focalRadius )
    */
    QRadialGradient * obj = new QRadialGradient( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QRADIALGRADIENT_DELETE )
{
  QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QPointF center() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_CENTER )
{
  QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPointF * ptr = new QPointF( obj->center() );
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
qreal centerRadius() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_CENTERRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->centerRadius() );
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
QPointF focalPoint() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_FOCALPOINT )
{
  QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPointF * ptr = new QPointF( obj->focalPoint() );
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
qreal focalRadius() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_FOCALRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->focalRadius() );
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
qreal radius() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_RADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
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
}

HB_FUNC_STATIC( QRADIALGRADIENT_SETCENTER )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    /*
    void setCenter( const QPointF & center )
    */
    QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->setCenter( *PQPOINTF(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void setCenter( qreal x, qreal y )
    */
    QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->setCenter( PQREAL(1), PQREAL(2) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setCenterRadius( qreal radius )
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETCENTERRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCenterRadius( PQREAL(1) );
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

HB_FUNC_STATIC( QRADIALGRADIENT_SETFOCALPOINT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    /*
    void setFocalPoint( const QPointF & focalPoint )
    */
    QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->setFocalPoint( *PQPOINTF(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    void setFocalPoint( qreal x, qreal y )
    */
    QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->setFocalPoint( PQREAL(1), PQREAL(2) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setFocalRadius( qreal radius )
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETFOCALRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFocalRadius( PQREAL(1) );
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
void setRadius( qreal radius )
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
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
}

#pragma ENDDUMP
