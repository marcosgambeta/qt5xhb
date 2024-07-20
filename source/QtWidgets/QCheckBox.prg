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

CLASS QCheckBox INHERIT QAbstractButton

   METHOD new
   METHOD delete
   METHOD checkState
   METHOD isTristate
   METHOD setCheckState
   METHOD setTristate
   METHOD minimumSizeHint
   METHOD sizeHint

   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCheckBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QCheckBox>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QCheckBox>
#endif

HB_FUNC_STATIC(QCHECKBOX_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    /*
    QCheckBox( QWidget * parent = 0 )
    */
    QCheckBox *obj = new QCheckBox(OPQWIDGET(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    /*
    QCheckBox( const QString &text, QWidget * parent = 0 )
    */
    QCheckBox *obj = new QCheckBox(PQSTRING(1), OPQWIDGET(2, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QCHECKBOX_DELETE)
{
  QCheckBox *obj = qobject_cast<QCheckBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
Qt::CheckState checkState() const
*/
HB_FUNC_STATIC(QCHECKBOX_CHECKSTATE)
{
  QCheckBox *obj = qobject_cast<QCheckBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->checkState());
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
bool isTristate() const
*/
HB_FUNC_STATIC(QCHECKBOX_ISTRISTATE)
{
  QCheckBox *obj = qobject_cast<QCheckBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isTristate());
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
void setCheckState( Qt::CheckState state )
*/
HB_FUNC_STATIC(QCHECKBOX_SETCHECKSTATE)
{
  QCheckBox *obj = qobject_cast<QCheckBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCheckState((Qt::CheckState)hb_parni(1));
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
void setTristate( bool y = true )
*/
HB_FUNC_STATIC(QCHECKBOX_SETTRISTATE)
{
  QCheckBox *obj = qobject_cast<QCheckBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)))
    {
#endif
      obj->setTristate(OPBOOL(1, true));
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
QSize minimumSizeHint() const
*/
HB_FUNC_STATIC(QCHECKBOX_MINIMUMSIZEHINT)
{
  QCheckBox *obj = qobject_cast<QCheckBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

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

/*
QSize sizeHint() const
*/
HB_FUNC_STATIC(QCHECKBOX_SIZEHINT)
{
  QCheckBox *obj = qobject_cast<QCheckBox *>(Qt5xHb::getQObjectPointerFromSelfItem());

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

void QCheckBoxSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCHECKBOX_ONSTATECHANGED)
{
  QCheckBoxSlots_connect_signal("stateChanged(int)", "stateChanged(int)");
}

#pragma ENDDUMP
