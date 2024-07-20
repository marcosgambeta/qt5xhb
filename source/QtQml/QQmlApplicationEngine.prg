//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QQmlApplicationEngine INHERIT QQmlEngine

   METHOD new
   METHOD delete
   METHOD rootObjects
   METHOD load
   METHOD loadData

   METHOD onObjectCreated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQmlApplicationEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtQml/QQmlApplicationEngine>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtQml/QQmlApplicationEngine>
#endif
#endif

HB_FUNC_STATIC(QQMLAPPLICATIONENGINE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QQmlApplicationEngine( QObject * parent = 0 )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
    QQmlApplicationEngine *obj = new QQmlApplicationEngine(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else if (ISBETWEEN(1, 2) && ISQURL(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QQmlApplicationEngine( const QUrl &url, QObject * parent = 0 )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
    QQmlApplicationEngine *obj = new QQmlApplicationEngine(*PQURL(1), OPQOBJECT(2, 0));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    /*
    QQmlApplicationEngine( const QString &filePath, QObject * parent = 0 )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
    QQmlApplicationEngine *obj = new QQmlApplicationEngine(PQSTRING(1), OPQOBJECT(2, 0));
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QQMLAPPLICATIONENGINE_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QQmlApplicationEngine *obj = (QQmlApplicationEngine *)Qt5xHb::itemGetPtrStackSelfItem();

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
QList<QObject*> rootObjects()
*/
HB_FUNC_STATIC(QQMLAPPLICATIONENGINE_ROOTOBJECTS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QQmlApplicationEngine *obj = (QQmlApplicationEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QObject *> list = obj->rootObjects();
      PHB_DYNS pDynSym = hb_dynsymFindName("QOBJECT");
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
          PHB_ITEM pItem = hb_itemPutPtr(NULL, list[i]);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QOBJECT", HB_ERR_ARGS_BASEPARAMS);
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
#endif
}

HB_FUNC_STATIC(QQMLAPPLICATIONENGINE_LOAD)
{
  if (ISNUMPAR(1) && ISQURL(1))
  {
    /*
    void load( const QUrl &url )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
    QQmlApplicationEngine *obj = (QQmlApplicationEngine *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->load(*PQURL(1));
    }

    hb_itemReturn(hb_stackSelfItem());
#endif
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    void load( const QString &filePath )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
    QQmlApplicationEngine *obj = (QQmlApplicationEngine *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->load(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void loadData( const QByteArray &data, const QUrl &url = QUrl() )
*/
HB_FUNC_STATIC(QQMLAPPLICATIONENGINE_LOADDATA)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QQmlApplicationEngine *obj = (QQmlApplicationEngine *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQBYTEARRAY(1) && (ISQURL(2) || HB_ISNIL(2)))
    {
#endif
      obj->loadData(*PQBYTEARRAY(1), HB_ISNIL(2) ? QUrl() : *(QUrl *)Qt5xHb::itemGetPtr(2));
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

void QQmlApplicationEngineSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QQMLAPPLICATIONENGINE_ONOBJECTCREATED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  QQmlApplicationEngineSlots_connect_signal("objectCreated(QObject*,QUrl)", "objectCreated(QObject*,QUrl)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
