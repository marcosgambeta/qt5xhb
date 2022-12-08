/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef Q3DSURFACESLOTS_H
#define Q3DSURFACESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/Q3DSurface>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtDataVisualization;

class Q3DSurfaceSlots: public QObject
{
  Q_OBJECT
  public:
  Q3DSurfaceSlots( QObject *parent = 0 );
  ~Q3DSurfaceSlots();
  public slots:
  void axisXChanged( QValue3DAxis * axis );
  void axisYChanged( QValue3DAxis * axis );
  void axisZChanged( QValue3DAxis * axis );
  void flipHorizontalGridChanged( bool flip );
  void selectedSeriesChanged( QSurface3DSeries * series );
};

#endif /* Q3DSURFACESLOTS_H */
