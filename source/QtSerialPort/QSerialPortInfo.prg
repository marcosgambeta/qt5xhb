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

CLASS QSerialPortInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD portName
   METHOD systemLocation
   METHOD description
   METHOD manufacturer
   METHOD vendorIdentifier
   METHOD productIdentifier
   METHOD hasVendorIdentifier
   METHOD hasProductIdentifier
   METHOD isNull
   METHOD isBusy
   METHOD isValid
   METHOD standardBaudRates
   METHOD availablePorts

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSerialPortInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSerialPort/QSerialPortInfo>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSerialPort/QSerialPortInfo>
#endif
#endif

#include <QtCore/QString>

/*
QSerialPortInfo()
*/
void QSerialPortInfo_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = new QSerialPortInfo();
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QSerialPortInfo( const QSerialPort & port )
*/
void QSerialPortInfo_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = new QSerialPortInfo( *PQSERIALPORT(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QSerialPortInfo( const QString & name )
*/
void QSerialPortInfo_new3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = new QSerialPortInfo( PQSTRING(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QSerialPortInfo( const QSerialPortInfo & other )
*/
void QSerialPortInfo_new4()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = new QSerialPortInfo( *PQSERIALPORTINFO(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

HB_FUNC_STATIC( QSERIALPORTINFO_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(0) )
  {
    QSerialPortInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQSERIALPORT(1) )
  {
    QSerialPortInfo_new2();
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    QSerialPortInfo_new3();
  }
  else if( ISNUMPAR(1) && ISQSERIALPORTINFO(1) )
  {
    QSerialPortInfo_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QSERIALPORTINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

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
void swap( QSerialPortInfo & other )
*/
HB_FUNC_STATIC( QSERIALPORTINFO_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSERIALPORTINFO(1) )
    {
#endif
      obj->swap( *PQSERIALPORTINFO(1) );
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
QString portName() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_PORTNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->portName() );
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
QString systemLocation() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_SYSTEMLOCATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->systemLocation() );
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
QString description() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_DESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->description() );
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
QString manufacturer() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_MANUFACTURER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->manufacturer() );
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
quint16 vendorIdentifier() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_VENDORIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->vendorIdentifier() );
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
quint16 productIdentifier() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_PRODUCTIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->productIdentifier() );
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
bool hasVendorIdentifier() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_HASVENDORIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasVendorIdentifier() );
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
bool hasProductIdentifier() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_HASPRODUCTIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasProductIdentifier() );
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
bool isNull() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_ISNULL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
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
bool isBusy() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_ISBUSY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBusy() );
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
bool isValid() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
static QList<qint32> standardBaudRates()
*/
HB_FUNC_STATIC( QSERIALPORTINFO_STANDARDBAUDRATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QList<qint32> list = QSerialPortInfo::standardBaudRates();
    Qt5xHb::convert_qlist_qint32_to_array( list );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static QList<QSerialPortInfo> availablePorts()
*/
HB_FUNC_STATIC( QSERIALPORTINFO_AVAILABLEPORTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QList<QSerialPortInfo> list = QSerialPortInfo::availablePorts();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSERIALPORTINFO" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSerialPortInfo *) new QSerialPortInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSERIALPORTINFO", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

HB_FUNC_STATIC( QSERIALPORTINFO_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSERIALPORTINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSERIALPORTINFO_NEWFROM );
}

HB_FUNC_STATIC( QSERIALPORTINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSERIALPORTINFO_NEWFROM );
}

HB_FUNC_STATIC( QSERIALPORTINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSERIALPORTINFO_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
