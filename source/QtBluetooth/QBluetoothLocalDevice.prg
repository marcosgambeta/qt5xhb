/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
REQUEST QBLUETOOTHHOSTINFO
#endif

CLASS QBluetoothLocalDevice INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD requestPairing
   METHOD pairingStatus
   METHOD setHostMode
   METHOD hostMode
   METHOD powerOn
   METHOD name
   METHOD address
   METHOD pairingConfirmation
   METHOD allDevices

   METHOD onHostModeStateChanged
   METHOD onPairingFinished
   METHOD onPairingDisplayPinCode
   METHOD onPairingDisplayConfirmation
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothLocalDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothLocalDevice>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothLocalDevice>
#endif
#endif

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    /*
    QBluetoothLocalDevice( QObject * parent = 0 )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QBluetoothLocalDevice * obj = new QBluetoothLocalDevice( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    /*
    QBluetoothLocalDevice( const QBluetoothAddress & address, QObject * parent = 0 )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QBluetoothLocalDevice * obj = new QBluetoothLocalDevice( *PQBLUETOOTHADDRESS(1), OPQOBJECT(2,0) );
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void requestPairing( const QBluetoothAddress & address, QBluetoothLocalDevice::Pairing pairing )
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_REQUESTPAIRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQBLUETOOTHADDRESS(1) && HB_ISNUM(2) )
    {
#endif
      obj->requestPairing( *PQBLUETOOTHADDRESS(1), (QBluetoothLocalDevice::Pairing) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QBluetoothLocalDevice::Pairing pairingStatus( const QBluetoothAddress & address ) const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_PAIRINGSTATUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBLUETOOTHADDRESS(1) )
    {
#endif
      RENUM( obj->pairingStatus( *PQBLUETOOTHADDRESS(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setHostMode( QBluetoothLocalDevice::HostMode mode )
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_SETHOSTMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setHostMode( (QBluetoothLocalDevice::HostMode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QBluetoothLocalDevice::HostMode hostMode() const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_HOSTMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->hostMode() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void powerOn()
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_POWERON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->powerOn();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
#endif
}

/*
QBluetoothAddress address() const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBluetoothAddress * ptr = new QBluetoothAddress( obj->address() );
      Qt5xHb::createReturnClass(ptr, "QBLUETOOTHADDRESS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void pairingConfirmation( bool confirmation )
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_PAIRINGCONFIRMATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->pairingConfirmation( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
static QList<QBluetoothHostInfo> allDevices()
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ALLDEVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QList<QBluetoothHostInfo> list = QBluetoothLocalDevice::allDevices();
    PHB_DYNS pDynSym = hb_dynsymFindName("QBLUETOOTHHOSTINFO");
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym != NULL )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pObject = hb_itemNew(NULL);
        hb_itemCopy(pObject, hb_stackReturnItem());
        PHB_ITEM pItem = hb_itemPutPtr(NULL, new QBluetoothHostInfo(list[i]));
        hb_objSendMsg(pObject, "_POINTER", 1, pItem);
        hb_itemRelease(pItem);
        PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
        hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
        hb_itemRelease(pDestroy);
        hb_arrayAddForward(pArray, pObject);
        hb_itemRelease(pObject);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QBLUETOOTHHOSTINFO", HB_ERR_ARGS_BASEPARAMS);
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

void QBluetoothLocalDeviceSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ONHOSTMODESTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDeviceSlots_connect_signal("hostModeStateChanged(QBluetoothLocalDevice::HostMode)", "hostModeStateChanged(QBluetoothLocalDevice::HostMode)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ONPAIRINGFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDeviceSlots_connect_signal("pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)", "pairingFinished(QBluetoothAddress,QBluetoothLocalDevice::Pairing)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ONPAIRINGDISPLAYPINCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDeviceSlots_connect_signal("pairingDisplayPinCode(QBluetoothAddress,QString)", "pairingDisplayPinCode(QBluetoothAddress,QString)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ONPAIRINGDISPLAYCONFIRMATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDeviceSlots_connect_signal("pairingDisplayConfirmation(QBluetoothAddress,QString)", "pairingDisplayConfirmation(QBluetoothAddress,QString)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDeviceSlots_connect_signal("error(QBluetoothLocalDevice::Error)", "error(QBluetoothLocalDevice::Error)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
