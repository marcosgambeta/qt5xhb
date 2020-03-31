/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTAPSENSORSLOTS_H
#define QTAPSENSORSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSensors/QTapSensor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QTapSensorSlots: public QObject
{
  Q_OBJECT
  public:
  QTapSensorSlots(QObject *parent = 0);
  ~QTapSensorSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void returnDoubleTapEventsChanged( bool returnDoubleTapEvents );
#endif
};

#endif /* QTAPSENSORSLOTS_H */
