/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVBOXPLOTMODELMAPPERSLOTS_H
#define QVBOXPLOTMODELMAPPERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QVBoxPlotModelMapper>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class QVBoxPlotModelMapperSlots: public QObject
{
  Q_OBJECT
  public:
  QVBoxPlotModelMapperSlots( QObject *parent = 0 );
  ~QVBoxPlotModelMapperSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void firstBoxSetColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void firstRowChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void lastBoxSetColumnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void modelReplaced();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void rowCountChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void seriesReplaced();
#endif
};

#endif /* QVBOXPLOTMODELMAPPERSLOTS_H */
