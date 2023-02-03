/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QANIMATIONDRIVERSLOTS_H
#define QANIMATIONDRIVERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QAnimationDriver>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAnimationDriverSlots: public QObject
{
  Q_OBJECT
  public:
  QAnimationDriverSlots( QObject *parent = 0 );
  ~QAnimationDriverSlots();
  public slots:
  void started();
  void stopped();
};

#endif /* QANIMATIONDRIVERSLOTS_H */
