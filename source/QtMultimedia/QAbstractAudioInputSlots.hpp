/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTAUDIOINPUTSLOTS_H
#define QABSTRACTAUDIOINPUTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QAbstractAudioInput>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QAbstractAudioInputSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractAudioInputSlots( QObject *parent = 0 );
  ~QAbstractAudioInputSlots();
  public slots:
  void errorChanged( QAudio::Error error );
  void stateChanged( QAudio::State state );
  void notify();
};

#endif /* QABSTRACTAUDIOINPUTSLOTS_H */