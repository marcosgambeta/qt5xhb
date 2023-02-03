/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QRADIOTUNERCONTROLSLOTS_H
#define QRADIOTUNERCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QRadioTunerControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QRadioTunerControlSlots: public QObject
{
  Q_OBJECT
  public:
  QRadioTunerControlSlots( QObject *parent = 0 );
  ~QRadioTunerControlSlots();
  public slots:
  void stateChanged( QRadioTuner::State state );
  void bandChanged( QRadioTuner::Band band );
  void frequencyChanged( int frequency );
  void stereoStatusChanged( bool stereo );
  void searchingChanged( bool searching );
  void signalStrengthChanged( int signalStrength );
  void volumeChanged( int volume );
  void mutedChanged( bool muted );
  void error( QRadioTuner::Error err );
  void stationFound( int frequency, QString stationId );
  void antennaConnectedChanged( bool connectionStatus );
};

#endif /* QRADIOTUNERCONTROLSLOTS_H */
