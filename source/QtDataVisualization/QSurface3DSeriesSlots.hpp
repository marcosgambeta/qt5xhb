/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSURFACE3DSERIESSLOTS_H
#define QSURFACE3DSERIESSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDataVisualization/QSurface3DSeries>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtDataVisualization;

class QSurface3DSeriesSlots: public QObject
{
  Q_OBJECT
  public:
  QSurface3DSeriesSlots( QObject *parent = 0 );
  ~QSurface3DSeriesSlots();
  public slots:
  void dataProxyChanged( QSurfaceDataProxy * proxy );
  void drawModeChanged( QSurface3DSeries::DrawFlags mode );
  void flatShadingEnabledChanged( bool enable );
  void flatShadingSupportedChanged( bool enable );
  void selectedPointChanged( const QPoint & position );
  void textureChanged( const QImage & image );
  void textureFileChanged( const QString & filename );
};

#endif /* QSURFACE3DSERIESSLOTS_H */
