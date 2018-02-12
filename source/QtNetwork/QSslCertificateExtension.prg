/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QSslCertificateExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD isCritical
   METHOD isSupported
   METHOD name
   METHOD oid
   METHOD swap
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSslCertificateExtension
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSslCertificateExtension>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSslCertificateExtension>
#endif

/*
QSslCertificateExtension()
*/
void QSslCertificateExtension_new1 ()
{
  QSslCertificateExtension * o = new QSslCertificateExtension ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QSslCertificateExtension(const QSslCertificateExtension &other)
*/
void QSslCertificateExtension_new2 ()
{
  QSslCertificateExtension * o = new QSslCertificateExtension ( *PQSSLCERTIFICATEEXTENSION(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QSslCertificateExtension()
//[2]QSslCertificateExtension(const QSslCertificateExtension &other)

HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSslCertificateExtension_new1();
  }
  else if( ISNUMPAR(1) && ISQSSLCERTIFICATEEXTENSION(1) )
  {
    QSslCertificateExtension_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QSslCertificateExtension()
*/
HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_DELETE )
{
  QSslCertificateExtension * obj = (QSslCertificateExtension *) _qt5xhb_itemGetPtrStackSelfItem();

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
void swap(QSslCertificateExtension &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_SWAP )
{
  QSslCertificateExtension * obj = (QSslCertificateExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSSLCERTIFICATEEXTENSION(1) )
    {
      obj->swap ( *PQSSLCERTIFICATEEXTENSION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString oid() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_OID )
{
  QSslCertificateExtension * obj = (QSslCertificateExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->oid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString name() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_NAME )
{
  QSslCertificateExtension * obj = (QSslCertificateExtension *) _qt5xhb_itemGetPtrStackSelfItem();

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
QVariant value() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_VALUE )
{
  QSslCertificateExtension * obj = (QSslCertificateExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QVariant * ptr = new QVariant( obj->value () );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isCritical() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_ISCRITICAL )
{
  QSslCertificateExtension * obj = (QSslCertificateExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isCritical () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isSupported() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_ISSUPPORTED )
{
  QSslCertificateExtension * obj = (QSslCertificateExtension *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isSupported () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_NEWFROM )
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

HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSSLCERTIFICATEEXTENSION_NEWFROM );
}

HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSSLCERTIFICATEEXTENSION_NEWFROM );
}

HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSSLCERTIFICATEEXTENSION_SETSELFDESTRUCTION )
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
