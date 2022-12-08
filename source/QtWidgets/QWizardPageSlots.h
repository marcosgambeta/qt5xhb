/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QWIZARDPAGESLOTS_H
#define QWIZARDPAGESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QWizardPage>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QWizardPageSlots: public QObject
{
  Q_OBJECT
  public:
  QWizardPageSlots( QObject *parent = 0 );
  ~QWizardPageSlots();
  public slots:
  void completeChanged();
};

#endif /* QWIZARDPAGESLOTS_H */
