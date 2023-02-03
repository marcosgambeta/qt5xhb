/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QUNDOGROUPSLOTS_H
#define QUNDOGROUPSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtWidgets/QUndoStack>

#include <QtWidgets/QUndoGroup>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QUndoGroupSlots: public QObject
{
  Q_OBJECT
  public:
  QUndoGroupSlots( QObject *parent = 0 );
  ~QUndoGroupSlots();
  public slots:
  void activeStackChanged( QUndoStack * stack );
  void canRedoChanged( bool canRedo );
  void canUndoChanged( bool canUndo );
  void cleanChanged( bool clean );
  void indexChanged( int idx );
  void redoTextChanged( const QString & redoText );
  void undoTextChanged( const QString & undoText );
};

#endif /* QUNDOGROUPSLOTS_H */
