/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCAMERAEXPOSURECONTROLSLOTS_H
#define QCAMERAEXPOSURECONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QCameraExposureControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QCameraExposureControlSlots: public QObject
{
  Q_OBJECT
  public:
  QCameraExposureControlSlots( QObject *parent = 0 );
  ~QCameraExposureControlSlots();
  public slots:
  void actualValueChanged( int parameter );
  void parameterRangeChanged( int parameter );
  void requestedValueChanged( int parameter );
};

#endif /* QCAMERAEXPOSURECONTROLSLOTS_H */
