/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMediaRecorderSlots.h"

QMediaRecorderSlots::QMediaRecorderSlots( QObject *parent ) : QObject( parent )
{
}

QMediaRecorderSlots::~QMediaRecorderSlots()
{
}

void QMediaRecorderSlots::actualLocationChanged( const QUrl & location )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "actualLocationChanged(QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM plocation = Qt5xHb::Signals_return_object( (void *) &location, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, plocation );

    hb_itemRelease( psender );
    hb_itemRelease( plocation );
  }
}

void QMediaRecorderSlots::availabilityChanged( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "availabilityChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV( cb, 2, psender, pavailable );

    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void QMediaRecorderSlots::availabilityChanged( QMultimedia::AvailabilityStatus availability )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "availabilityChanged(QMultimedia::AvailabilityStatus)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM pavailability = hb_itemPutNI( NULL, (int) availability );

    hb_vmEvalBlockV( cb, 2, psender, pavailability );

    hb_itemRelease( psender );
    hb_itemRelease( pavailability );
  }
}

void QMediaRecorderSlots::durationChanged( qint64 duration )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "durationChanged(qint64)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM pduration = hb_itemPutNLL( NULL, duration );

    hb_vmEvalBlockV( cb, 2, psender, pduration );

    hb_itemRelease( psender );
    hb_itemRelease( pduration );
  }
}

void QMediaRecorderSlots::error( QMediaRecorder::Error error )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "error(QMediaRecorder::Error)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );

    hb_vmEvalBlockV( cb, 2, psender, perror );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void QMediaRecorderSlots::metaDataAvailableChanged( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "metaDataAvailableChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV( cb, 2, psender, pavailable );

    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void QMediaRecorderSlots::metaDataChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "metaDataChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QMediaRecorderSlots::metaDataChanged( const QString & key, const QVariant & value )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "metaDataChanged(QString,QVariant)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM pkey = hb_itemPutC( NULL, QSTRINGTOSTRING(key) );
    PHB_ITEM pvalue = Qt5xHb::Signals_return_object( (void *) &value, "QVARIANT" );

    hb_vmEvalBlockV( cb, 3, psender, pkey, pvalue );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
    hb_itemRelease( pvalue );
  }
}

void QMediaRecorderSlots::metaDataWritableChanged( bool writable )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "metaDataWritableChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM pwritable = hb_itemPutL( NULL, writable );

    hb_vmEvalBlockV( cb, 2, psender, pwritable );

    hb_itemRelease( psender );
    hb_itemRelease( pwritable );
  }
}

void QMediaRecorderSlots::mutedChanged( bool muted )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "mutedChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM pmuted = hb_itemPutL( NULL, muted );

    hb_vmEvalBlockV( cb, 2, psender, pmuted );

    hb_itemRelease( psender );
    hb_itemRelease( pmuted );
  }
}

void QMediaRecorderSlots::stateChanged( QMediaRecorder::State state )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stateChanged(QMediaRecorder::State)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );

    hb_vmEvalBlockV( cb, 2, psender, pstate );

    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void QMediaRecorderSlots::statusChanged( QMediaRecorder::Status status )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "statusChanged(QMediaRecorder::Status)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );

    hb_vmEvalBlockV( cb, 2, psender, pstatus );

    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

void QMediaRecorderSlots::volumeChanged( qreal volume )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "volumeChanged(qreal)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIARECORDER" );
    PHB_ITEM pvolume = hb_itemPutND( NULL, volume );

    hb_vmEvalBlockV( cb, 2, psender, pvolume );

    hb_itemRelease( psender );
    hb_itemRelease( pvolume );
  }
}

void QMediaRecorderSlots_connect_signal( const QString & signal, const QString & slot )
{
  QMediaRecorder * obj = (QMediaRecorder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QMediaRecorderSlots * s = QCoreApplication::instance()->findChild<QMediaRecorderSlots *>();

    if( s == NULL )
    {
      s = new QMediaRecorderSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
