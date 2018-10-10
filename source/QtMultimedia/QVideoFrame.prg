/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVARIANT
#endif

CLASS QVideoFrame

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bytesPerLine
   METHOD endTime
   METHOD fieldType
   METHOD handle
   METHOD handleType
   METHOD height
   METHOD isMapped
   METHOD isReadable
   METHOD isValid
   METHOD isWritable
   METHOD map
   METHOD mapMode
   METHOD mappedBytes
   METHOD pixelFormat
   METHOD setEndTime
   METHOD setFieldType
   METHOD setStartTime
   METHOD size
   METHOD startTime
   METHOD unmap
   METHOD width
   METHOD planeCount
   METHOD metaData
   METHOD setMetaData
   METHOD imageFormatFromPixelFormat
   METHOD pixelFormatFromImageFormat

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoFrame>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVideoFrame>
#endif

#include <QVariant>

/*
QVideoFrame ()
*/
void QVideoFrame_new1 ()
{
  QVideoFrame * o = new QVideoFrame ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
*/
void QVideoFrame_new2 ()
{
  QVideoFrame * o = new QVideoFrame ( PQABSTRACTVIDEOBUFFER(1), *PQSIZE(2), (QVideoFrame::PixelFormat) hb_parni(3) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
*/
void QVideoFrame_new3 ()
{
  QVideoFrame * o = new QVideoFrame ( PINT(1), *PQSIZE(2), PINT(3), (QVideoFrame::PixelFormat) hb_parni(4) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QVideoFrame ( const QImage & image )
*/
void QVideoFrame_new4 ()
{
  QVideoFrame * o = new QVideoFrame ( *PQIMAGE(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QVideoFrame ( const QVideoFrame & other )
*/
void QVideoFrame_new5 ()
{
  QVideoFrame * o = new QVideoFrame ( *PQVIDEOFRAME(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QVideoFrame ()
//[2]QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
//[3]QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
//[4]QVideoFrame ( const QImage & image )
//[5]QVideoFrame ( const QVideoFrame & other )

HB_FUNC_STATIC( QVIDEOFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVideoFrame_new1();
  }
  else if( ISNUMPAR(3) && ISQABSTRACTVIDEOBUFFER(1) && ISQSIZE(2) && ISNUM(3)  )
  {
    QVideoFrame_new2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQSIZE(2) && ISNUM(3) && ISNUM(4) )
  {
    QVideoFrame_new3();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QVideoFrame_new4();
  }
  else if( ISNUMPAR(1) && ISQVIDEOFRAME(1) )
  {
    QVideoFrame_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QVideoFrame()
*/
HB_FUNC_STATIC( QVIDEOFRAME_DELETE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

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
uchar * bits ()
*/

/*
uchar *bits(int plane)
*/

/*
const uchar * bits () const
*/

/*
const uchar *bits(int plane) const
*/

//[1]uchar *bits()
//[2]uchar *bits(int plane)
//[3]const uchar *bits() const
//[4]const uchar *bits(int plane) const

/*
int bytesPerLine () const
*/
void QVideoFrame_bytesPerLine1 ()
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RINT( obj->bytesPerLine () );
  }
}

/*
int bytesPerLine(int plane) const
*/
void QVideoFrame_bytesPerLine2 ()
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RINT( obj->bytesPerLine ( PINT(1) ) );
  }
}

//[1]int bytesPerLine () const
//[2]int bytesPerLine(int plane) const

HB_FUNC_STATIC( QVIDEOFRAME_BYTESPERLINE )
{
  if( ISNUMPAR(0) )
  {
    QVideoFrame_bytesPerLine1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QVideoFrame_bytesPerLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qint64 endTime () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ENDTIME )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->endTime () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
FieldType fieldType () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_FIELDTYPE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->fieldType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant handle () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HANDLE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QVariant * ptr = new QVariant( obj->handle () );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractVideoBuffer::HandleType handleType () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HANDLETYPE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->handleType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int height () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HEIGHT )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->height () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isMapped () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISMAPPED )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isMapped () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isReadable () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISREADABLE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isReadable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISVALID )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isWritable () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISWRITABLE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isWritable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool map ( QAbstractVideoBuffer::MapMode mode )
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAP )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->map ( (QAbstractVideoBuffer::MapMode) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractVideoBuffer::MapMode mapMode () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAPMODE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->mapMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int mappedBytes () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAPPEDBYTES )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->mappedBytes () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
PixelFormat pixelFormat () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_PIXELFORMAT )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->pixelFormat () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setEndTime ( qint64 time )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETENDTIME )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setEndTime ( PQINT64(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFieldType ( FieldType field )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETFIELDTYPE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFieldType ( (QVideoFrame::FieldType) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStartTime ( qint64 time )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETSTARTTIME )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setStartTime ( PQINT64(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_SIZE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->size () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 startTime () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_STARTTIME )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->startTime () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void unmap ()
*/
HB_FUNC_STATIC( QVIDEOFRAME_UNMAP )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->unmap ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int width () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_WIDTH )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->width () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int planeCount() const
*/
HB_FUNC_STATIC( QVIDEOFRAME_PLANECOUNT )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->planeCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariantMap availableMetaData() const
*/

/*
QVariant metaData(const QString &key) const
*/
HB_FUNC_STATIC( QVIDEOFRAME_METADATA )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QVariant * ptr = new QVariant( obj->metaData ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMetaData(const QString &key, const QVariant &value)
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETMETADATA )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
    {
      obj->setMetaData ( PQSTRING(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QImage::Format imageFormatFromPixelFormat ( PixelFormat format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_IMAGEFORMATFROMPIXELFORMAT )
{
    if( ISNUMPAR(1) && ISNUM(1) )
  {
      RENUM( QVideoFrame::imageFormatFromPixelFormat ( (QVideoFrame::PixelFormat) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static PixelFormat pixelFormatFromImageFormat ( QImage::Format format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_PIXELFORMATFROMIMAGEFORMAT )
{
    if( ISNUMPAR(1) && ISNUM(1) )
  {
      RENUM( QVideoFrame::pixelFormatFromImageFormat ( (QImage::Format) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVIDEOFRAME_NEWFROM )
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

HB_FUNC_STATIC( QVIDEOFRAME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVIDEOFRAME_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOFRAME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVIDEOFRAME_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOFRAME_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVIDEOFRAME_SETSELFDESTRUCTION )
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
