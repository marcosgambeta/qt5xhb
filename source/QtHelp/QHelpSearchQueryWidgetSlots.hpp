/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHELPSEARCHQUERYWIDGETSLOTS_H
#define QHELPSEARCHQUERYWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtHelp/QHelpSearchQueryWidget>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QHelpSearchQueryWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QHelpSearchQueryWidgetSlots( QObject *parent = 0 );
  ~QHelpSearchQueryWidgetSlots();
  public slots:
  void search();
};

#endif /* QHELPSEARCHQUERYWIDGETSLOTS_H */
