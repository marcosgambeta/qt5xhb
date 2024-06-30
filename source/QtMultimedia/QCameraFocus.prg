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
REQUEST QCAMERAFOCUSZONE
REQUEST QPOINTF
#endif

CLASS QCameraFocus INHERIT QObject

   METHOD focusMode
   METHOD setFocusMode
   METHOD focusPointMode
   METHOD setFocusPointMode
   METHOD customFocusPoint
   METHOD setCustomFocusPoint
   METHOD focusZones
   METHOD opticalZoom
   METHOD digitalZoom
   METHOD isAvailable
   METHOD isFocusModeSupported
   METHOD isFocusPointModeSupported
   METHOD maximumDigitalZoom
   METHOD maximumOpticalZoom
   METHOD zoomTo

   METHOD onDigitalZoomChanged
   METHOD onFocusZonesChanged
   METHOD onMaximumDigitalZoomChanged
   METHOD onMaximumOpticalZoomChanged
   METHOD onOpticalZoomChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraFocus
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraFocus>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraFocus>
#endif

    /*
    QCameraFocus::FocusModes focusMode() const
    */
HB_FUNC_STATIC(QCAMERAFOCUS_FOCUSMODE)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->focusMode());
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
void setFocusMode( QCameraFocus::FocusModes mode )
*/
HB_FUNC_STATIC(QCAMERAFOCUS_SETFOCUSMODE)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFocusMode((QCameraFocus::FocusModes)hb_parni(1));
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
QCameraFocus::FocusPointMode focusPointMode() const
*/
HB_FUNC_STATIC(QCAMERAFOCUS_FOCUSPOINTMODE)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->focusPointMode());
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
void setFocusPointMode( QCameraFocus::FocusPointMode mode )
*/
HB_FUNC_STATIC(QCAMERAFOCUS_SETFOCUSPOINTMODE)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFocusPointMode((QCameraFocus::FocusPointMode)hb_parni(1));
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
QPointF customFocusPoint() const
*/
HB_FUNC_STATIC(QCAMERAFOCUS_CUSTOMFOCUSPOINT)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->customFocusPoint());
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
void setCustomFocusPoint( const QPointF & point )
*/
HB_FUNC_STATIC(QCAMERAFOCUS_SETCUSTOMFOCUSPOINT)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOINTF(1))
    {
#endif
      obj->setCustomFocusPoint(*PQPOINTF(1));
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
QCameraFocusZoneList focusZones() const
*/
HB_FUNC_STATIC(QCAMERAFOCUS_FOCUSZONES)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QCameraFocusZoneList list = obj->focusZones();
      PHB_DYNS pDynSym = hb_dynsymFindName("QCAMERAFOCUSZONE");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if (pDynSym != NULL)
      {
        for (int i = 0; i < list.count(); i++)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QCameraFocusZone(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QCAMERAFOCUSZONE", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
qreal opticalZoom() const
*/
HB_FUNC_STATIC(QCAMERAFOCUS_OPTICALZOOM)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->opticalZoom());
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
qreal digitalZoom() const
*/
HB_FUNC_STATIC(QCAMERAFOCUS_DIGITALZOOM)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->digitalZoom());
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
bool isAvailable() const
*/
HB_FUNC_STATIC(QCAMERAFOCUS_ISAVAILABLE)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isAvailable());
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
bool isFocusModeSupported( QCameraFocus::FocusModes mode ) const
*/
HB_FUNC_STATIC(QCAMERAFOCUS_ISFOCUSMODESUPPORTED)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isFocusModeSupported((QCameraFocus::FocusModes)hb_parni(1)));
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
bool isFocusPointModeSupported( QCameraFocus::FocusPointMode mode ) const
*/
HB_FUNC_STATIC(QCAMERAFOCUS_ISFOCUSPOINTMODESUPPORTED)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isFocusPointModeSupported((QCameraFocus::FocusPointMode)hb_parni(1)));
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
qreal maximumDigitalZoom() const
*/
HB_FUNC_STATIC(QCAMERAFOCUS_MAXIMUMDIGITALZOOM)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->maximumDigitalZoom());
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
qreal maximumOpticalZoom() const
*/
HB_FUNC_STATIC(QCAMERAFOCUS_MAXIMUMOPTICALZOOM)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->maximumOpticalZoom());
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
void zoomTo( qreal opticalZoom, qreal digitalZoom )
*/
HB_FUNC_STATIC(QCAMERAFOCUS_ZOOMTO)
{
  QCameraFocus *obj = (QCameraFocus *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->zoomTo(PQREAL(1), PQREAL(2));
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

void QCameraFocusSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCAMERAFOCUS_ONDIGITALZOOMCHANGED)
{
  QCameraFocusSlots_connect_signal("digitalZoomChanged(qreal)", "digitalZoomChanged(qreal)");
}

HB_FUNC_STATIC(QCAMERAFOCUS_ONFOCUSZONESCHANGED)
{
  QCameraFocusSlots_connect_signal("focusZonesChanged()", "focusZonesChanged()");
}

HB_FUNC_STATIC(QCAMERAFOCUS_ONMAXIMUMDIGITALZOOMCHANGED)
{
  QCameraFocusSlots_connect_signal("maximumDigitalZoomChanged(qreal)", "maximumDigitalZoomChanged(qreal)");
}

HB_FUNC_STATIC(QCAMERAFOCUS_ONMAXIMUMOPTICALZOOMCHANGED)
{
  QCameraFocusSlots_connect_signal("maximumOpticalZoomChanged(qreal)", "maximumOpticalZoomChanged(qreal)");
}

HB_FUNC_STATIC(QCAMERAFOCUS_ONOPTICALZOOMCHANGED)
{
  QCameraFocusSlots_connect_signal("opticalZoomChanged(qreal)", "opticalZoomChanged(qreal)");
}

#pragma ENDDUMP
