/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraImageProcessing INHERIT QObject

   METHOD contrast
   METHOD denoisingLevel
   METHOD isAvailable
   METHOD isWhiteBalanceModeSupported
   METHOD manualWhiteBalance
   METHOD saturation
   METHOD setContrast
   METHOD setDenoisingLevel
   METHOD setManualWhiteBalance
   METHOD setSaturation
   METHOD setSharpeningLevel
   METHOD setWhiteBalanceMode
   METHOD sharpeningLevel
   METHOD whiteBalanceMode
   METHOD brightness
   METHOD setBrightness
   METHOD colorFilter
   METHOD setColorFilter
   METHOD isColorFilterSupported

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraImageProcessing
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraImageProcessing>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraImageProcessing>
#endif

/*
QCameraImageProcessing(QCamera *camera) (private)
*/

/*
~QCameraImageProcessing() (private)
*/

/*
qreal contrast() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_CONTRAST )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->contrast () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal denoisingLevel() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_DENOISINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->denoisingLevel () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_ISAVAILABLE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isWhiteBalanceModeSupported(WhiteBalanceMode mode) const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_ISWHITEBALANCEMODESUPPORTED )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->isWhiteBalanceModeSupported ( (QCameraImageProcessing::WhiteBalanceMode) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal manualWhiteBalance() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_MANUALWHITEBALANCE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->manualWhiteBalance () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal saturation() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SATURATION )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->saturation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setContrast(qreal value)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETCONTRAST )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setContrast ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDenoisingLevel(qreal value)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETDENOISINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDenoisingLevel ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setManualWhiteBalance(qreal colorTemperature)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETMANUALWHITEBALANCE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setManualWhiteBalance ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSaturation(qreal value)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETSATURATION )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSaturation ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSharpeningLevel(qreal level)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETSHARPENINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setSharpeningLevel ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWhiteBalanceMode(WhiteBalanceMode mode)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETWHITEBALANCEMODE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setWhiteBalanceMode ( (QCameraImageProcessing::WhiteBalanceMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal sharpeningLevel() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SHARPENINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->sharpeningLevel () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
WhiteBalanceMode whiteBalanceMode() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_WHITEBALANCEMODE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->whiteBalanceMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal brightness() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_BRIGHTNESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->brightness () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setBrightness(qreal value)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETBRIGHTNESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setBrightness ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
ColorFilter colorFilter() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_COLORFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->colorFilter () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setColorFilter(ColorFilter filter)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETCOLORFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setColorFilter ( (QCameraImageProcessing::ColorFilter) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isColorFilterSupported(ColorFilter filter) const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_ISCOLORFILTERSUPPORTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->isColorFilterSupported ( (QCameraImageProcessing::ColorFilter) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

#pragma ENDDUMP
