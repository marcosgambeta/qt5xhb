/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBOXSETSLOTS_H
#define QBOXSETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QBoxSet>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class QBoxSetSlots: public QObject
{
  Q_OBJECT
  public:
  QBoxSetSlots( QObject *parent = 0 );
  ~QBoxSetSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void brushChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void cleared();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void clicked();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void doubleClicked();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void hovered( bool status );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void penChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void pressed();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void released();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void valueChanged( int index );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void valuesChanged();
#endif
};

#endif /* QBOXSETSLOTS_H */
