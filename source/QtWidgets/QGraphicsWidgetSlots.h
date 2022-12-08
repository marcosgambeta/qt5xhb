/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSWIDGETSLOTS_H
#define QGRAPHICSWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QGraphicsWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QGraphicsWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsWidgetSlots( QObject *parent = 0 );
  ~QGraphicsWidgetSlots();
  public slots:
  void geometryChanged();
};

#endif /* QGRAPHICSWIDGETSLOTS_H */
