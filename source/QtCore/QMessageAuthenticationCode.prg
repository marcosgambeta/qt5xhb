/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QMessageAuthenticationCode

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reset
   METHOD setKey
   METHOD addData
   METHOD result
   METHOD hash

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMessageAuthenticationCode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMessageAuthenticationCode>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMessageAuthenticationCode>
#endif

/*
QMessageAuthenticationCode(QCryptographicHash::Algorithm method,const QByteArray &key = QByteArray())
*/
HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQBYTEARRAY(2) )
  {
    int par1 = hb_parni(1);
    QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
    QMessageAuthenticationCode * o = new QMessageAuthenticationCode (  (QCryptographicHash::Algorithm) par1, par2 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_DELETE )
{
  QMessageAuthenticationCode * obj = (QMessageAuthenticationCode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void reset()
*/
HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_RESET )
{
  QMessageAuthenticationCode * obj = (QMessageAuthenticationCode *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->reset (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setKey(const QByteArray &key)
*/
HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_SETKEY )
{
  QMessageAuthenticationCode * obj = (QMessageAuthenticationCode *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) )
    {
      QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
      obj->setKey ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addData(const char *data, int length)
*/
void QMessageAuthenticationCode_addData1 ()
{
  QMessageAuthenticationCode * obj = (QMessageAuthenticationCode *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->addData (  (const char *) par1, PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addData(const QByteArray &data)
*/
void QMessageAuthenticationCode_addData2 ()
{
  QMessageAuthenticationCode * obj = (QMessageAuthenticationCode *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    obj->addData ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool addData(QIODevice *device)
*/
void QMessageAuthenticationCode_addData3 ()
{
  QMessageAuthenticationCode * obj = (QMessageAuthenticationCode *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->addData ( par1 ) );
  }
}

//[1]void addData(const char *data, int length)
//[2]void addData(const QByteArray &data)
//[3]bool addData(QIODevice *device)

HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_ADDDATA )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QMessageAuthenticationCode_addData1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QMessageAuthenticationCode_addData2();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QMessageAuthenticationCode_addData3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray result() const
*/
HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_RESULT )
{
  QMessageAuthenticationCode * obj = (QMessageAuthenticationCode *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->result (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
static QByteArray hash(const QByteArray &message, const QByteArray &key,QCryptographicHash::Algorithm method)
*/
HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_HASH )
{
  if( ISQBYTEARRAY(1) && ISQBYTEARRAY(2) && ISNUM(3) )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    QByteArray * par2 = (QByteArray *) _qt5xhb_itemGetPtr(2);
    int par3 = hb_parni(3);
    QByteArray * ptr = new QByteArray( QMessageAuthenticationCode::hash ( *par1, *par2,  (QCryptographicHash::Algorithm) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMESSAGEAUTHENTICATIONCODE_NEWFROM );
}

HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMESSAGEAUTHENTICATIONCODE_NEWFROM );
}

HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMESSAGEAUTHENTICATIONCODE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
