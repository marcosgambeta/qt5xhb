/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMDISUBWINDOWSLOTS_H
#define QMDISUBWINDOWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QMdiSubWindow>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QMdiSubWindowSlots: public QObject
{
  Q_OBJECT
  public:
  QMdiSubWindowSlots( QObject *parent = 0 );
  ~QMdiSubWindowSlots();
  public slots:
  void aboutToActivate();
  void windowStateChanged( Qt::WindowStates oldState, Qt::WindowStates newState );
};

#endif /* QMDISUBWINDOWSLOTS_H */
