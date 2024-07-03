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
REQUEST QQMLCONTEXT
REQUEST QQMLENGINE
REQUEST QQMLERROR
REQUEST QVARIANT
#endif

CLASS QQmlExpression INHERIT QObject

   METHOD new
   METHOD delete
   METHOD clearError
   METHOD columnNumber
   METHOD context
   METHOD engine
   METHOD error
   METHOD evaluate
   METHOD expression
   METHOD hasError
   METHOD lineNumber
   METHOD notifyOnValueChanged
   METHOD scopeObject
   METHOD setExpression
   METHOD setNotifyOnValueChanged
   METHOD setSourceLocation
   METHOD sourceFile

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQmlExpression
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQml/QQmlExpression>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtQml/QQmlExpression>
#endif

#include <QtQml/QQmlContext>
#include <QtQml/QQmlEngine>

HB_FUNC_STATIC(QQMLEXPRESSION_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QQmlExpression()
    */
    QQmlExpression *obj = new QQmlExpression();
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(3, 4) && ISQQMLCONTEXT(1) && ISQOBJECT(2) && HB_ISCHAR(3) && (ISQOBJECT(4) || HB_ISNIL(4)))
  {
    /*
    QQmlExpression( QQmlContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )
    */
    QQmlExpression *obj = new QQmlExpression(PQQMLCONTEXT(1), PQOBJECT(2), PQSTRING(3), OPQOBJECT(4, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 4) && ISQQMLSCRIPTSTRING(1) && (ISQQMLCONTEXT(2) || HB_ISNIL(2)) &&
           (ISQOBJECT(3) || HB_ISNIL(3)) && (ISQOBJECT(4) || HB_ISNIL(4)))
  {
    /*
    QQmlExpression( const QQmlScriptString & script, QQmlContext * ctxt = 0, QObject * scope = 0, QObject * parent = 0 )
    */
    QQmlExpression *obj =
        new QQmlExpression(*PQQMLSCRIPTSTRING(1), OPQQMLCONTEXT(2, 0), OPQOBJECT(3, 0), OPQOBJECT(4, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QQMLEXPRESSION_DELETE)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

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
void clearError()
*/
HB_FUNC_STATIC(QQMLEXPRESSION_CLEARERROR)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clearError();
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
int columnNumber() const
*/
HB_FUNC_STATIC(QQMLEXPRESSION_COLUMNNUMBER)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->columnNumber());
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
QQmlContext * context() const
*/
HB_FUNC_STATIC(QQMLEXPRESSION_CONTEXT)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QQmlContext *ptr = obj->context();
      Qt5xHb::createReturnQObjectClass(ptr, "QQMLCONTEXT");
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
QQmlEngine * engine() const
*/
HB_FUNC_STATIC(QQMLEXPRESSION_ENGINE)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QQmlEngine *ptr = obj->engine();
      Qt5xHb::createReturnQObjectClass(ptr, "QQMLENGINE");
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
QQmlError error() const
*/
HB_FUNC_STATIC(QQMLEXPRESSION_ERROR)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QQmlError *ptr = new QQmlError(obj->error());
      Qt5xHb::createReturnClass(ptr, "QQMLERROR", true);
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
QVariant evaluate( bool * valueIsUndefined = 0 )
*/
HB_FUNC_STATIC(QQMLEXPRESSION_EVALUATE)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)))
    {
#endif
      bool par1;
      QVariant *ptr = new QVariant(obj->evaluate(&par1));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
      hb_storl(par1, 1);
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
QString expression() const
*/
HB_FUNC_STATIC(QQMLEXPRESSION_EXPRESSION)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->expression());
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
bool hasError() const
*/
HB_FUNC_STATIC(QQMLEXPRESSION_HASERROR)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasError());
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
int lineNumber() const
*/
HB_FUNC_STATIC(QQMLEXPRESSION_LINENUMBER)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->lineNumber());
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
bool notifyOnValueChanged() const
*/
HB_FUNC_STATIC(QQMLEXPRESSION_NOTIFYONVALUECHANGED)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->notifyOnValueChanged());
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
QObject * scopeObject() const
*/
HB_FUNC_STATIC(QQMLEXPRESSION_SCOPEOBJECT)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QObject *ptr = obj->scopeObject();
      Qt5xHb::createReturnQObjectClass(ptr, "QOBJECT");
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
void setExpression( const QString & expression )
*/
HB_FUNC_STATIC(QQMLEXPRESSION_SETEXPRESSION)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setExpression(PQSTRING(1));
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
void setNotifyOnValueChanged( bool notifyOnChange )
*/
HB_FUNC_STATIC(QQMLEXPRESSION_SETNOTIFYONVALUECHANGED)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setNotifyOnValueChanged(PBOOL(1));
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
void setSourceLocation( const QString & url, int line, int column = 0 )
*/
HB_FUNC_STATIC(QQMLEXPRESSION_SETSOURCELOCATION)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      obj->setSourceLocation(PQSTRING(1), PINT(2), OPINT(3, 0));
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
QString sourceFile() const
*/
HB_FUNC_STATIC(QQMLEXPRESSION_SOURCEFILE)
{
  QQmlExpression *obj = (QQmlExpression *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->sourceFile());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QQmlExpressionSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QQMLEXPRESSION_ONVALUECHANGED)
{
  QQmlExpressionSlots_connect_signal("valueChanged()", "valueChanged()");
}

#pragma ENDDUMP
