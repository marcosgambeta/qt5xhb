/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QDeclarativeError

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD column
   METHOD description
   METHOD isValid
   METHOD line
   METHOD setColumn
   METHOD setDescription
   METHOD setLine
   METHOD setUrl
   METHOD toString
   METHOD url

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDeclarativeError>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeError>
#endif

/*
QDeclarativeError ()
*/
void QDeclarativeError_new1 ()
{
  QDeclarativeError * o = new QDeclarativeError ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDeclarativeError ( const QDeclarativeError & other )
*/
void QDeclarativeError_new2 ()
{
  QDeclarativeError * par1 = (QDeclarativeError *) _qt5xhb_itemGetPtr(1);
  QDeclarativeError * o = new QDeclarativeError ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QDeclarativeError ()
//[2]QDeclarativeError ( const QDeclarativeError & other )

HB_FUNC_STATIC( QDECLARATIVEERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeError_new1();
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVEERROR(1) )
  {
    QDeclarativeError_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int column () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_COLUMN )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->column () );
  }
}

/*
QString description () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_DESCRIPTION )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->description ().toLatin1().data() );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_ISVALID )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}

/*
int line () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_LINE )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->line () );
  }
}

/*
void setColumn ( int column )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETCOLUMN )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDescription ( const QString & description )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETDESCRIPTION )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setDescription ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLine ( int line )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETLINE )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setLine ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_SETURL )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQURL(1) )
    {
      QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
      obj->setUrl ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString toString () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_TOSTRING )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->toString ().toLatin1().data() );
  }
}

/*
QUrl url () const
*/
HB_FUNC_STATIC( QDECLARATIVEERROR_URL )
{
  QDeclarativeError * obj = (QDeclarativeError *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}

HB_FUNC_STATIC( QDECLARATIVEERROR_NEWFROM )
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

HB_FUNC_STATIC( QDECLARATIVEERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVEERROR_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVEERROR_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDECLARATIVEERROR_SETSELFDESTRUCTION )
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
