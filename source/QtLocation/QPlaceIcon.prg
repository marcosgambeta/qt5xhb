/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACEMANAGER
REQUEST QURL
#endif

CLASS QPlaceIcon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD url
   METHOD manager
   METHOD setManager
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPlaceIcon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlaceIcon>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlaceIcon>
#endif
#endif

#include <QtLocation/QPlaceManager>

HB_FUNC_STATIC( QPLACEICON_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QPlaceIcon()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    QPlaceIcon * obj = new QPlaceIcon();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && ISQPLACEICON(1) )
  {
    /*
    QPlaceIcon( const QPlaceIcon & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    QPlaceIcon * obj = new QPlaceIcon( *PQPLACEICON(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPLACEICON_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QUrl url( const QSize & size = QSize() ) const
*/
HB_FUNC_STATIC( QPLACEICON_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQSIZE(1)||HB_ISNIL(1)) )
    {
#endif
      QUrl * ptr = new QUrl( obj->url( HB_ISNIL(1)? QSize() : *(QSize *) Qt5xHb::itemGetPtr(1) ) );
      Qt5xHb::createReturnClass(ptr, "QURL", true);
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
QPlaceManager * manager() const
*/
HB_FUNC_STATIC( QPLACEICON_MANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPlaceManager * ptr = obj->manager();
      Qt5xHb::createReturnQObjectClass(ptr, "QPLACEMANAGER");
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
void setManager( QPlaceManager * manager )
*/
HB_FUNC_STATIC( QPLACEICON_SETMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACEMANAGER(1) )
    {
#endif
      obj->setManager( PQPLACEMANAGER(1) );
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
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACEICON_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceIcon * obj = (QPlaceIcon *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
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

HB_FUNC_STATIC( QPLACEICON_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QPLACEICON_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLACEICON_NEWFROM );
}

HB_FUNC_STATIC( QPLACEICON_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLACEICON_NEWFROM );
}

HB_FUNC_STATIC( QPLACEICON_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QPLACEICON_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
