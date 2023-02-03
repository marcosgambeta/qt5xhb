/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QFILESYSTEMMODELSLOTS_H
#define QFILESYSTEMMODELSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QFileSystemModel>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QFileSystemModelSlots: public QObject
{
  Q_OBJECT
  public:
  QFileSystemModelSlots( QObject *parent = 0 );
  ~QFileSystemModelSlots();
  public slots:
  void directoryLoaded( const QString & path );
  void fileRenamed( const QString & path, const QString & oldName, const QString & newName );
  void rootPathChanged( const QString & newPath );
};

#endif /* QFILESYSTEMMODELSLOTS_H */
