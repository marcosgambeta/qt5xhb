/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QPlaceImage INHERIT QPlaceContent

   METHOD new
   METHOD delete
   METHOD url
   METHOD setUrl
   METHOD imageId
   METHOD setImageId
   METHOD mimeType
   METHOD setMimeType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPlaceImage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlaceImage>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlaceImage>
#endif
#endif

HB_FUNC_STATIC( QPLACEIMAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QPlaceImage()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    QPlaceImage * obj = new QPlaceImage();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    /*
    QPlaceImage( const QPlaceContent & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    QPlaceImage * obj = new QPlaceImage( *PQPLACECONTENT(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPLACEIMAGE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) Qt5xHb::itemGetPtrStackSelfItem();

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
QUrl url() const
*/
HB_FUNC_STATIC( QPLACEIMAGE_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->url() );
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
void setUrl( const QUrl & url )
*/
HB_FUNC_STATIC( QPLACEIMAGE_SETURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setUrl( *PQURL(1) );
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
QString imageId() const
*/
HB_FUNC_STATIC( QPLACEIMAGE_IMAGEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->imageId() );
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
void setImageId( const QString & identifier )
*/
HB_FUNC_STATIC( QPLACEIMAGE_SETIMAGEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setImageId( PQSTRING(1) );
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
QString mimeType() const
*/
HB_FUNC_STATIC( QPLACEIMAGE_MIMETYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->mimeType() );
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
void setMimeType( const QString & data )
*/
HB_FUNC_STATIC( QPLACEIMAGE_SETMIMETYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceImage * obj = (QPlaceImage *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setMimeType( PQSTRING(1) );
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

#pragma ENDDUMP
