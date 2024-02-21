/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSQLDRIVERSLOTS_H
#define QSQLDRIVERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtSql/QSqlDriver>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QSqlDriverSlots: public QObject
{
  Q_OBJECT
  public:
  QSqlDriverSlots( QObject *parent = 0 );
  ~QSqlDriverSlots();
  public slots:
  void notification( const QString & name );
  void notification( const QString & name, QSqlDriver::NotificationSource source, const QVariant & payload );
};

#endif /* QSQLDRIVERSLOTS_H */
