/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTITEMMODELSLOTS_H
#define QABSTRACTITEMMODELSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QAbstractItemModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QAbstractItemModelSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractItemModelSlots( QObject *parent = 0 );
  ~QAbstractItemModelSlots();
  public slots:
  void columnsAboutToBeInserted( const QModelIndex & parent, int start, int end );
  void columnsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn );
  void columnsAboutToBeRemoved( const QModelIndex & parent, int start, int end );
  void columnsInserted( const QModelIndex & parent, int start, int end );
  void columnsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn );
  void columnsRemoved( const QModelIndex & parent, int start, int end );
  void dataChanged( const QModelIndex & topLeft, const QModelIndex & bottomRight );
  void headerDataChanged( Qt::Orientation orientation, int first, int last );
  void layoutAboutToBeChanged();
  void layoutChanged();
  void modelAboutToBeReset();
  void modelReset();
  void rowsAboutToBeInserted( const QModelIndex & parent, int start, int end );
  void rowsAboutToBeMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow );
  void rowsAboutToBeRemoved( const QModelIndex & parent, int start, int end );
  void rowsInserted( const QModelIndex & parent, int start, int end );
  void rowsMoved( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow );
  void rowsRemoved( const QModelIndex & parent, int start, int end );
};

#endif /* QABSTRACTITEMMODELSLOTS_H */