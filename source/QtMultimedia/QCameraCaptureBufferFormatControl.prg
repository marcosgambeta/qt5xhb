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

CLASS QCameraCaptureBufferFormatControl INHERIT QMediaObject

   METHOD delete
   METHOD bufferFormat
   METHOD setBufferFormat
   METHOD supportedBufferFormats

   METHOD onBufferFormatChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraCaptureBufferFormatControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraCaptureBufferFormatControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraCaptureBufferFormatControl>
#endif

/*
explicit QCameraCaptureBufferFormatControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
~QCameraCaptureBufferFormatControl()
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_DELETE )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
virtual QVideoFrame::PixelFormat bufferFormat() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_BUFFERFORMAT )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->bufferFormat() );
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
virtual void setBufferFormat(QVideoFrame::PixelFormat format) = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_SETBUFFERFORMAT )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBufferFormat( (QVideoFrame::PixelFormat) hb_parni(1) );
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
virtual QList<QVideoFrame::PixelFormat> supportedBufferFormats() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_SUPPORTEDBUFFERFORMATS )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QVideoFrame::PixelFormat> list = obj->supportedBufferFormats();
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
}

void QCameraCaptureBufferFormatControlSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_ONBUFFERFORMATCHANGED )
{
  QCameraCaptureBufferFormatControlSlots_connect_signal( "bufferFormatChanged(QVideoFrame::PixelFormat)", "bufferFormatChanged(QVideoFrame::PixelFormat)" );
}

#pragma ENDDUMP
