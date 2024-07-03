//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLIGHTREADING
#endif

CLASS QLightSensor INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading
   METHOD fieldOfView
   METHOD setFieldOfView

   METHOD onFieldOfViewChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QLightSensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtSensors/QLightSensor>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtSensors/QLightSensor>
#endif
#endif

    /*
    QLightSensor( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QLIGHTSENSOR_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QLightSensor *obj = new QLightSensor(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QLIGHTSENSOR_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QLightSensor *obj = (QLightSensor *)Qt5xHb::itemGetPtrStackSelfItem();

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
QLightReading * reading() const
*/
HB_FUNC_STATIC(QLIGHTSENSOR_READING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QLightSensor *obj = (QLightSensor *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QLightReading *ptr = obj->reading();
      Qt5xHb::createReturnQObjectClass(ptr, "QLIGHTREADING");
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
qreal fieldOfView() const
*/
HB_FUNC_STATIC(QLIGHTSENSOR_FIELDOFVIEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QLightSensor *obj = (QLightSensor *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->fieldOfView());
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
void setFieldOfView( qreal fieldOfView )
*/
HB_FUNC_STATIC(QLIGHTSENSOR_SETFIELDOFVIEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QLightSensor *obj = (QLightSensor *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFieldOfView(PQREAL(1));
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

void QLightSensorSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QLIGHTSENSOR_ONFIELDOFVIEWCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QLightSensorSlots_connect_signal("fieldOfViewChanged(qreal)", "fieldOfViewChanged(qreal)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
