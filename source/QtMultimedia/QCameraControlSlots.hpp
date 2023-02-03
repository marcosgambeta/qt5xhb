/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCAMERACONTROLSLOTS_H
#define QCAMERACONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QCameraControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QCameraControlSlots: public QObject
{
  Q_OBJECT
  public:
  QCameraControlSlots( QObject *parent = 0 );
  ~QCameraControlSlots();
  public slots:
  void captureModeChanged( QCamera::CaptureModes mode );
  void error( int error, const QString & errorString );
  void stateChanged( QCamera::State state );
  void statusChanged( QCamera::Status status );
};

#endif /* QCAMERACONTROLSLOTS_H */