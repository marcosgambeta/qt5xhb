/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMediaGaplessPlaybackControlSlots.hpp"

QMediaGaplessPlaybackControlSlots::QMediaGaplessPlaybackControlSlots( QObject *parent ) : QObject( parent )
{
}

QMediaGaplessPlaybackControlSlots::~QMediaGaplessPlaybackControlSlots()
{
}

void QMediaGaplessPlaybackControlSlots::advancedToNextMedia()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "advancedToNextMedia()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAGAPLESSPLAYBACKCONTROL");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QMediaGaplessPlaybackControlSlots::crossfadeTimeChanged( qreal crossfadeTime )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "crossfadeTimeChanged(qreal)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAGAPLESSPLAYBACKCONTROL");
    PHB_ITEM pcrossfadeTime = hb_itemPutND( NULL, crossfadeTime );

    hb_vmEvalBlockV(cb, 2, psender, pcrossfadeTime);

    hb_itemRelease(psender);
    hb_itemRelease( pcrossfadeTime );
  }
}

void QMediaGaplessPlaybackControlSlots::nextMediaChanged( const QMediaContent & media )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "nextMediaChanged(QMediaContent)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAGAPLESSPLAYBACKCONTROL");
    PHB_ITEM pmedia = Qt5xHb::Signals_return_object( (void *) &media, "QMEDIACONTENT");

    hb_vmEvalBlockV(cb, 2, psender, pmedia);

    hb_itemRelease(psender);
    hb_itemRelease( pmedia );
  }
}

void QMediaGaplessPlaybackControlSlots_connect_signal(const QString & signal, const QString & slot)
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QMediaGaplessPlaybackControlSlots * s = QCoreApplication::instance()->findChild<QMediaGaplessPlaybackControlSlots*>();

    if( s == NULL )
    {
      s = new QMediaGaplessPlaybackControlSlots();
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
