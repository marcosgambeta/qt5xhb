/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCLIPBOARDSLOTS_H
#define QCLIPBOARDSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QClipboard>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QClipboardSlots: public QObject
{
  Q_OBJECT
  public:
  QClipboardSlots( QObject *parent = 0 );
  ~QClipboardSlots();
  public slots:
  void changed( QClipboard::Mode mode );
  void dataChanged();
  void findBufferChanged();
  void selectionChanged();
};

#endif /* QCLIPBOARDSLOTS_H */
