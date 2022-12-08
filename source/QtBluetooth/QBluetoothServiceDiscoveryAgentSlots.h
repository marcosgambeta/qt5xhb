/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBLUETOOTHSERVICEDISCOVERYAGENTSLOTS_H
#define QBLUETOOTHSERVICEDISCOVERYAGENTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothServiceDiscoveryAgent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QBluetoothServiceDiscoveryAgentSlots: public QObject
{
  Q_OBJECT
  public:
  QBluetoothServiceDiscoveryAgentSlots( QObject *parent = 0 );
  ~QBluetoothServiceDiscoveryAgentSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void serviceDiscovered( const QBluetoothServiceInfo & info );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void finished();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void canceled();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void error( QBluetoothServiceDiscoveryAgent::Error error );
#endif
};

#endif /* QBLUETOOTHSERVICEDISCOVERYAGENTSLOTS_H */
