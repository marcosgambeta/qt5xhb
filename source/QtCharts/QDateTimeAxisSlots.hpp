/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDATETIMEAXISSLOTS_H
#define QDATETIMEAXISSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QDateTimeAxis>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

#include <QDateTime>

using namespace QtCharts;

class QDateTimeAxisSlots: public QObject
{
  Q_OBJECT
  public:
  QDateTimeAxisSlots( QObject *parent = 0 );
  ~QDateTimeAxisSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void formatChanged( QString format );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void maxChanged( QDateTime max );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void minChanged( QDateTime min );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void rangeChanged( QDateTime min, QDateTime max );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void tickCountChanged( int tick );
#endif
};

#endif /* QDATETIMEAXISSLOTS_H */