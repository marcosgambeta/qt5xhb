/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QLOGVALUEAXISSLOTS_H
#define QLOGVALUEAXISSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QLogValueAxis>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class SlotsQLogValueAxis: public QObject
{
  Q_OBJECT
  public:
  SlotsQLogValueAxis(QObject *parent = 0);
  ~SlotsQLogValueAxis();
  public slots:
  void baseChanged( qreal base );
  void labelFormatChanged( const QString & format );
  void maxChanged( qreal max );
  void minChanged( qreal min );
  void minorTickCountChanged( int minorTickCount );
  void rangeChanged( qreal min, qreal max );
  void tickCountChanged( int tickCount );
};

#endif /* QLOGVALUEAXISSLOTS_H */