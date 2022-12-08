/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHELPINDEXWIDGETSLOTS_H
#define QHELPINDEXWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtHelp/QHelpIndexWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QHelpIndexWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QHelpIndexWidgetSlots( QObject *parent = 0 );
  ~QHelpIndexWidgetSlots();
  public slots:
  void linkActivated( const QUrl & link, const QString & keyword );
};

#endif /* QHELPINDEXWIDGETSLOTS_H */
