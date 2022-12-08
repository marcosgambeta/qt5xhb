/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QWEBCHANNELABSTRACTTRANSPORTSLOTS_H
#define QWEBCHANNELABSTRACTTRANSPORTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebChannel/QWebChannelAbstractTransport>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QWebChannelAbstractTransportSlots: public QObject
{
  Q_OBJECT
  public:
  QWebChannelAbstractTransportSlots( QObject *parent = 0 );
  ~QWebChannelAbstractTransportSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void messageReceived( const QJsonObject & message, QWebChannelAbstractTransport * transport );
#endif
};

#endif /* QWEBCHANNELABSTRACTTRANSPORTSLOTS_H */
