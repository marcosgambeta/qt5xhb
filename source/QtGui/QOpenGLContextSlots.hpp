/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QOPENGLCONTEXTSLOTS_H
#define QOPENGLCONTEXTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QOpenGLContext>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QOpenGLContextSlots: public QObject
{
  Q_OBJECT
  public:
  QOpenGLContextSlots( QObject *parent = 0 );
  ~QOpenGLContextSlots();
  public slots:
  void aboutToBeDestroyed();
};

#endif /* QOPENGLCONTEXTSLOTS_H */
