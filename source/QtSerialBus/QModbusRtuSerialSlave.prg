/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QModbusRtuSerialSlave INHERIT QModbusServer

   METHOD new
   METHOD delete
   METHOD processesBroadcast

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QModbusRtuSerialSlave
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusRtuSerialSlave>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusRtuSerialSlave>
#endif
#endif

/*
explicit QModbusRtuSerialSlave(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QMODBUSRTUSERIALSLAVE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QModbusRtuSerialSlave * obj = new QModbusRtuSerialSlave( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QModbusRtuSerialSlave(QModbusRtuSerialSlavePrivate &dd, QObject *parent = nullptr) [protected]
*/

/*
~QModbusRtuSerialSlave()
*/
HB_FUNC_STATIC( QMODBUSRTUSERIALSLAVE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusRtuSerialSlave * obj = (QModbusRtuSerialSlave *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool processesBroadcast() const override
*/
HB_FUNC_STATIC( QMODBUSRTUSERIALSLAVE_PROCESSESBROADCAST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusRtuSerialSlave * obj = (QModbusRtuSerialSlave *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->processesBroadcast() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool open() override [protected]
*/

/*
void close() override [protected]
*/

/*
QModbusResponse processRequest(const QModbusPdu &request) override [protected]
*/

#pragma ENDDUMP
