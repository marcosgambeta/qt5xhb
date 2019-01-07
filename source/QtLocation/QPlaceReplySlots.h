/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPLACEREPLYSLOTS_H
#define QPLACEREPLYSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QPlaceReply>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QPlaceReplySlots: public QObject
{
  Q_OBJECT
  public:
  QPlaceReplySlots(QObject *parent = 0);
  ~QPlaceReplySlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void finished();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void error( QPlaceReply::Error error, const QString & errorString = QString() );
#endif
};

#endif /* QPLACEREPLYSLOTS_H */
