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

CLASS QModbusDevice INHERIT QObject

   METHOD new
   METHOD delete
   METHOD connectionParameter
   METHOD setConnectionParameter
   METHOD connectDevice
   METHOD disconnectDevice
   METHOD state
   METHOD error
   METHOD errorString

   METHOD onErrorOccurred
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QModbusDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusDevice>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusDevice>
#endif
#endif

/*
explicit QModbusDevice(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QMODBUSDEVICE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QModbusDevice * obj = new QModbusDevice( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QModbusDevice(QModbusDevicePrivate &dd, QObject *parent = nullptr) [protected]
*/

/*
~QModbusDevice()
*/
HB_FUNC_STATIC( QMODBUSDEVICE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusDevice * obj = (QModbusDevice *) Qt5xHb::itemGetPtrStackSelfItem();

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
QVariant connectionParameter(int parameter) const
*/
HB_FUNC_STATIC( QMODBUSDEVICE_CONNECTIONPARAMETER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusDevice * obj = (QModbusDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->connectionParameter( PINT(1) ) );
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
void setConnectionParameter(int parameter, const QVariant &value)
*/
HB_FUNC_STATIC( QMODBUSDEVICE_SETCONNECTIONPARAMETER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusDevice * obj = (QModbusDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      obj->setConnectionParameter( PINT(1), *PQVARIANT(2) );
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
bool connectDevice()
*/
HB_FUNC_STATIC( QMODBUSDEVICE_CONNECTDEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusDevice * obj = (QModbusDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->connectDevice() );
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
void disconnectDevice()
*/
HB_FUNC_STATIC( QMODBUSDEVICE_DISCONNECTDEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusDevice * obj = (QModbusDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disconnectDevice();
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
State state() const
*/
HB_FUNC_STATIC( QMODBUSDEVICE_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusDevice * obj = (QModbusDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
Error error() const
*/
HB_FUNC_STATIC( QMODBUSDEVICE_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusDevice * obj = (QModbusDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
QString errorString() const
*/
HB_FUNC_STATIC( QMODBUSDEVICE_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusDevice * obj = (QModbusDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
void setState(QModbusDevice::State newState) [protected]
*/

/*
void setError(const QString &errorText, QModbusDevice::Error error) [protected]
*/

/*
virtual bool open() = 0 [protected]
*/

/*
virtual void close() = 0 [protected]
*/

void QModbusDeviceSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMODBUSDEVICE_ONERROROCCURRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusDeviceSlots_connect_signal( "errorOccurred(QModbusDevice::Error)", "errorOccurred(QModbusDevice::Error)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QMODBUSDEVICE_ONSTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QModbusDeviceSlots_connect_signal( "stateChanged(QModbusDevice::State)", "stateChanged(QModbusDevice::State)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
