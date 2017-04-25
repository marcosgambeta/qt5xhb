/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QXmlName

   DATA pointer
   //DATA class_id INIT Class_Id_QXmlName
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD localName
   METHOD namespaceUri
   METHOD prefix
   METHOD toClarkName
   METHOD fromClarkName
   METHOD isNCName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlName
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlName>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlName>
#endif

/*
QXmlName ()
*/
HB_FUNC_STATIC( QXMLNAME_NEW1 )
{
  QXmlName * o = new QXmlName (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )
*/
HB_FUNC_STATIC( QXMLNAME_NEW2 )
{
  QXmlNamePool * par1 = (QXmlNamePool *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  QXmlName * o = new QXmlName ( *par1, par2, par3, par4 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QXmlName ()
//[2]QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )

HB_FUNC_STATIC( QXMLNAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLNAME_NEW1 );
  }
  else if( ISBETWEEN(2,4) && ISQXMLNAMEPOOL(1) && ISCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    HB_FUNC_EXEC( QXMLNAME_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLNAME_DELETE )
{
  QXmlName * obj = (QXmlName *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isNull () const
*/
HB_FUNC_STATIC( QXMLNAME_ISNULL )
{
  QXmlName * obj = (QXmlName *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QString localName ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_LOCALNAME )
{
  QXmlName * obj = (QXmlName *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNamePool * par1 = (QXmlNamePool *) _qt5xhb_itemGetPtr(1);
    hb_retc( (const char *) obj->localName ( *par1 ).toLatin1().data() );
  }
}


/*
QString namespaceUri ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_NAMESPACEURI )
{
  QXmlName * obj = (QXmlName *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNamePool * par1 = (QXmlNamePool *) _qt5xhb_itemGetPtr(1);
    hb_retc( (const char *) obj->namespaceUri ( *par1 ).toLatin1().data() );
  }
}


/*
QString prefix ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_PREFIX )
{
  QXmlName * obj = (QXmlName *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNamePool * par1 = (QXmlNamePool *) _qt5xhb_itemGetPtr(1);
    hb_retc( (const char *) obj->prefix ( *par1 ).toLatin1().data() );
  }
}


/*
QString toClarkName ( const QXmlNamePool & namePool ) const
*/
HB_FUNC_STATIC( QXMLNAME_TOCLARKNAME )
{
  QXmlName * obj = (QXmlName *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNamePool * par1 = (QXmlNamePool *) _qt5xhb_itemGetPtr(1);
    hb_retc( (const char *) obj->toClarkName ( *par1 ).toLatin1().data() );
  }
}


/*
static QXmlName fromClarkName ( const QString & clarkName, const QXmlNamePool & namePool )
*/
HB_FUNC_STATIC( QXMLNAME_FROMCLARKNAME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QXmlNamePool * par2 = (QXmlNamePool *) _qt5xhb_itemGetPtr(2);
  QXmlName * ptr = new QXmlName( QXmlName::fromClarkName ( par1, *par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QXMLNAME", true );
}


/*
static bool isNCName ( const QString & candidate )
*/
HB_FUNC_STATIC( QXMLNAME_ISNCNAME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retl( QXmlName::isNCName ( par1 ) );
}



HB_FUNC_STATIC( QXMLNAME_NEWFROM )
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

HB_FUNC_STATIC( QXMLNAME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLNAME_NEWFROM );
}

HB_FUNC_STATIC( QXMLNAME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLNAME_NEWFROM );
}

HB_FUNC_STATIC( QXMLNAME_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLNAME_SETSELFDESTRUCTION )
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
