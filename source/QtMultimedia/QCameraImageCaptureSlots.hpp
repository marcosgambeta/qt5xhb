/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCAMERAIMAGECAPTURESLOTS_H
#define QCAMERAIMAGECAPTURESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QCameraImageCapture>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QCameraImageCaptureSlots: public QObject
{
  Q_OBJECT
  public:
  QCameraImageCaptureSlots( QObject *parent = 0 );
  ~QCameraImageCaptureSlots();
  public slots:
  void bufferFormatChanged( QVideoFrame::PixelFormat format );
  void captureDestinationChanged( QCameraImageCapture::CaptureDestinations destination );
  void error( int id, QCameraImageCapture::Error error, const QString & errorString );
  void imageAvailable( int id, const QVideoFrame & buffer );
  void imageCaptured( int id, const QImage & preview );
  void imageExposed( int id );
  void imageMetadataAvailable( int id, const QString & key, const QVariant & value );
  void imageSaved( int id, const QString & fileName );
  void readyForCaptureChanged( bool ready );
};

#endif /* QCAMERAIMAGECAPTURESLOTS_H */
