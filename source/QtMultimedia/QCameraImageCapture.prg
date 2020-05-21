/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGEENCODERSETTINGS
REQUEST QMEDIAOBJECT
REQUEST QSIZE
#endif

CLASS QCameraImageCapture INHERIT QObject,QMediaBindableInterface

   METHOD new
   METHOD delete
   METHOD isReadyForCapture
   METHOD availability
   METHOD bufferFormat
   METHOD captureDestination
   METHOD encodingSettings
   METHOD error
   METHOD errorString
   METHOD imageCodecDescription
   METHOD isAvailable
   METHOD isCaptureDestinationSupported
   METHOD mediaObject
   METHOD setBufferFormat
   METHOD setCaptureDestination
   METHOD setEncodingSettings
   METHOD supportedBufferFormats
   METHOD supportedImageCodecs
   METHOD supportedResolutions
   METHOD cancelCapture
   METHOD capture

   METHOD onBufferFormatChanged
   METHOD onCaptureDestinationChanged
   METHOD onError
   METHOD onImageAvailable
   METHOD onImageCaptured
   METHOD onImageExposed
   METHOD onImageMetadataAvailable
   METHOD onImageSaved
   METHOD onReadyForCaptureChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraImageCapture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraImageCapture>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraImageCapture>
#endif

/*
explicit QCameraImageCapture(QMediaObject * mediaObject, QObject * parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_NEW )
{
  if( ISBETWEEN(1,2) && ISQMEDIAOBJECT(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QCameraImageCapture * obj = new QCameraImageCapture( PQMEDIAOBJECT(1), OPQOBJECT(2,0) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QCameraImageCapture()
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_DELETE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
bool isReadyForCapture() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ISREADYFORCAPTURE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadyForCapture() );
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
QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_AVAILABILITY )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->availability() );
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
QVideoFrame::PixelFormat bufferFormat() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_BUFFERFORMAT )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

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
CaptureDestinations captureDestination() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_CAPTUREDESTINATION )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->captureDestination() );
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
QImageEncoderSettings encodingSettings() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ENCODINGSETTINGS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QImageEncoderSettings * ptr = new QImageEncoderSettings( obj->encodingSettings() );
      Qt5xHb::createReturnClass( ptr, "QIMAGEENCODERSETTINGS", true );
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
Error error() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ERROR )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
QString errorString() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ERRORSTRING )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
QString imageCodecDescription(const QString & codecName) const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_IMAGECODECDESCRIPTION )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RQSTRING( obj->imageCodecDescription( PQSTRING(1) ) );
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
bool isAvailable() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ISAVAILABLE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAvailable() );
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
bool isCaptureDestinationSupported(CaptureDestinations destination) const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ISCAPTUREDESTINATIONSUPPORTED )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isCaptureDestinationSupported( (QCameraImageCapture::CaptureDestinations) hb_parni(1) ) );
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
QMediaObject *mediaObject() const override
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_MEDIAOBJECT )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaObject * ptr = obj->mediaObject();
      Qt5xHb::createReturnQObjectClass( ptr, "QMEDIAOBJECT" );
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
void setBufferFormat(const QVideoFrame::PixelFormat format)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SETBUFFERFORMAT )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

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
void setCaptureDestination(CaptureDestinations destination)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SETCAPTUREDESTINATION )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCaptureDestination( (QCameraImageCapture::CaptureDestinations) hb_parni(1) );
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
void setEncodingSettings(const QImageEncoderSettings & settings)
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SETENCODINGSETTINGS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQIMAGEENCODERSETTINGS(1) )
    {
#endif
      obj->setEncodingSettings( *PQIMAGEENCODERSETTINGS(1) );
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
QList<QVideoFrame::PixelFormat> supportedBufferFormats() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SUPPORTEDBUFFERFORMATS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

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

/*
QStringList supportedImageCodecs() const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SUPPORTEDIMAGECODECS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->supportedImageCodecs() );
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
QList<QSize> supportedResolutions(const QImageEncoderSettings & settings = QImageEncoderSettings(), bool * continuous = Q_NULLPTR) const
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_SUPPORTEDRESOLUTIONS )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,2) && (ISQIMAGEENCODERSETTINGS(1)||ISNIL(1)) && ISOPTLOG(2) )
    {
#endif
      bool par2;
      QList<QSize> list = obj->supportedResolutions( ISNIL(1)? QImageEncoderSettings() : *(QImageEncoderSettings *) Qt5xHb::itemGetPtr(1), &par2 );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSIZE" );
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
          hb_itemPutPtr( pItem, (QSize *) new QSize( list[i] ) );
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
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSIZE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
      hb_storl( par2, 2 );
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
void cancelCapture()
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_CANCELCAPTURE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->cancelCapture();
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
int capture(const QString & location = QString())
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_CAPTURE )
{
  QCameraImageCapture * obj = (QCameraImageCapture *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
    {
#endif
      RINT( obj->capture( OPQSTRING(1,QString()) ) );
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
bool setMediaObject(QMediaObject *) override [protected]
*/

void QCameraImageCaptureSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONBUFFERFORMATCHANGED )
{
  QCameraImageCaptureSlots_connect_signal( "bufferFormatChanged(QVideoFrame::PixelFormat)", "bufferFormatChanged(QVideoFrame::PixelFormat)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONCAPTUREDESTINATIONCHANGED )
{
  QCameraImageCaptureSlots_connect_signal( "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)", "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONERROR )
{
  QCameraImageCaptureSlots_connect_signal( "error(int,QCameraImageCapture::Error,QString)", "error(int,QCameraImageCapture::Error,QString)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONIMAGEAVAILABLE )
{
  QCameraImageCaptureSlots_connect_signal( "imageAvailable(int,QVideoFrame)", "imageAvailable(int,QVideoFrame)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONIMAGECAPTURED )
{
  QCameraImageCaptureSlots_connect_signal( "imageCaptured(int,QImage)", "imageCaptured(int,QImage)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONIMAGEEXPOSED )
{
  QCameraImageCaptureSlots_connect_signal( "imageExposed(int)", "imageExposed(int)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONIMAGEMETADATAAVAILABLE )
{
  QCameraImageCaptureSlots_connect_signal( "imageMetadataAvailable(int,QString,QVariant)", "imageMetadataAvailable(int,QString,QVariant)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONIMAGESAVED )
{
  QCameraImageCaptureSlots_connect_signal( "imageSaved(int,QString)", "imageSaved(int,QString)" );
}

HB_FUNC_STATIC( QCAMERAIMAGECAPTURE_ONREADYFORCAPTURECHANGED )
{
  QCameraImageCaptureSlots_connect_signal( "readyForCaptureChanged(bool)", "readyForCaptureChanged(bool)" );
}

#pragma ENDDUMP
