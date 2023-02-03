/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QXYSERIESSLOTS_H
#define QXYSERIESSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QXYSeries>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtCharts;

class QXYSeriesSlots: public QObject
{
  Q_OBJECT
  public:
  QXYSeriesSlots( QObject *parent = 0 );
  ~QXYSeriesSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void clicked( const QPointF & point );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void colorChanged( QColor color );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void doubleClicked( const QPointF & point );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void hovered( const QPointF & point, bool state );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void penChanged( const QPen & pen );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointAdded( int index );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointLabelsClippingChanged( bool clipping );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointLabelsColorChanged( const QColor & color );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointLabelsFontChanged( const QFont & font );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointLabelsFormatChanged( const QString & format );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointLabelsVisibilityChanged( bool visible );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointRemoved( int index );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointReplaced( int index );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointsRemoved( int index, int count );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pointsReplaced();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pressed( const QPointF & point );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void released( const QPointF & point );
#endif
};

#endif /* QXYSERIESSLOTS_H */
