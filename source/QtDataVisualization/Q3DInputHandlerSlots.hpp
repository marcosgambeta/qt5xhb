/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef Q3DINPUTHANDLERSLOTS_H
#define Q3DINPUTHANDLERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/Q3DInputHandler>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class Q3DInputHandlerSlots: public QObject
{
  Q_OBJECT
  public:
  Q3DInputHandlerSlots( QObject *parent = 0 );
  ~Q3DInputHandlerSlots();
  public slots:
  void rotationEnabledChanged( bool enable );
  void selectionEnabledChanged( bool enable );
  void zoomAtTargetEnabledChanged( bool enable );
  void zoomEnabledChanged( bool enable );
};

#endif /* Q3DINPUTHANDLERSLOTS_H */