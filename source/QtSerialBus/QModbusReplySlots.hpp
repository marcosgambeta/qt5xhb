/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMODBUSREPLYSLOTS_H
#define QMODBUSREPLYSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusReply>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QModbusReplySlots: public QObject
{
  Q_OBJECT
  public:
  QModbusReplySlots( QObject *parent = 0 );
  ~QModbusReplySlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void finished();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void errorOccurred( QModbusDevice::Error error );
#endif
};

#endif /* QMODBUSREPLYSLOTS_H */
