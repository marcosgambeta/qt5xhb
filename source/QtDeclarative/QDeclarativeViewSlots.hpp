//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QDECLARATIVEVIEWSLOTS_H
#define QDECLARATIVEVIEWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDeclarative/QDeclarativeView>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QDeclarativeViewSlots : public QObject
{
  Q_OBJECT
public:
  QDeclarativeViewSlots(QObject *parent = 0);
  ~QDeclarativeViewSlots();
public slots:
  void sceneResized(QSize size);
  void statusChanged(QDeclarativeView::Status status);
};

#endif // QDECLARATIVEVIEWSLOTS_H
