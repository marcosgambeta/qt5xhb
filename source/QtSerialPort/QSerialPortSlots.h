/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSERIALPORTSLOTS_H
#define QSERIALPORTSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSerialPort>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QSerialPortSlots: public QObject
{
  Q_OBJECT
  public:
  QSerialPortSlots(QObject *parent = 0);
  ~QSerialPortSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void baudRateChanged( qint32 baudRate, QSerialPort::Directions dir );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void dataBitsChanged( QSerialPort::DataBits dataBits );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void parityChanged( QSerialPort::Parity parity );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void stopBitsChanged( QSerialPort::StopBits stopBits );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void flowControlChanged( QSerialPort::FlowControl flow );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void dataErrorPolicyChanged( QSerialPort::DataErrorPolicy policy );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void dataTerminalReadyChanged( bool set );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void requestToSendChanged( bool set );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void error( QSerialPort::SerialPortError serialPortError );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void settingsRestoredOnCloseChanged( bool restore );
#endif
};

#endif /* QSERIALPORTSLOTS_H */
