/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTextToSpeechSlots.h"

QTextToSpeechSlots::QTextToSpeechSlots( QObject *parent ) : QObject( parent )
{
}

QTextToSpeechSlots::~QTextToSpeechSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QTextToSpeechSlots::localeChanged( const QLocale & locale )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "localeChanged(QLocale)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTTOSPEECH");
    PHB_ITEM plocale = Qt5xHb::Signals_return_object( (void *) &locale, "QLOCALE" );

    hb_vmEvalBlockV( cb, 2, psender, plocale );

    hb_itemRelease( psender );
    hb_itemRelease( plocale );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QTextToSpeechSlots::pitchChanged( double pitch )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "pitchChanged(double)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTTOSPEECH");
    PHB_ITEM ppitch = hb_itemPutND( NULL, pitch );

    hb_vmEvalBlockV( cb, 2, psender, ppitch );

    hb_itemRelease( psender );
    hb_itemRelease( ppitch );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QTextToSpeechSlots::rateChanged( double rate )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rateChanged(double)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTTOSPEECH");
    PHB_ITEM prate = hb_itemPutND( NULL, rate );

    hb_vmEvalBlockV( cb, 2, psender, prate );

    hb_itemRelease( psender );
    hb_itemRelease( prate );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QTextToSpeechSlots::stateChanged( QTextToSpeech::State state )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stateChanged(QTextToSpeech::State)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTTOSPEECH");
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );

    hb_vmEvalBlockV( cb, 2, psender, pstate );

    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QTextToSpeechSlots::voiceChanged( const QVoice & voice )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "voiceChanged(QVoice)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTTOSPEECH");
    PHB_ITEM pvoice = Qt5xHb::Signals_return_object( (void *) &voice, "QVOICE" );

    hb_vmEvalBlockV( cb, 2, psender, pvoice );

    hb_itemRelease( psender );
    hb_itemRelease( pvoice );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
void QTextToSpeechSlots::volumeChanged( int volume )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "volumeChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTEXTTOSPEECH");
    PHB_ITEM pvolume = hb_itemPutNI( NULL, volume );

    hb_vmEvalBlockV( cb, 2, psender, pvolume );

    hb_itemRelease( psender );
    hb_itemRelease( pvolume );
  }
}
#endif

void QTextToSpeechSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextToSpeechSlots * s = QCoreApplication::instance()->findChild<QTextToSpeechSlots *>();

    if( s == NULL )
    {
      s = new QTextToSpeechSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
