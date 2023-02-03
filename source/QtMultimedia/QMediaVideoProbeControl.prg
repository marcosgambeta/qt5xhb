/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QMediaVideoProbeControl INHERIT QMediaControl

   METHOD delete

   METHOD onFlush
   METHOD onVideoFrameProbed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaVideoProbeControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaVideoProbeControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaVideoProbeControl>
#endif

/*
virtual ~QMediaVideoProbeControl()
*/
HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_DELETE )
{
  QMediaVideoProbeControl * obj = (QMediaVideoProbeControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QMediaVideoProbeControlSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_ONFLUSH )
{
  QMediaVideoProbeControlSlots_connect_signal("flush()", "flush()");
}

HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_ONVIDEOFRAMEPROBED )
{
  QMediaVideoProbeControlSlots_connect_signal("videoFrameProbed(QVideoFrame)", "videoFrameProbed(QVideoFrame)");
}

#pragma ENDDUMP
