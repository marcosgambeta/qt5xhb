/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMEDIAAVAILABILITYCONTROLSLOTS_H
#define QMEDIAAVAILABILITYCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QMediaAvailabilityControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QMediaAvailabilityControlSlots: public QObject
{
  Q_OBJECT
  public:
  QMediaAvailabilityControlSlots(QObject *parent = 0);
  ~QMediaAvailabilityControlSlots();
  public slots:
  void availabilityChanged( QMultimedia::AvailabilityStatus availability );
};

#endif /* QMEDIAAVAILABILITYCONTROLSLOTS_H */
