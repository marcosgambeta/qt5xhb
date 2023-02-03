/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTABWIDGETSLOTS_H
#define QTABWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QTabWidget>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QTabWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QTabWidgetSlots( QObject *parent = 0 );
  ~QTabWidgetSlots();
  public slots:
  void currentChanged( int index );
  void tabCloseRequested( int index );
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void tabBarClicked( int index );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void tabBarDoubleClicked( int index );
#endif
};

#endif /* QTABWIDGETSLOTS_H */
