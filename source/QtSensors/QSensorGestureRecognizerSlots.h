/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSENSORGESTURERECOGNIZERSLOTS_H
#define QSENSORGESTURERECOGNIZERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGestureRecognizer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QSensorGestureRecognizerSlots: public QObject
{
  Q_OBJECT
  public:
  QSensorGestureRecognizerSlots(QObject *parent = 0);
  ~QSensorGestureRecognizerSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  void detected( const QString & s );
#endif
};

#endif /* QSENSORGESTURERECOGNIZERSLOTS_H */
