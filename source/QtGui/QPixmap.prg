/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBITMAP
REQUEST QIMAGE
REQUEST QMATRIX
REQUEST QPAINTENGINE
REQUEST QRECT
REQUEST QSIZE
REQUEST QTRANSFORM
#endif

CLASS QPixmap INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isNull
   METHOD devType
   METHOD width
   METHOD height
   METHOD size
   METHOD rect
   METHOD depth
   METHOD fill
   METHOD mask
   METHOD setMask
   METHOD devicePixelRatio
   METHOD setDevicePixelRatio
   METHOD hasAlpha
   METHOD hasAlphaChannel
   METHOD createHeuristicMask
   METHOD createMaskFromColor
   METHOD scaled
   METHOD scaledToWidth
   METHOD scaledToHeight
   METHOD transformed
   METHOD toImage
   METHOD load
   METHOD loadFromData
   METHOD save
   METHOD convertFromImage
   METHOD copy
   METHOD scroll
   METHOD cacheKey
   METHOD isDetached
   METHOD detach
   METHOD isQBitmap
   METHOD paintEngine
   METHOD defaultDepth
   METHOD grabWindow
   METHOD grabWidget
   METHOD trueMatrix
   METHOD fromImage
   METHOD fromImageReader
   METHOD toVariant
   METHOD fromVariant

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPixmap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPixmap>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QPixmap>
#endif

#include <QtGui/QBitmap>
#include <QtCore/QVariant>

HB_FUNC_STATIC(QPIXMAP_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QPixmap()
    */
    QPixmap *obj = new QPixmap();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    QPixmap( int width, int height )
    */
    QPixmap *obj = new QPixmap(PINT(1), PINT(2));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSIZE(1))
  {
    /*
    QPixmap( const QSize & size )
    */
    QPixmap *obj = new QPixmap(*PQSIZE(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    QPixmap( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
    */
    QPixmap *obj =
        new QPixmap(PQSTRING(1), OPCONSTCHAR(2, 0),
                    HB_ISNIL(3) ? (Qt::ImageConversionFlags)Qt::AutoColor : (Qt::ImageConversionFlags)hb_parni(3));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQPIXMAP(1))
  {
    /*
    QPixmap( const QPixmap & pixmap )
    */
    QPixmap *obj = new QPixmap(*PQPIXMAP(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPIXMAP_DELETE)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void swap( QPixmap & other )
*/
HB_FUNC_STATIC(QPIXMAP_SWAP)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPIXMAP(1))
    {
#endif
      obj->swap(*PQPIXMAP(1));
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
bool isNull() const
*/
HB_FUNC_STATIC(QPIXMAP_ISNULL)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
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
int devType() const
*/
HB_FUNC_STATIC(QPIXMAP_DEVTYPE)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->devType());
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
int width() const
*/
HB_FUNC_STATIC(QPIXMAP_WIDTH)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->width());
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
int height() const
*/
HB_FUNC_STATIC(QPIXMAP_HEIGHT)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->height());
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
QSize size() const
*/
HB_FUNC_STATIC(QPIXMAP_SIZE)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->size());
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
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
QRect rect() const
*/
HB_FUNC_STATIC(QPIXMAP_RECT)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRect *ptr = new QRect(obj->rect());
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
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
int depth() const
*/
HB_FUNC_STATIC(QPIXMAP_DEPTH)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->depth());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPIXMAP_FILL)
{
  if (ISBETWEEN(0, 1) && (ISQCOLOR(1) || HB_ISCHAR(1) || HB_ISNIL(1)))
  {
    /*
    void fill( const QColor & fillColor = Qt::white )
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->fill(HB_ISNIL(1) ? Qt::white : *(QColor *)Qt5xHb::itemGetPtr(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISOBJECT(1) && ISQPOINT(2))
  {
    /*
    void fill( const QPaintDevice * device, const QPoint & ofs )
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->fill(PQPAINTDEVICE(1), *PQPOINT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(3) && HB_ISOBJECT(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    void fill( const QPaintDevice * device, int xofs, int yofs )
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->fill(PQPAINTDEVICE(1), PINT(2), PINT(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QBitmap mask() const
*/
HB_FUNC_STATIC(QPIXMAP_MASK)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QBitmap *ptr = new QBitmap(obj->mask());
      Qt5xHb::createReturnClass(ptr, "QBITMAP", true);
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
void setMask( const QBitmap & )
*/
HB_FUNC_STATIC(QPIXMAP_SETMASK)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBITMAP(1))
    {
#endif
      obj->setMask(*PQBITMAP(1));
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
qreal devicePixelRatio() const
*/
HB_FUNC_STATIC(QPIXMAP_DEVICEPIXELRATIO)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->devicePixelRatio());
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
void setDevicePixelRatio( qreal scaleFactor )
*/
HB_FUNC_STATIC(QPIXMAP_SETDEVICEPIXELRATIO)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setDevicePixelRatio(PQREAL(1));
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
bool hasAlpha() const
*/
HB_FUNC_STATIC(QPIXMAP_HASALPHA)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasAlpha());
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
bool hasAlphaChannel() const
*/
HB_FUNC_STATIC(QPIXMAP_HASALPHACHANNEL)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasAlphaChannel());
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
QBitmap createHeuristicMask( bool clipTight = true ) const
*/
HB_FUNC_STATIC(QPIXMAP_CREATEHEURISTICMASK)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)))
    {
#endif
      QBitmap *ptr = new QBitmap(obj->createHeuristicMask(OPBOOL(1, true)));
      Qt5xHb::createReturnClass(ptr, "QBITMAP", true);
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
QBitmap createMaskFromColor( const QColor & maskColor, Qt::MaskMode mode = Qt::MaskInColor ) const
*/
HB_FUNC_STATIC(QPIXMAP_CREATEMASKFROMCOLOR)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && (ISQCOLOR(1) || HB_ISCHAR(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      QBitmap *ptr = new QBitmap(
          obj->createMaskFromColor(HB_ISOBJECT(1) ? *(QColor *)Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)),
                                   HB_ISNIL(2) ? (Qt::MaskMode)Qt::MaskInColor : (Qt::MaskMode)hb_parni(2)));
      Qt5xHb::createReturnClass(ptr, "QBITMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPIXMAP_SCALED)
{
  if (ISBETWEEN(2, 4) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)) && (HB_ISNUM(4) || HB_ISNIL(4)))
  {
    /*
    QPixmap scaled( int w, int h, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio, Qt::TransformationMode mode =
    Qt::FastTransformation ) const
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QPixmap *ptr = new QPixmap(obj->scaled(
          PINT(1), PINT(2), HB_ISNIL(3) ? (Qt::AspectRatioMode)Qt::IgnoreAspectRatio : (Qt::AspectRatioMode)hb_parni(3),
          HB_ISNIL(4) ? (Qt::TransformationMode)Qt::FastTransformation : (Qt::TransformationMode)hb_parni(4)));
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
    }
  }
  else if (ISBETWEEN(1, 3) && ISQSIZE(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    QPixmap scaled( const QSize & s, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio, Qt::TransformationMode mode
    = Qt::FastTransformation ) const
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QPixmap *ptr = new QPixmap(obj->scaled(
          *PQSIZE(1), HB_ISNIL(2) ? (Qt::AspectRatioMode)Qt::IgnoreAspectRatio : (Qt::AspectRatioMode)hb_parni(2),
          HB_ISNIL(3) ? (Qt::TransformationMode)Qt::FastTransformation : (Qt::TransformationMode)hb_parni(3)));
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPixmap scaledToWidth( int w, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC(QPIXMAP_SCALEDTOWIDTH)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      QPixmap *ptr = new QPixmap(obj->scaledToWidth(
          PINT(1), HB_ISNIL(2) ? (Qt::TransformationMode)Qt::FastTransformation : (Qt::TransformationMode)hb_parni(2)));
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
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
QPixmap scaledToHeight( int h, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC(QPIXMAP_SCALEDTOHEIGHT)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      QPixmap *ptr = new QPixmap(obj->scaledToHeight(
          PINT(1), HB_ISNIL(2) ? (Qt::TransformationMode)Qt::FastTransformation : (Qt::TransformationMode)hb_parni(2)));
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPIXMAP_TRANSFORMED)
{
  if (ISBETWEEN(1, 2) && ISQMATRIX(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QPixmap transformed( const QMatrix &, Qt::TransformationMode mode = Qt::FastTransformation ) const
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QPixmap *ptr =
          new QPixmap(obj->transformed(*PQMATRIX(1), HB_ISNIL(2) ? (Qt::TransformationMode)Qt::FastTransformation
                                                                 : (Qt::TransformationMode)hb_parni(2)));
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
    }
  }
  else if (ISBETWEEN(1, 2) && ISQTRANSFORM(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QPixmap transformed( const QTransform &, Qt::TransformationMode mode = Qt::FastTransformation ) const
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QPixmap *ptr =
          new QPixmap(obj->transformed(*PQTRANSFORM(1), HB_ISNIL(2) ? (Qt::TransformationMode)Qt::FastTransformation
                                                                    : (Qt::TransformationMode)hb_parni(2)));
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QImage toImage() const
*/
HB_FUNC_STATIC(QPIXMAP_TOIMAGE)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QImage *ptr = new QImage(obj->toImage());
      Qt5xHb::createReturnClass(ptr, "QIMAGE", true);
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
bool load( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC(QPIXMAP_LOAD)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->load(PQSTRING(1), OPCONSTCHAR(2, 0),
                      HB_ISNIL(3) ? (Qt::ImageConversionFlags)Qt::AutoColor : (Qt::ImageConversionFlags)hb_parni(3)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPIXMAP_LOADFROMDATA)
{
  if (ISBETWEEN(2, 4) && HB_ISCHAR(1) && HB_ISNUM(2) && (HB_ISCHAR(3) || HB_ISNIL(3)) && (HB_ISNUM(4) || HB_ISNIL(4)))
  {
    /*
    bool loadFromData( const uchar * buf, uint len, const char * format = 0, Qt::ImageConversionFlags flags =
    Qt::AutoColor )
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->loadFromData(PCONSTUCHAR(1), PUINT(2), OPCONSTCHAR(3, 0),
                              HB_ISNIL(4) ? (Qt::ImageConversionFlags)Qt::AutoColor
                                          : (Qt::ImageConversionFlags)hb_parni(4)));
    }
  }
  else if (ISBETWEEN(2, 3) && ISQBYTEARRAY(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    bool loadFromData( const QByteArray & data, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor
    )
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->loadFromData(*PQBYTEARRAY(1), OPCONSTCHAR(2, 0),
                              HB_ISNIL(3) ? (Qt::ImageConversionFlags)Qt::AutoColor
                                          : (Qt::ImageConversionFlags)hb_parni(3)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPIXMAP_SAVE)
{
  if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    bool save( const QString & fileName, const char * format = 0, int quality = -1 ) const
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->save(PQSTRING(1), OPCONSTCHAR(2, 0), OPINT(3, -1)));
    }
  }
  else if (ISBETWEEN(1, 3) && ISQIODEVICE(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    bool save( QIODevice * device, const char * format = 0, int quality = -1 ) const
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->save(PQIODEVICE(1), OPCONSTCHAR(2, 0), OPINT(3, -1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool convertFromImage( const QImage & img, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC(QPIXMAP_CONVERTFROMIMAGE)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQIMAGE(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      RBOOL(obj->convertFromImage(*PQIMAGE(1), HB_ISNIL(2) ? (Qt::ImageConversionFlags)Qt::AutoColor
                                                           : (Qt::ImageConversionFlags)hb_parni(2)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPIXMAP_COPY)
{
  if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    QPixmap copy( int x, int y, int width, int height ) const
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QPixmap *ptr = new QPixmap(obj->copy(PINT(1), PINT(2), PINT(3), PINT(4)));
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
    }
  }
  else if (ISBETWEEN(0, 1) && (ISQRECT(1) || HB_ISNIL(1)))
  {
    /*
    QPixmap copy( const QRect & rect = QRect() ) const
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QPixmap *ptr = new QPixmap(obj->copy(HB_ISNIL(1) ? QRect() : *(QRect *)Qt5xHb::itemGetPtr(1)));
      Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPIXMAP_SCROLL)
{
  if (ISBETWEEN(6, 7) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) &&
      (ISQREGION(7) || HB_ISNIL(7)))
  {
    /*
    void scroll( int dx, int dy, int x, int y, int width, int height, QRegion * exposed = 0 )
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->scroll(PINT(1), PINT(2), PINT(3), PINT(4), PINT(5), PINT(6),
                  HB_ISNIL(7) ? 0 : (QRegion *)Qt5xHb::itemGetPtr(7));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(3, 4) && HB_ISNUM(1) && HB_ISNUM(2) && ISQRECT(3) && (ISQREGION(4) || HB_ISNIL(4)))
  {
    /*
    void scroll( int dx, int dy, const QRect & rect, QRegion * exposed = 0 )
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->scroll(PINT(1), PINT(2), *PQRECT(3), HB_ISNIL(4) ? 0 : (QRegion *)Qt5xHb::itemGetPtr(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
qint64 cacheKey() const
*/
HB_FUNC_STATIC(QPIXMAP_CACHEKEY)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->cacheKey());
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
bool isDetached() const
*/
HB_FUNC_STATIC(QPIXMAP_ISDETACHED)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isDetached());
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
void detach()
*/
HB_FUNC_STATIC(QPIXMAP_DETACH)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->detach();
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
bool isQBitmap() const
*/
HB_FUNC_STATIC(QPIXMAP_ISQBITMAP)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isQBitmap());
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
QPaintEngine * paintEngine() const
*/
HB_FUNC_STATIC(QPIXMAP_PAINTENGINE)
{
  QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPaintEngine *ptr = obj->paintEngine();
      Qt5xHb::createReturnClass(ptr, "QPAINTENGINE", false);
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
static int defaultDepth()
*/
HB_FUNC_STATIC(QPIXMAP_DEFAULTDEPTH)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RINT(QPixmap::defaultDepth());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QPixmap grabWindow( WId, int x = 0, int y = 0, int w = -1, int h = -1 )
*/
HB_FUNC_STATIC(QPIXMAP_GRABWINDOW)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 5) && HB_ISPOINTER(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)) &&
      (HB_ISNUM(4) || HB_ISNIL(4)) && (HB_ISNUM(5) || HB_ISNIL(5)))
  {
#endif
    QPixmap *ptr =
        new QPixmap(QPixmap::grabWindow((WId)hb_parptr(1), OPINT(2, 0), OPINT(3, 0), OPINT(4, -1), OPINT(5, -1)));
    Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QPIXMAP_GRABWIDGET)
{
  if (ISNUMPAR(2) && ISQOBJECT(1) && ISQRECT(2))
  {
    /*
    static QPixmap grabWidget( QObject * widget, const QRect & rect )
    */
    QPixmap *ptr = new QPixmap(QPixmap::grabWidget(PQOBJECT(1), *PQRECT(2)));
    Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
  }
  else if (ISBETWEEN(1, 5) && ISQOBJECT(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)) &&
           (HB_ISNUM(4) || HB_ISNIL(4)) && (HB_ISNUM(5) || HB_ISNIL(5)))
  {
    /*
    static QPixmap grabWidget( QObject * widget, int x = 0, int y = 0, int w = -1, int h = -1 )
    */
    QPixmap *ptr = new QPixmap(QPixmap::grabWidget(PQOBJECT(1), OPINT(2, 0), OPINT(3, 0), OPINT(4, -1), OPINT(5, -1)));
    Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPIXMAP_TRUEMATRIX)
{
  if (ISNUMPAR(3) && ISQMATRIX(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    static QMatrix trueMatrix( const QMatrix & m, int w, int h )
    */
    QMatrix *ptr = new QMatrix(QPixmap::trueMatrix(*PQMATRIX(1), PINT(2), PINT(3)));
    Qt5xHb::createReturnClass(ptr, "QMATRIX", true);
  }
  else if (ISNUMPAR(3) && ISQTRANSFORM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    static QTransform trueMatrix( const QTransform & m, int w, int h )
    */
    QTransform *ptr = new QTransform(QPixmap::trueMatrix(*PQTRANSFORM(1), PINT(2), PINT(3)));
    Qt5xHb::createReturnClass(ptr, "QTRANSFORM", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QPixmap fromImage( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC(QPIXMAP_FROMIMAGE)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 2) && ISQIMAGE(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
#endif
    QPixmap *ptr = new QPixmap(QPixmap::fromImage(*PQIMAGE(1), HB_ISNIL(2) ? (Qt::ImageConversionFlags)Qt::AutoColor
                                                                           : (Qt::ImageConversionFlags)hb_parni(2)));
    Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QPixmap fromImageReader( QImageReader * imageReader, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC(QPIXMAP_FROMIMAGEREADER)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 2) && ISQIMAGEREADER(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
#endif
    QPixmap *ptr =
        new QPixmap(QPixmap::fromImageReader(PQIMAGEREADER(1), HB_ISNIL(2) ? (Qt::ImageConversionFlags)Qt::AutoColor
                                                                           : (Qt::ImageConversionFlags)hb_parni(2)));
    Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

//[1]QVariant toVariant()
//[2]static QVariant toVariant( const QPixmap & )

HB_FUNC_STATIC(QPIXMAP_TOVARIANT)
{
  if (ISNUMPAR(0))
  {
    /*
    QVariant toVariant()
    */
    QPixmap *obj = (QPixmap *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QVariant *variant = new QVariant();
      variant->setValue<QPixmap>(*obj);
      Qt5xHb::createReturnClass(variant, "QVARIANT", true);
    }
  }
  else if (ISNUMPAR(1) && ISQPIXMAP(1))
  {
    /*
    static QVariant toVariant( const QPixmap & )
    */
    QPixmap *pixmap = (QPixmap *)hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0));
    QVariant *variant = new QVariant();
    variant->setValue<QPixmap>(*pixmap);
    Qt5xHb::createReturnClass(variant, "QVARIANT", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QPixmap fromVariant( const QVariant & )
*/
HB_FUNC_STATIC(QPIXMAP_FROMVARIANT)
{
  if (ISNUMPAR(1) && ISQVARIANT(1))
  {
    QVariant *variant = (QVariant *)hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0));
    QPixmap *pixmap = new QPixmap(variant->value<QPixmap>());
    Qt5xHb::createReturnClass(pixmap, "QPIXMAP", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
