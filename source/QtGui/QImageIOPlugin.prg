/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGEIOHANDLER
#endif

CLASS QImageIOPlugin INHERIT QObject

   METHOD delete
   METHOD capabilities
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QImageIOPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QImageIOPlugin>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtGui/QImageIOPlugin>
#endif

HB_FUNC_STATIC( QIMAGEIOPLUGIN_DELETE )
{
  QImageIOPlugin * obj = (QImageIOPlugin *) Qt5xHb::itemGetPtrStackSelfItem();

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

/*
virtual QImageIOPlugin::Capabilities capabilities( QIODevice * device, const QByteArray & format ) const = 0
*/
HB_FUNC_STATIC( QIMAGEIOPLUGIN_CAPABILITIES )
{
  QImageIOPlugin * obj = (QImageIOPlugin *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2) )
    {
#endif
      RENUM( obj->capabilities( PQIODEVICE(1), *PQBYTEARRAY(2) ) );
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
virtual QImageIOHandler * create( QIODevice * device, const QByteArray & format = QByteArray() ) const = 0
*/
HB_FUNC_STATIC( QIMAGEIOPLUGIN_CREATE )
{
  QImageIOPlugin * obj = (QImageIOPlugin *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQBYTEARRAY(2)||HB_ISNIL(2)) )
    {
#endif
      QImageIOHandler * ptr = obj->create( PQIODEVICE(1), HB_ISNIL(2)? QByteArray() : *(QByteArray *) Qt5xHb::itemGetPtr(2) );
      Qt5xHb::createReturnClass(ptr, "QIMAGEIOHANDLER", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
