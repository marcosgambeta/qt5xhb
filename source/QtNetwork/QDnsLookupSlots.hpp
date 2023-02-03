/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDNSLOOKUPSLOTS_H
#define QDNSLOOKUPSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QDnsLookup>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QDnsLookupSlots: public QObject
{
  Q_OBJECT
  public:
  QDnsLookupSlots( QObject *parent = 0 );
  ~QDnsLookupSlots();
  public slots:
  void finished();
  void nameChanged( const QString & name );
  void nameserverChanged( const QHostAddress & nameserver );
  void typeChanged( QDnsLookup::Type type );
};

#endif /* QDNSLOOKUPSLOTS_H */
