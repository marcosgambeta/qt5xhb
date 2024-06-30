/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QMEDIACONTENT
REQUEST QMEDIATIMERANGE
#endif

CLASS QMediaPlayerControl INHERIT QMediaControl

   METHOD delete
   METHOD availablePlaybackRanges
   METHOD bufferStatus
   METHOD duration
   METHOD isAudioAvailable
   METHOD isMuted
   METHOD isSeekable
   METHOD isVideoAvailable
   METHOD media
   METHOD mediaStatus
   METHOD mediaStream
   METHOD pause
   METHOD play
   METHOD playbackRate
   METHOD position
   METHOD setMedia
   METHOD setMuted
   METHOD setPlaybackRate
   METHOD setPosition
   METHOD setVolume
   METHOD state
   METHOD stop
   METHOD volume

   METHOD onAudioAvailableChanged
   METHOD onAvailablePlaybackRangesChanged
   METHOD onBufferStatusChanged
   METHOD onDurationChanged
   METHOD onError
   METHOD onMediaChanged
   METHOD onMediaStatusChanged
   METHOD onMutedChanged
   METHOD onPlaybackRateChanged
   METHOD onPositionChanged
   METHOD onSeekableChanged
   METHOD onStateChanged
   METHOD onVideoAvailableChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaPlayerControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaPlayerControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaPlayerControl>
#endif

/*
~QMediaPlayerControl()
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_DELETE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QMediaTimeRange availablePlaybackRanges() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_AVAILABLEPLAYBACKRANGES )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaTimeRange * ptr = new QMediaTimeRange( obj->availablePlaybackRanges() );
      Qt5xHb::createReturnClass(ptr, "QMEDIATIMERANGE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual int bufferStatus() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_BUFFERSTATUS )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->bufferStatus() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual qint64 duration() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_DURATION )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->duration() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool isAudioAvailable() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ISAUDIOAVAILABLE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAudioAvailable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool isMuted() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ISMUTED )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMuted() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool isSeekable() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ISSEEKABLE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSeekable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool isVideoAvailable() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ISVIDEOAVAILABLE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVideoAvailable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QMediaContent media() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_MEDIA )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaContent * ptr = new QMediaContent( obj->media() );
      Qt5xHb::createReturnClass(ptr, "QMEDIACONTENT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QMediaPlayer::MediaStatus mediaStatus() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_MEDIASTATUS )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->mediaStatus() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual const QIODevice * mediaStream() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_MEDIASTREAM )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QIODevice * ptr = obj->mediaStream();
      Qt5xHb::createReturnQObjectClass(ptr, "QIODEVICE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void pause() = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_PAUSE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->pause();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void play() = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_PLAY )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->play();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual qreal playbackRate() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_PLAYBACKRATE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->playbackRate() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual qint64 position() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_POSITION )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->position() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setMedia( const QMediaContent & media, QIODevice * stream ) = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_SETMEDIA )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQMEDIACONTENT(1) && ISQIODEVICE(2) )
    {
#endif
      obj->setMedia( *PQMEDIACONTENT(1), PQIODEVICE(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void setMuted( bool mute ) = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_SETMUTED )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setMuted( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void setPlaybackRate( qreal rate ) = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_SETPLAYBACKRATE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPlaybackRate( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void setPosition( qint64 position ) = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_SETPOSITION )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPosition( PQINT64(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void setVolume( int volume ) = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_SETVOLUME )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setVolume( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QMediaPlayer::State state() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_STATE )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_STOP )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual int volume() const = 0
*/
HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_VOLUME )
{
  QMediaPlayerControl * obj = (QMediaPlayerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->volume() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QMediaPlayerControlSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONAUDIOAVAILABLECHANGED )
{
  QMediaPlayerControlSlots_connect_signal("audioAvailableChanged(bool)", "audioAvailableChanged(bool)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONAVAILABLEPLAYBACKRANGESCHANGED )
{
  QMediaPlayerControlSlots_connect_signal("availablePlaybackRangesChanged(QMediaTimeRange)", "availablePlaybackRangesChanged(QMediaTimeRange)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONBUFFERSTATUSCHANGED )
{
  QMediaPlayerControlSlots_connect_signal("bufferStatusChanged(int)", "bufferStatusChanged(int)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONDURATIONCHANGED )
{
  QMediaPlayerControlSlots_connect_signal("durationChanged(qint64)", "durationChanged(qint64)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONERROR )
{
  QMediaPlayerControlSlots_connect_signal("error(int,QString)", "error(int,QString)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONMEDIACHANGED )
{
  QMediaPlayerControlSlots_connect_signal("mediaChanged(QMediaContent)", "mediaChanged(QMediaContent)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONMEDIASTATUSCHANGED )
{
  QMediaPlayerControlSlots_connect_signal("mediaStatusChanged(QMediaPlayer::MediaStatus)", "mediaStatusChanged(QMediaPlayer::MediaStatus)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONMUTEDCHANGED )
{
  QMediaPlayerControlSlots_connect_signal("mutedChanged(bool)", "mutedChanged(bool)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONPLAYBACKRATECHANGED )
{
  QMediaPlayerControlSlots_connect_signal("playbackRateChanged(qreal)", "playbackRateChanged(qreal)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONPOSITIONCHANGED )
{
  QMediaPlayerControlSlots_connect_signal("positionChanged(qint64)", "positionChanged(qint64)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONSEEKABLECHANGED )
{
  QMediaPlayerControlSlots_connect_signal("seekableChanged(bool)", "seekableChanged(bool)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONSTATECHANGED )
{
  QMediaPlayerControlSlots_connect_signal("stateChanged(QMediaPlayer::State)", "stateChanged(QMediaPlayer::State)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONVIDEOAVAILABLECHANGED )
{
  QMediaPlayerControlSlots_connect_signal("videoAvailableChanged(bool)", "videoAvailableChanged(bool)");
}

HB_FUNC_STATIC( QMEDIAPLAYERCONTROL_ONVOLUMECHANGED )
{
  QMediaPlayerControlSlots_connect_signal("volumeChanged(int)", "volumeChanged(int)");
}

#pragma ENDDUMP
