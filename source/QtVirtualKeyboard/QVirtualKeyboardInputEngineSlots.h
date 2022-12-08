/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVIRTUALKEYBOARDINPUTENGINESLOTS_H
#define QVIRTUALKEYBOARDINPUTENGINESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtVirtualKeyboard/QVirtualKeyboardInputEngine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QVirtualKeyboardInputEngineSlots: public QObject
{
  Q_OBJECT
  public:
  QVirtualKeyboardInputEngineSlots( QObject *parent = 0 );
  ~QVirtualKeyboardInputEngineSlots();
  public slots:
  void virtualKeyClicked( Qt::Key key, const QString & text, Qt::KeyboardModifiers modifiers, bool isAutoRepeat );
  void activeKeyChanged( Qt::Key key );
  void previousKeyChanged( Qt::Key key );
  void inputMethodChanged();
  void inputMethodReset();
  void inputMethodUpdate();
  void inputModesChanged();
  void inputModeChanged();
  void patternRecognitionModesChanged();
  void wordCandidateListModelChanged();
  void wordCandidateListVisibleHintChanged();
};

#endif /* QVIRTUALKEYBOARDINPUTENGINESLOTS_H */
