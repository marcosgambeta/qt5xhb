//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QCANDLESTICKSERIES
#endif

CLASS QCandlestickModelMapper INHERIT QObject

   METHOD model
   METHOD setModel
   METHOD series
   METHOD setSeries
   METHOD orientation

   METHOD onModelReplaced
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCandlestickModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#include <QtCharts/QCandlestickModelMapper>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#include <QtCharts/QCandlestickModelMapper>
#endif
#endif

#include <QtCore/QAbstractItemModel>
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
#include <QtCharts/QCandlestickSeries>
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
    using namespace QtCharts;
#endif

/*
QAbstractItemModel * model() const
*/
HB_FUNC_STATIC(QCANDLESTICKMODELMAPPER_MODEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickModelMapper *obj = (QCandlestickModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAbstractItemModel *ptr = obj->model();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTITEMMODEL");
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
void setModel( QAbstractItemModel * model )
*/
HB_FUNC_STATIC(QCANDLESTICKMODELMAPPER_SETMODEL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickModelMapper *obj = (QCandlestickModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1))
    {
#endif
      obj->setModel(PQABSTRACTITEMMODEL(1));
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
QCandlestickSeries * series() const
*/
HB_FUNC_STATIC(QCANDLESTICKMODELMAPPER_SERIES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickModelMapper *obj = (QCandlestickModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QCandlestickSeries *ptr = obj->series();
      Qt5xHb::createReturnQObjectClass(ptr, "QCANDLESTICKSERIES");
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
void setSeries( QCandlestickSeries * series )
*/
HB_FUNC_STATIC(QCANDLESTICKMODELMAPPER_SETSERIES)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickModelMapper *obj = (QCandlestickModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQCANDLESTICKSERIES(1))
    {
#endif
      obj->setSeries(PQCANDLESTICKSERIES(1));
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
virtual Qt::Orientation orientation() const = 0
*/
HB_FUNC_STATIC(QCANDLESTICKMODELMAPPER_ORIENTATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickModelMapper *obj = (QCandlestickModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->orientation());
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

void QCandlestickModelMapperSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCANDLESTICKMODELMAPPER_ONMODELREPLACED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickModelMapperSlots_connect_signal("modelReplaced()", "modelReplaced()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QCANDLESTICKMODELMAPPER_ONSERIESREPLACED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 8, 0))
  QCandlestickModelMapperSlots_connect_signal("seriesReplaced()", "seriesReplaced()");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
