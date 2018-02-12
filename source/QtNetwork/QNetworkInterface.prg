/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKADDRESSENTRY
REQUEST QHOSTADDRESS
#endif

CLASS QNetworkInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD addressEntries
   METHOD allAddresses
   METHOD allInterfaces
   METHOD flags
   METHOD hardwareAddress
   METHOD humanReadableName
   METHOD index
   METHOD interfaceFromIndex
   METHOD interfaceFromName
   METHOD interfaceIndexFromName
   METHOD interfaceNameFromIndex
   METHOD isValid
   METHOD name
   METHOD swap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QNetworkInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QNetworkInterface>
#endif

/*
QNetworkInterface ()
*/
void QNetworkInterface_new1 ()
{
  QNetworkInterface * o = new QNetworkInterface ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QNetworkInterface ( const QNetworkInterface & other )
*/
void QNetworkInterface_new2 ()
{
  QNetworkInterface * o = new QNetworkInterface ( *PQNETWORKINTERFACE(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QNetworkInterface ()
//[2]QNetworkInterface ( const QNetworkInterface & other )

HB_FUNC_STATIC( QNETWORKINTERFACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkInterface_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKINTERFACE(1) )
  {
    QNetworkInterface_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QNetworkInterface()
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_DELETE )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();

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
QList<QNetworkAddressEntry> addressEntries () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ADDRESSENTRIES )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QNetworkAddressEntry> list = obj->addressEntries ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QNETWORKADDRESSENTRY" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QNetworkAddressEntry *) new QNetworkAddressEntry ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QNETWORKADDRESSENTRY", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
InterfaceFlags flags () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_FLAGS )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->flags () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString hardwareAddress () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_HARDWAREADDRESS )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->hardwareAddress () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString humanReadableName () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_HUMANREADABLENAME )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->humanReadableName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int index () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_INDEX )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->index () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ISVALID )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString name () const
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_NAME )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->name () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static QList<QHostAddress> allAddresses ()
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ALLADDRESSES )
{
    if( ISNUMPAR(0) )
  {
      QList<QHostAddress> list = QNetworkInterface::allAddresses ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QHOSTADDRESS" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QHostAddress *) new QHostAddress ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QHOSTADDRESS", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QList<QNetworkInterface> allInterfaces ()
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_ALLINTERFACES )
{
    if( ISNUMPAR(0) )
  {
      QList<QNetworkInterface> list = QNetworkInterface::allInterfaces ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QNETWORKINTERFACE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QNetworkInterface *) new QNetworkInterface ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QNETWORKINTERFACE", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QNetworkInterface interfaceFromIndex ( int index )
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_INTERFACEFROMINDEX )
{
    if( ISNUMPAR(1) && ISNUM(1) )
  {
      QNetworkInterface * ptr = new QNetworkInterface( QNetworkInterface::interfaceFromIndex ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QNETWORKINTERFACE", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QNetworkInterface interfaceFromName ( const QString & name )
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_INTERFACEFROMNAME )
{
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      QNetworkInterface * ptr = new QNetworkInterface( QNetworkInterface::interfaceFromName ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QNETWORKINTERFACE", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static int interfaceIndexFromName(const QString &name)
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_INTERFACEINDEXFROMNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      RINT( QNetworkInterface::interfaceIndexFromName ( PQSTRING(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString interfaceNameFromIndex(int index)
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_INTERFACENAMEFROMINDEX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    if( ISNUMPAR(1) && ISNUM(1) )
  {
      RQSTRING( QNetworkInterface::interfaceNameFromIndex ( PINT(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
void swap(QNetworkInterface &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QNETWORKINTERFACE_SWAP )
{
  QNetworkInterface * obj = (QNetworkInterface *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQNETWORKINTERFACE(1) )
    {
      obj->swap ( *PQNETWORKINTERFACE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QNETWORKINTERFACE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
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

HB_FUNC_STATIC( QNETWORKINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKINTERFACE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
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
