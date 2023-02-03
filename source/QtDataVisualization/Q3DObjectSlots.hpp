/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef Q3DOBJECTSLOTS_H
#define Q3DOBJECTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/Q3DObject>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtDataVisualization;

class Q3DObjectSlots: public QObject
{
  Q_OBJECT
  public:
  Q3DObjectSlots( QObject *parent = 0 );
  ~Q3DObjectSlots();
  public slots:
  void positionChanged( const QVector3D & position );
};

#endif /* Q3DOBJECTSLOTS_H */
