/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVCANDLESTICKMODELMAPPERSLOTS_H
#define QVCANDLESTICKMODELMAPPERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QVCandlestickModelMapper>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

class QVCandlestickModelMapperSlots: public QObject
{
  Q_OBJECT
  public:
  QVCandlestickModelMapperSlots( QObject *parent = 0 );
  ~QVCandlestickModelMapperSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void closeRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void firstSetColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void highRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void lastSetColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void lowRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void openRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void timestampRowChanged();
#endif
};

#endif /* QVCANDLESTICKMODELMAPPERSLOTS_H */
