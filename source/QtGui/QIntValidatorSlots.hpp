//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QINTVALIDATORSLOTS_H
#define QINTVALIDATORSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QIntValidator>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QIntValidatorSlots : public QObject
{
  Q_OBJECT
public:
  QIntValidatorSlots(QObject *parent = 0);
  ~QIntValidatorSlots();
public slots:
  void changed();
};

#endif // QINTVALIDATORSLOTS_H
