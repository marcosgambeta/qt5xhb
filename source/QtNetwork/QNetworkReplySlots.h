/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QNETWORKREPLYSLOTS_H
#define QNETWORKREPLYSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QNetworkReply>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQNetworkReply: public QObject
{
  Q_OBJECT
  public:
  SlotsQNetworkReply(QObject *parent = 0);
  ~SlotsQNetworkReply();
  public slots:
  void downloadProgress( qint64 bytesReceived, qint64 bytesTotal );
  void error( QNetworkReply::NetworkError code );
  void finished();
  void metaDataChanged();
  void uploadProgress( qint64 bytesSent, qint64 bytesTotal );
  void encrypted();
  void sslErrors( const QList<QSslError> & errors );
  void preSharedKeyAuthenticationRequired( QSslPreSharedKeyAuthenticator * authenticator );
  void redirected( const QUrl & url );
  void redirectAllowed();
};

#endif /* QNETWORKREPLYSLOTS_H */
