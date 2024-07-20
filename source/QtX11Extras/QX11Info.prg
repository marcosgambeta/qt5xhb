//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QX11Info

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isPlatformX11
   METHOD appDpiX
   METHOD appDpiY
   METHOD appRootWindow
   METHOD appScreen
   METHOD appTime
   METHOD appUserTime
   METHOD setAppTime
   METHOD setAppUserTime
   METHOD getTimestamp
   METHOD display
   METHOD connection
   METHOD nextStartupId
   METHOD setNextStartupId

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QX11Info
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtX11Extras/QX11Info>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtX11Extras/QX11Info>
#endif
#endif

HB_FUNC_STATIC(QX11INFO_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QX11Info *obj = (QX11Info *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
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
static bool isPlatformX11()
*/
HB_FUNC_STATIC(QX11INFO_ISPLATFORMX11)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RBOOL(QX11Info::isPlatformX11());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static int appDpiX( int screen = -1 )
*/
HB_FUNC_STATIC(QX11INFO_APPDPIX)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
  {
#endif
    RINT(QX11Info::appDpiX(OPINT(1, -1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static int appDpiY( int screen = -1 )
*/
HB_FUNC_STATIC(QX11INFO_APPDPIY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
  {
#endif
    RINT(QX11Info::appDpiY(OPINT(1, -1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static unsigned long appRootWindow( int screen = -1 )
*/
HB_FUNC_STATIC(QX11INFO_APPROOTWINDOW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
  {
#endif
    RUNSIGNEDLONG(QX11Info::appRootWindow(OPINT(1, -1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static int appScreen()
*/
HB_FUNC_STATIC(QX11INFO_APPSCREEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RINT(QX11Info::appScreen());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static unsigned long appTime()
*/
HB_FUNC_STATIC(QX11INFO_APPTIME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RUNSIGNEDLONG(QX11Info::appTime());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static unsigned long appUserTime()
*/
HB_FUNC_STATIC(QX11INFO_APPUSERTIME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RUNSIGNEDLONG(QX11Info::appUserTime());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static void setAppTime( unsigned long time )
*/
HB_FUNC_STATIC(QX11INFO_SETAPPTIME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    QX11Info::setAppTime(PUNSIGNEDLONG(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static void setAppUserTime( unsigned long time )
*/
HB_FUNC_STATIC(QX11INFO_SETAPPUSERTIME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    QX11Info::setAppUserTime(PUNSIGNEDLONG(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static unsigned long getTimestamp()
*/
HB_FUNC_STATIC(QX11INFO_GETTIMESTAMP)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RUNSIGNEDLONG(QX11Info::getTimestamp());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static Display * display()
*/
HB_FUNC_STATIC(QX11INFO_DISPLAY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    hb_retptr((Display *)QX11Info::display());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static xcb_connection_t * connection()
*/
HB_FUNC_STATIC(QX11INFO_CONNECTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    hb_retptr((xcb_connection_t *)QX11Info::connection());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QByteArray nextStartupId()
*/
HB_FUNC_STATIC(QX11INFO_NEXTSTARTUPID)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QByteArray *ptr = new QByteArray(QX11Info::nextStartupId());
    Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static void setNextStartupId( const QByteArray &id )
*/
HB_FUNC_STATIC(QX11INFO_SETNEXTSTARTUPID)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
#endif
    QX11Info::setNextStartupId(*PQBYTEARRAY(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
#endif
}

HB_FUNC_STATIC(QX11INFO_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QX11INFO_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QX11INFO_NEWFROM);
}

HB_FUNC_STATIC(QX11INFO_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QX11INFO_NEWFROM);
}

HB_FUNC_STATIC(QX11INFO_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QX11INFO_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
