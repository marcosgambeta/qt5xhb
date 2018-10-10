/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTROL
#endif

CLASS QMediaService INHERIT QObject

   METHOD delete
   METHOD releaseControl
   METHOD requestControl

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaService
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaService>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaService>
#endif

/*
QMediaService(QObject* parent) (protected)
*/

/*
QMediaService(QMediaServicePrivate &dd, QObject *parent) (protected)
*/

/*
~QMediaService()
*/
HB_FUNC_STATIC( QMEDIASERVICE_DELETE )
{
  QMediaService * obj = (QMediaService *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void releaseControl(QMediaControl * control) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICE_RELEASECONTROL )
{
  QMediaService * obj = (QMediaService *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMEDIACONTROL(1) )
    {
      obj->releaseControl ( PQMEDIACONTROL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QMediaControl * requestControl(const char * interface) = 0
*/
HB_FUNC_STATIC( QMEDIASERVICE_REQUESTCONTROL )
{
  QMediaService * obj = (QMediaService *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QMediaControl * ptr = obj->requestControl ( PCONSTCHAR(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QMEDIACONTROL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
