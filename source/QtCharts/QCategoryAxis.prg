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

CLASS QCategoryAxis INHERIT QValueAxis

   METHOD new
   METHOD delete
   METHOD startValue
   METHOD setStartValue
   METHOD categoriesLabels
   METHOD count
   METHOD labelsPosition
   METHOD setLabelsPosition
   METHOD type
   METHOD append
   METHOD remove
   METHOD replaceLabel
   METHOD endValue

   METHOD onCategoriesChanged
   METHOD onLabelsPositionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCategoryAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QCategoryAxis>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
#include <QtCharts/QCategoryAxis>
#endif
#endif

    using namespace QtCharts;

/*
QCategoryAxis( QObject * parent = nullptr )
*/
HB_FUNC_STATIC(QCATEGORYAXIS_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QCategoryAxis *obj = new QCategoryAxis(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
~QCategoryAxis()
*/
HB_FUNC_STATIC(QCATEGORYAXIS_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

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
qreal startValue( const QString & categoryLabel = QString() ) const
*/
HB_FUNC_STATIC(QCATEGORYAXIS_STARTVALUE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISCHAR(1) || HB_ISNIL(1)))
    {
#endif
      RQREAL(obj->startValue(OPQSTRING(1, QString())));
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
void setStartValue( qreal min )
*/
HB_FUNC_STATIC(QCATEGORYAXIS_SETSTARTVALUE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setStartValue(PQREAL(1));
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
QStringList categoriesLabels()
*/
HB_FUNC_STATIC(QCATEGORYAXIS_CATEGORIESLABELS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->categoriesLabels());
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
int count() const
*/
HB_FUNC_STATIC(QCATEGORYAXIS_COUNT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->count());
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
QCategoryAxis::AxisLabelsPosition labelsPosition() const
*/
HB_FUNC_STATIC(QCATEGORYAXIS_LABELSPOSITION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->labelsPosition());
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
void setLabelsPosition( QCategoryAxis::AxisLabelsPosition position )
*/
HB_FUNC_STATIC(QCATEGORYAXIS_SETLABELSPOSITION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setLabelsPosition((QCategoryAxis::AxisLabelsPosition)hb_parni(1));
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
QAbstractAxis::AxisType type() const
*/
HB_FUNC_STATIC(QCATEGORYAXIS_TYPE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->type());
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
void append( const QString & label, qreal categoryEndValue )
*/
HB_FUNC_STATIC(QCATEGORYAXIS_APPEND)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2))
    {
#endif
      obj->append(PQSTRING(1), PQREAL(2));
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
void remove( const QString & label )
*/
HB_FUNC_STATIC(QCATEGORYAXIS_REMOVE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->remove(PQSTRING(1));
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
void replaceLabel( const QString & oldLabel, const QString & newLabel )
*/
HB_FUNC_STATIC(QCATEGORYAXIS_REPLACELABEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
    {
#endif
      obj->replaceLabel(PQSTRING(1), PQSTRING(2));
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
qreal endValue( const QString & categoryLabel ) const
*/
HB_FUNC_STATIC(QCATEGORYAXIS_ENDVALUE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxis *obj = (QCategoryAxis *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RQREAL(obj->endValue(PQSTRING(1)));
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

void QCategoryAxisSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCATEGORYAXIS_ONCATEGORIESCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxisSlots_connect_signal("categoriesChanged()", "categoriesChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCATEGORYAXIS_ONLABELSPOSITIONCHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QCategoryAxisSlots_connect_signal("labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)",
                                    "labelsPositionChanged(QCategoryAxis::AxisLabelsPosition)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
