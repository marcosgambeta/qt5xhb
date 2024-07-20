//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStyleOptionDockWidget INHERIT QStyleOption

   METHOD new
   METHOD title
   METHOD setTitle
   METHOD closable
   METHOD SetClosable
   METHOD movable
   METHOD setMovable
   METHOD floatable
   METHOD setFloatable
   METHOD verticalTitleBar
   METHOD setVerticalTitleBar

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionDockWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionDockWidget>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionDockWidget>
#endif

HB_FUNC_STATIC(QSTYLEOPTIONDOCKWIDGET_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionDockWidget()
    */
    QStyleOptionDockWidget *obj = new QStyleOptionDockWidget();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONDOCKWIDGET(1))
  {
    /*
    QStyleOptionDockWidget( const QStyleOptionDockWidget &other )
    */
    QStyleOptionDockWidget *obj = new QStyleOptionDockWidget(*PQSTYLEOPTIONDOCKWIDGET(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString title
*/
HB_FUNC_STATIC(QSTYLEOPTIONDOCKWIDGET_TITLE)
{
  QStyleOptionDockWidget *obj = (QStyleOptionDockWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RQSTRING(obj->title);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONDOCKWIDGET_SETTITLE)
{
  QStyleOptionDockWidget *obj = (QStyleOptionDockWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
      obj->title = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool closable
*/
HB_FUNC_STATIC(QSTYLEOPTIONDOCKWIDGET_CLOSABLE)
{
  QStyleOptionDockWidget *obj = (QStyleOptionDockWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->closable);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONDOCKWIDGET_SETCLOSABLE)
{
  QStyleOptionDockWidget *obj = (QStyleOptionDockWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->closable = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool movable
*/
HB_FUNC_STATIC(QSTYLEOPTIONDOCKWIDGET_MOVABLE)
{
  QStyleOptionDockWidget *obj = (QStyleOptionDockWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->movable);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONDOCKWIDGET_SETMOVABLE)
{
  QStyleOptionDockWidget *obj = (QStyleOptionDockWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->movable = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool floatable
*/
HB_FUNC_STATIC(QSTYLEOPTIONDOCKWIDGET_FLOATABLE)
{
  QStyleOptionDockWidget *obj = (QStyleOptionDockWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->floatable);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONDOCKWIDGET_SETFLOATABLE)
{
  QStyleOptionDockWidget *obj = (QStyleOptionDockWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->floatable = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool verticalTitleBar
*/
HB_FUNC_STATIC(QSTYLEOPTIONDOCKWIDGET_VERTICALTITLEBAR)
{
  QStyleOptionDockWidget *obj = (QStyleOptionDockWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->verticalTitleBar);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONDOCKWIDGET_SETVERTICALTITLEBAR)
{
  QStyleOptionDockWidget *obj = (QStyleOptionDockWidget *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->verticalTitleBar = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
