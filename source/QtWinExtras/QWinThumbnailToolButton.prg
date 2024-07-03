//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QWinThumbnailToolButton INHERIT QObject

   METHOD new
   METHOD delete
   METHOD toolTip
   METHOD setToolTip
   METHOD icon
   METHOD setIcon
   METHOD isEnabled
   METHOD setEnabled
   METHOD isInteractive
   METHOD setInteractive
   METHOD isVisible
   METHOD setVisible
   METHOD dismissOnClick
   METHOD setDismissOnClick
   METHOD isFlat
   METHOD setFlat
   METHOD click

   METHOD onClicked
   METHOD onChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWinThumbnailToolButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtWinExtras/QWinThumbnailToolButton>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtWinExtras/QWinThumbnailToolButton>
#endif
#endif

    /*
    QWinThumbnailToolButton( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QWinThumbnailToolButton *obj = new QWinThumbnailToolButton(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

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
QString toolTip() const
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_TOOLTIP)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->toolTip());
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
void setToolTip( const QString & toolTip )
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_SETTOOLTIP)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setToolTip(PQSTRING(1));
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
QIcon icon() const
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_ICON)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QIcon *ptr = new QIcon(obj->icon());
      Qt5xHb::createReturnClass(ptr, "QICON", true);
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
void setIcon( const QIcon & icon )
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_SETICON)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (ISQICON(1) || HB_ISCHAR(1)))
    {
#endif
      obj->setIcon(HB_ISOBJECT(1) ? *(QIcon *)Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)));
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
bool isEnabled() const
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_ISENABLED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isEnabled());
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
void setEnabled( bool enabled )
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_SETENABLED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setEnabled(PBOOL(1));
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
bool isInteractive() const
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_ISINTERACTIVE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isInteractive());
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
void setInteractive( bool interactive )
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_SETINTERACTIVE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setInteractive(PBOOL(1));
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
bool isVisible() const
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_ISVISIBLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isVisible());
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
void setVisible( bool visible )
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_SETVISIBLE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setVisible(PBOOL(1));
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
bool dismissOnClick() const
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_DISMISSONCLICK)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->dismissOnClick());
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
void setDismissOnClick( bool dismiss )
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_SETDISMISSONCLICK)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setDismissOnClick(PBOOL(1));
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
bool isFlat() const
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_ISFLAT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isFlat());
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
void setFlat( bool flat )
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_SETFLAT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setFlat(PBOOL(1));
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
void click()
*/
HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_CLICK)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButton *obj = (QWinThumbnailToolButton *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->click();
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

void QWinThumbnailToolButtonSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_ONCLICKED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButtonSlots_connect_signal("clicked()", "clicked()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWINTHUMBNAILTOOLBUTTON_ONCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QWinThumbnailToolButtonSlots_connect_signal("changed()", "changed()");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
