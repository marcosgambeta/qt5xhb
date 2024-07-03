//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

CLASS QMagnetometerReading INHERIT QSensorReading

   METHOD delete
   METHOD x
   METHOD setX
   METHOD y
   METHOD setY
   METHOD z
   METHOD setZ
   METHOD calibrationLevel
   METHOD setCalibrationLevel

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMagnetometerReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtSensors/QMagnetometerReading>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtSensors/QMagnetometerReading>
#endif
#endif

HB_FUNC_STATIC(QMAGNETOMETERREADING_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QMagnetometerReading *obj = (QMagnetometerReading *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
qreal x() const
*/
HB_FUNC_STATIC(QMAGNETOMETERREADING_X)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QMagnetometerReading *obj = (QMagnetometerReading *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->x());
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
void setX( qreal x )
*/
HB_FUNC_STATIC(QMAGNETOMETERREADING_SETX)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QMagnetometerReading *obj = (QMagnetometerReading *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setX(PQREAL(1));
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
qreal y() const
*/
HB_FUNC_STATIC(QMAGNETOMETERREADING_Y)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QMagnetometerReading *obj = (QMagnetometerReading *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->y());
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
void setY( qreal y )
*/
HB_FUNC_STATIC(QMAGNETOMETERREADING_SETY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QMagnetometerReading *obj = (QMagnetometerReading *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setY(PQREAL(1));
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
qreal z() const
*/
HB_FUNC_STATIC(QMAGNETOMETERREADING_Z)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QMagnetometerReading *obj = (QMagnetometerReading *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->z());
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
void setZ( qreal z )
*/
HB_FUNC_STATIC(QMAGNETOMETERREADING_SETZ)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QMagnetometerReading *obj = (QMagnetometerReading *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setZ(PQREAL(1));
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
qreal calibrationLevel() const
*/
HB_FUNC_STATIC(QMAGNETOMETERREADING_CALIBRATIONLEVEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QMagnetometerReading *obj = (QMagnetometerReading *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->calibrationLevel());
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
void setCalibrationLevel( qreal calibrationLevel )
*/
HB_FUNC_STATIC(QMAGNETOMETERREADING_SETCALIBRATIONLEVEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QMagnetometerReading *obj = (QMagnetometerReading *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCalibrationLevel(PQREAL(1));
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
