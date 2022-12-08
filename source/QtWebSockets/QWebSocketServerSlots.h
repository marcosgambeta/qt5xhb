/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QWEBSOCKETSERVERSLOTS_H
#define QWEBSOCKETSERVERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtWebSockets/QWebSocketServer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QWebSocketServerSlots: public QObject
{
  Q_OBJECT
  public:
  QWebSocketServerSlots( QObject *parent = 0 );
  ~QWebSocketServerSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  void acceptError( QAbstractSocket::SocketError socketError );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  void serverError( QWebSocketProtocol::CloseCode closeCode );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  void originAuthenticationRequired( QWebSocketCorsAuthenticator * pAuthenticator );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  void newConnection();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  void peerVerifyError( const QSslError & error );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  void sslErrors( const QList<QSslError> & errors );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  void closed();
#endif
};

#endif /* QWEBSOCKETSERVERSLOTS_H */
