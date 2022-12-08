/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef Q3DLIGHTSLOTS_H
#define Q3DLIGHTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/Q3DLight>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class Q3DLightSlots: public QObject
{
  Q_OBJECT
  public:
  Q3DLightSlots( QObject *parent = 0 );
  ~Q3DLightSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void autoPositionChanged( bool autoPosition );
#endif
};

#endif /* Q3DLIGHTSLOTS_H */
