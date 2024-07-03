//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGEXP
#endif

CLASS QRegExpValidator INHERIT QValidator

   METHOD new
   METHOD delete
   METHOD regExp
   METHOD setRegExp
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRegExpValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QRegExpValidator>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QRegExpValidator>
#endif

HB_FUNC_STATIC(QREGEXPVALIDATOR_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    /*
    QRegExpValidator( QObject * parent = 0 )
    */
    QRegExpValidator *obj = new QRegExpValidator(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISNUMPAR(2) && ISQREGEXP(1) && ISQOBJECT(2))
  {
    /*
    QRegExpValidator( const QRegExp & rx, QObject * parent = 0 )
    */
    QRegExpValidator *obj = new QRegExpValidator(*PQREGEXP(1), OPQOBJECT(2, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QREGEXPVALIDATOR_DELETE)
{
  QRegExpValidator *obj = (QRegExpValidator *)Qt5xHb::itemGetPtrStackSelfItem();

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
const QRegExp & regExp() const
*/
HB_FUNC_STATIC(QREGEXPVALIDATOR_REGEXP)
{
  QRegExpValidator *obj = (QRegExpValidator *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      const QRegExp *ptr = &obj->regExp();
      Qt5xHb::createReturnClass(ptr, "QREGEXP", false);
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
void setRegExp( const QRegExp & rx )
*/
HB_FUNC_STATIC(QREGEXPVALIDATOR_SETREGEXP)
{
  QRegExpValidator *obj = (QRegExpValidator *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQREGEXP(1))
    {
#endif
      obj->setRegExp(*PQREGEXP(1));
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
virtual QValidator::State validate( QString & input, int & pos ) const
*/
HB_FUNC_STATIC(QREGEXPVALIDATOR_VALIDATE)
{
  QRegExpValidator *obj = (QRegExpValidator *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2))
    {
#endif
      QString par1 = hb_parc(1);
      int par2;
      RENUM(obj->validate(par1, par2));
      hb_storc(QSTRINGTOSTRING(par1), 1);
      hb_storni(par2, 2);
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
