/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCANBUSDEVICESLOTS_H
#define QCANBUSDEVICESLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QCanBusDevice>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QCanBusDeviceSlots: public QObject
{
  Q_OBJECT
  public:
  QCanBusDeviceSlots(QObject *parent = 0);
  ~QCanBusDeviceSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void errorOccurred( QCanBusDevice::CanBusError );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void framesReceived();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void framesWritten( qint64 framesCount );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void stateChanged( QCanBusDevice::CanBusDeviceState state );
#endif
};

#endif /* QCANBUSDEVICESLOTS_H */