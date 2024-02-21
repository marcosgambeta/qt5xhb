/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBLUETOOTHSOCKETSLOTS_H
#define QBLUETOOTHSOCKETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothSocket>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QBluetoothSocketSlots: public QObject
{
  Q_OBJECT
  public:
  QBluetoothSocketSlots( QObject *parent = 0 );
  ~QBluetoothSocketSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void connected();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void disconnected();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void error( QBluetoothSocket::SocketError error );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void stateChanged( QBluetoothSocket::SocketState state );
#endif
};

#endif /* QBLUETOOTHSOCKETSLOTS_H */
