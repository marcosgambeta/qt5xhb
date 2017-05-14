/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHADDRESS
REQUEST QBLUETOOTHHOSTINFO
#endif

CLASS QBluetoothLocalDevice INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QBluetoothLocalDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothLocalDevice>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothLocalDevice>
#endif
#endif

/*
QBluetoothLocalDevice(QObject *parent = 0)
*/
void QBluetoothLocalDevice_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QBluetoothLocalDevice * o = new QBluetoothLocalDevice ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QBluetoothLocalDevice(const QBluetoothAddress &address, QObject *parent = 0)
*/
void QBluetoothLocalDevice_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothAddress * par1 = (QBluetoothAddress *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QBluetoothLocalDevice * o = new QBluetoothLocalDevice ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

//[1]QBluetoothLocalDevice(QObject *parent = 0)
//[2]QBluetoothLocalDevice(const QBluetoothAddress &address, QObject *parent = 0)

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothLocalDevice_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothLocalDevice_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
#endif
}

/*
void requestPairing(const QBluetoothAddress &address, Pairing pairing)
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_REQUESTPAIRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBLUETOOTHADDRESS(1) && ISNUM(2) )
    {
      QBluetoothAddress * par1 = (QBluetoothAddress *) _qt5xhb_itemGetPtr(1);
      int par2 = hb_parni(2);
      obj->requestPairing ( *par1,  (QBluetoothLocalDevice::Pairing) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
Pairing pairingStatus(const QBluetoothAddress &address) const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_PAIRINGSTATUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBLUETOOTHADDRESS(1) )
    {
      QBluetoothAddress * par1 = (QBluetoothAddress *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->pairingStatus ( *par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setHostMode(QBluetoothLocalDevice::HostMode mode)
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_SETHOSTMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setHostMode (  (QBluetoothLocalDevice::HostMode) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
HostMode hostMode() const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_HOSTMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->hostMode (  ) );
  }
#endif
}

/*
void powerOn()
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_POWERON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->powerOn (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->name (  ).toLatin1().data() );
  }
#endif
}

/*
QBluetoothAddress address() const
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothAddress * ptr = new QBluetoothAddress( obj->address (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS" );
  }
#endif
}

/*
void pairingConfirmation(bool confirmation)
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_PAIRINGCONFIRMATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothLocalDevice * obj = (QBluetoothLocalDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->pairingConfirmation ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
static QList<QBluetoothHostInfo> allDevices()
*/
HB_FUNC_STATIC( QBLUETOOTHLOCALDEVICE_ALLDEVICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QList<QBluetoothHostInfo> list = QBluetoothLocalDevice::allDevices (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBLUETOOTHHOSTINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QBLUETOOTHHOSTINFO" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QBluetoothHostInfo *) new QBluetoothHostInfo ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}

#pragma ENDDUMP
