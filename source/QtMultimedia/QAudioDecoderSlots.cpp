/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAudioDecoderSlots.hpp"

QAudioDecoderSlots::QAudioDecoderSlots( QObject *parent ) : QObject( parent )
{
}

QAudioDecoderSlots::~QAudioDecoderSlots()
{
}

void QAudioDecoderSlots::bufferAvailableChanged( bool available )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "bufferAvailableChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODER");
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV(cb, 2, psender, pavailable);

    hb_itemRelease(psender);
    hb_itemRelease( pavailable );
  }
}

void QAudioDecoderSlots::bufferReady()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "bufferReady()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAudioDecoderSlots::durationChanged( qint64 duration )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "durationChanged(qint64)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODER");
    PHB_ITEM pduration = hb_itemPutNLL( NULL, duration );

    hb_vmEvalBlockV(cb, 2, psender, pduration);

    hb_itemRelease(psender);
    hb_itemRelease( pduration );
  }
}

void QAudioDecoderSlots::error( QAudioDecoder::Error error )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "error(QAudioDecoder::Error)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODER");
    PHB_ITEM perror = hb_itemPutNI( NULL, static_cast<int>(error) );

    hb_vmEvalBlockV(cb, 2, psender, perror);

    hb_itemRelease(psender);
    hb_itemRelease( perror );
  }
}

void QAudioDecoderSlots::finished()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "finished()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAudioDecoderSlots::formatChanged( const QAudioFormat & format )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "formatChanged(QAudioFormat)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODER");
    PHB_ITEM pformat = Qt5xHb::Signals_return_object( (void *) &format, "QAUDIOFORMAT");

    hb_vmEvalBlockV(cb, 2, psender, pformat);

    hb_itemRelease(psender);
    hb_itemRelease( pformat );
  }
}

void QAudioDecoderSlots::positionChanged( qint64 position )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "positionChanged(qint64)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODER");
    PHB_ITEM pposition = hb_itemPutNLL( NULL, position );

    hb_vmEvalBlockV(cb, 2, psender, pposition);

    hb_itemRelease(psender);
    hb_itemRelease( pposition );
  }
}

void QAudioDecoderSlots::sourceChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "sourceChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAudioDecoderSlots::stateChanged( QAudioDecoder::State state )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stateChanged(QAudioDecoder::State)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIODECODER");
    PHB_ITEM pstate = hb_itemPutNI( NULL, static_cast<int>(state) );

    hb_vmEvalBlockV(cb, 2, psender, pstate);

    hb_itemRelease(psender);
    hb_itemRelease( pstate );
  }
}

void QAudioDecoderSlots_connect_signal(const QString & signal, const QString & slot)
{
  QAudioDecoder * obj = (QAudioDecoder *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAudioDecoderSlots * s = QCoreApplication::instance()->findChild<QAudioDecoderSlots*>();

    if( s == NULL )
    {
      s = new QAudioDecoderSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
