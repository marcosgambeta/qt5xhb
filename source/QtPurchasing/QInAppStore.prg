/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QINAPPPRODUCT
#endif

CLASS QInAppStore INHERIT QObject

   METHOD new
   METHOD delete
   METHOD restorePurchases
   METHOD registerProduct
   METHOD registeredProduct
   METHOD setPlatformProperty

   METHOD onProductRegistered
   METHOD onProductUnknown
   METHOD onTransactionReady

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInAppStore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QInAppStore>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QInAppStore>
#endif

/*
explicit QInAppStore(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QINAPPSTORE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QInAppStore * o = new QInAppStore ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QInAppStore()
*/
HB_FUNC_STATIC( QINAPPSTORE_DELETE )
{
  QInAppStore * obj = (QInAppStore *) _qt5xhb_itemGetPtrStackSelfItem();

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
Q_INVOKABLE void restorePurchases()
*/
HB_FUNC_STATIC( QINAPPSTORE_RESTOREPURCHASES )
{
  QInAppStore * obj = (QInAppStore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->restorePurchases ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q_INVOKABLE void registerProduct(QInAppProduct::ProductType productType, const QString &identifier)
*/
HB_FUNC_STATIC( QINAPPSTORE_REGISTERPRODUCT )
{
  QInAppStore * obj = (QInAppStore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
    {
#endif
      obj->registerProduct ( (QInAppProduct::ProductType) hb_parni(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q_INVOKABLE QInAppProduct *registeredProduct(const QString &identifier) const
*/
HB_FUNC_STATIC( QINAPPSTORE_REGISTEREDPRODUCT )
{
  QInAppStore * obj = (QInAppStore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QInAppProduct * ptr = obj->registeredProduct ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QINAPPPRODUCT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Q_INVOKABLE void setPlatformProperty(const QString &propertyName, const QString &value)
*/
HB_FUNC_STATIC( QINAPPSTORE_SETPLATFORMPROPERTY )
{
  QInAppStore * obj = (QInAppStore *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      obj->setPlatformProperty ( PQSTRING(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void registerPendingProducts() [private] (slot)
*/

/*
void registerProduct(QInAppProduct *) [private] (slot)
*/

/*
void setupBackend() [private]
*/

void QInAppStoreSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QINAPPSTORE_ONPRODUCTREGISTERED )
{
  QInAppStoreSlots_connect_signal( "productRegistered(QInAppProduct*)", "productRegistered(QInAppProduct*)" );
}

HB_FUNC_STATIC( QINAPPSTORE_ONPRODUCTUNKNOWN )
{
  QInAppStoreSlots_connect_signal( "productUnknown(QInAppProduct::ProductType,QString)", "productUnknown(QInAppProduct::ProductType,QString)" );
}

HB_FUNC_STATIC( QINAPPSTORE_ONTRANSACTIONREADY )
{
  QInAppStoreSlots_connect_signal( "transactionReady(QInAppTransaction*)", "transactionReady(QInAppTransaction*)" );
}

#pragma ENDDUMP
