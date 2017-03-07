/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QAudioDecoderControlSlots.h"


static SlotsQAudioDecoderControl * s = NULL;

SlotsQAudioDecoderControl::SlotsQAudioDecoderControl(QObject *parent) : QObject(parent)
{
}

SlotsQAudioDecoderControl::~SlotsQAudioDecoderControl()
{
}

void SlotsQAudioDecoderControl::bufferAvailableChanged(bool available)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferAvailableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQAudioDecoderControl::bufferReady()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferReady()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAudioDecoderControl::durationChanged(qint64 duration)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "durationChanged(qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pduration = hb_itemPutNI( NULL, duration );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pduration );
    hb_itemRelease( psender );
    hb_itemRelease( pduration );
  }
}

void SlotsQAudioDecoderControl::error(int error, const QString & errorString)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, (const char *) errorString.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}

void SlotsQAudioDecoderControl::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAudioDecoderControl::formatChanged(const QAudioFormat & format)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "formatChanged(QAudioFormat)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformat = hb_itemPutPtr( NULL, (QAudioFormat *) &format );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformat );
    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}

void SlotsQAudioDecoderControl::positionChanged(qint64 position)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "positionChanged(qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pposition = hb_itemPutNI( NULL, position );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}

void SlotsQAudioDecoderControl::sourceChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sourceChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAudioDecoderControl::stateChanged(QAudioDecoder::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QAudioDecoder::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

HB_FUNC( QAUDIODECODERCONTROL_ONBUFFERAVAILABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bufferAvailableChanged(bool)", "bufferAvailableChanged(bool)" ) );
}

HB_FUNC( QAUDIODECODERCONTROL_ONBUFFERREADY )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bufferReady()", "bufferReady()" ) );
}

HB_FUNC( QAUDIODECODERCONTROL_ONDURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "durationChanged(qint64)", "durationChanged(qint64)" ) );
}

HB_FUNC( QAUDIODECODERCONTROL_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(int,QString)", "error(int,QString)" ) );
}

HB_FUNC( QAUDIODECODERCONTROL_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished()", "finished()" ) );
}

HB_FUNC( QAUDIODECODERCONTROL_ONFORMATCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "formatChanged(QAudioFormat)", "formatChanged(QAudioFormat)" ) );
}

HB_FUNC( QAUDIODECODERCONTROL_ONPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "positionChanged(qint64)", "positionChanged(qint64)" ) );
}

HB_FUNC( QAUDIODECODERCONTROL_ONSOURCECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sourceChanged()", "sourceChanged()" ) );
}

HB_FUNC( QAUDIODECODERCONTROL_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QAudioDecoder::State)", "stateChanged(QAudioDecoder::State)" ) );
}
