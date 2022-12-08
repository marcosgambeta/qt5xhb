/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMediaPlaylistSlots.h"

QMediaPlaylistSlots::QMediaPlaylistSlots( QObject *parent ) : QObject( parent )
{
}

QMediaPlaylistSlots::~QMediaPlaylistSlots()
{
}

void QMediaPlaylistSlots::currentIndexChanged( int position )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "currentIndexChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAPLAYLIST" );
    PHB_ITEM pposition = hb_itemPutNI( NULL, position );

    hb_vmEvalBlockV( cb, 2, psender, pposition );

    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}

void QMediaPlaylistSlots::currentMediaChanged( const QMediaContent & content )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "currentMediaChanged(QMediaContent)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAPLAYLIST" );
    PHB_ITEM pcontent = Qt5xHb::Signals_return_object( (void *) &content, "QMEDIACONTENT" );

    hb_vmEvalBlockV( cb, 2, psender, pcontent );

    hb_itemRelease( psender );
    hb_itemRelease( pcontent );
  }
}

void QMediaPlaylistSlots::loadFailed()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadFailed()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAPLAYLIST" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QMediaPlaylistSlots::loaded()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loaded()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAPLAYLIST" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QMediaPlaylistSlots::mediaAboutToBeInserted( int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "mediaAboutToBeInserted(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAPLAYLIST" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 3, psender, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QMediaPlaylistSlots::mediaAboutToBeRemoved( int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "mediaAboutToBeRemoved(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAPLAYLIST" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 3, psender, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QMediaPlaylistSlots::mediaChanged( int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "mediaChanged(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAPLAYLIST" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 3, psender, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QMediaPlaylistSlots::mediaInserted( int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "mediaInserted(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAPLAYLIST" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 3, psender, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QMediaPlaylistSlots::mediaRemoved( int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "mediaRemoved(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAPLAYLIST" );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );

    hb_vmEvalBlockV( cb, 3, psender, pstart, pend );

    hb_itemRelease( psender );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void QMediaPlaylistSlots::playbackModeChanged( QMediaPlaylist::PlaybackMode mode )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "playbackModeChanged(QMediaPlaylist::PlaybackMode)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMEDIAPLAYLIST" );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );

    hb_vmEvalBlockV( cb, 2, psender, pmode );

    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void QMediaPlaylistSlots_connect_signal( const QString & signal, const QString & slot )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QMediaPlaylistSlots * s = QCoreApplication::instance()->findChild<QMediaPlaylistSlots *>();

    if( s == NULL )
    {
      s = new QMediaPlaylistSlots();
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
