/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSCATTERSERIESSLOTS_H
#define QSCATTERSERIESSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QScatterSeries>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class QScatterSeriesSlots: public QObject
{
  Q_OBJECT
  public:
  QScatterSeriesSlots(QObject *parent = 0);
  ~QScatterSeriesSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void borderColorChanged( QColor color );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void colorChanged( QColor color );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void markerShapeChanged( QScatterSeries::MarkerShape shape );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void markerSizeChanged( qreal size );
#endif
};

#endif /* QSCATTERSERIESSLOTS_H */
