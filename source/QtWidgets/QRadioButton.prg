//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QRadioButton INHERIT QAbstractButton

   METHOD new
   METHOD delete
   METHOD sizeHint
   METHOD minimumSizeHint

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRadioButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QRadioButton>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QRadioButton>
#endif

HB_FUNC_STATIC(QRADIOBUTTON_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    /*
    QRadioButton( QWidget * parent = 0 )
    */
    QRadioButton *obj = new QRadioButton(OPQWIDGET(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    /*
    QRadioButton( const QString &text, QWidget * parent = 0 )
    */
    QRadioButton *obj = new QRadioButton(PQSTRING(1), OPQWIDGET(2, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QRADIOBUTTON_DELETE)
{
  QRadioButton *obj = qobject_cast<QRadioButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
}

/*
QSize sizeHint() const
*/
HB_FUNC_STATIC(QRADIOBUTTON_SIZEHINT)
{
  QRadioButton *obj = qobject_cast<QRadioButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->sizeHint());
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
QSize minimumSizeHint() const
*/
HB_FUNC_STATIC(QRADIOBUTTON_MINIMUMSIZEHINT)
{
  QRadioButton *obj = qobject_cast<QRadioButton *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->minimumSizeHint());
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

#pragma ENDDUMP
