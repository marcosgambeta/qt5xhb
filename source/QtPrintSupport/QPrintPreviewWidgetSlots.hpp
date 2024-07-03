//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QPRINTPREVIEWWIDGETSLOTS_H
#define QPRINTPREVIEWWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtPrintSupport/QPrintPreviewWidget>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QPrintPreviewWidgetSlots : public QObject
{
  Q_OBJECT
public:
  QPrintPreviewWidgetSlots(QObject *parent = 0);
  ~QPrintPreviewWidgetSlots();
public slots:
  void paintRequested(QPrinter *printer);
  void previewChanged();
};

#endif // QPRINTPREVIEWWIDGETSLOTS_H
