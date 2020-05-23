/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QModbusServer INHERIT QModbusDevice

   METHOD new
   METHOD delete
   METHOD serverAddress
   METHOD setServerAddress
   METHOD processesBroadcast
   METHOD value
   METHOD setValue
   METHOD setData

   METHOD onDataWritten

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QModbusServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusServer>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusServer>
#endif
#endif

/*
explicit QModbusServer(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QMODBUSSERVER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QModbusServer * obj = new QModbusServer( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QModbusServer(QModbusServerPrivate &dd, QObject *parent = nullptr) [protected]
*/

/*
~QModbusServer()
*/
HB_FUNC_STATIC( QMODBUSSERVER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusServer * obj = (QModbusServer *) Qt5xHb::itemGetPtrStackSelfItem();

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
int serverAddress() const
*/
HB_FUNC_STATIC( QMODBUSSERVER_SERVERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusServer * obj = (QModbusServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->serverAddress() );
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
void setServerAddress(int serverAddress)
*/
HB_FUNC_STATIC( QMODBUSSERVER_SETSERVERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusServer * obj = (QModbusServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setServerAddress( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual bool setMap(const QModbusDataUnitMap &map)
*/

/*
virtual bool processesBroadcast() const
*/
HB_FUNC_STATIC( QMODBUSSERVER_PROCESSESBROADCAST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusServer * obj = (QModbusServer *) Qt5xHb::itemGetPtrStackSelfItem();

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
virtual QVariant value(int option) const
*/
HB_FUNC_STATIC( QMODBUSSERVER_VALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusServer * obj = (QModbusServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->value( PINT(1) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
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
virtual bool setValue(int option, const QVariant &value)
*/
HB_FUNC_STATIC( QMODBUSSERVER_SETVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusServer * obj = (QModbusServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      RBOOL( obj->setValue( PINT(1), *PQVARIANT(2) ) );
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
bool data(QModbusDataUnit *newData) const
*/

/*
bool setData(const QModbusDataUnit &unit)
*/

/*
bool setData(QModbusDataUnit::RegisterType table, quint16 address, quint16 data)
*/
HB_FUNC_STATIC( QMODBUSSERVER_SETDATA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusServer * obj = (QModbusServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
#endif
      RBOOL( obj->setData( (QModbusDataUnit::RegisterType) hb_parni(1), PQUINT16(2), PQUINT16(3) ) );
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
bool data(QModbusDataUnit::RegisterType table, quint16 address, quint16 *data) const
*/

/*
virtual bool writeData(const QModbusDataUnit &unit) [protected]
*/

/*
virtual bool readData(QModbusDataUnit *newData) const [protected]
*/

/*
virtual QModbusResponse processRequest(const QModbusPdu &request) [protected]
*/

/*
virtual QModbusResponse processPrivateRequest(const QModbusPdu &request) [protected]
*/

void QModbusServerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMODBUSSERVER_ONDATAWRITTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusServerSlots_connect_signal( "dataWritten(QModbusDataUnit::RegisterType,int,int)", "dataWritten(QModbusDataUnit::RegisterType,int,int)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
