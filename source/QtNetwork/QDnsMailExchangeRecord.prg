/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDnsMailExchangeRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD exchange
   METHOD name
   METHOD preference
   METHOD swap
   METHOD timeToLive

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDnsMailExchangeRecord
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QDnsMailExchangeRecord>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QDnsMailExchangeRecord>
#endif

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QDnsMailExchangeRecord()
    */
    QDnsMailExchangeRecord * obj = new QDnsMailExchangeRecord();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQDNSMAILEXCHANGERECORD(1) )
  {
    /*
    QDnsMailExchangeRecord( const QDnsMailExchangeRecord & other )
    */
    QDnsMailExchangeRecord * obj = new QDnsMailExchangeRecord( *PQDNSMAILEXCHANGERECORD(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QDnsMailExchangeRecord()
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_DELETE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString exchange() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_EXCHANGE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->exchange() );
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
QString name() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NAME )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
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
quint16 preference() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_PREFERENCE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->preference() );
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
void swap( QDnsMailExchangeRecord & other ) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_SWAP )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDNSMAILEXCHANGERECORD(1) )
    {
#endif
      obj->swap( *PQDNSMAILEXCHANGERECORD(1) );
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
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_TIMETOLIVE )
{
  QDnsMailExchangeRecord * obj = (QDnsMailExchangeRecord *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT32( obj->timeToLive() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDNSMAILEXCHANGERECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_SELFDESTRUCTION )
{
  hb_retl((bool) hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QDNSMAILEXCHANGERECORD_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
