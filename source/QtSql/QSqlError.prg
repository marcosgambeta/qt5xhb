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

CLASS QSqlError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD databaseText
   METHOD setDatabaseText
   METHOD driverText
   METHOD setDriverText
   METHOD isValid
   METHOD number
   METHOD setNumber
   METHOD text
   METHOD type
   METHOD setType
   METHOD nativeErrorCode
   METHOD swap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlError
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSql/QSqlError>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtSql/QSqlError>
#endif

/*
QSqlError( const QString & driverText, const QString & databaseText, QSqlError::ErrorType type, int number )
*/
void QSqlError_new1()
{
  QSqlError * obj = new QSqlError( PQSTRING(1), PQSTRING(2), (QSqlError::ErrorType) hb_parni(3), PINT(4) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QSqlError( const QString & driverText = QString(), const QString & databaseText = QString(), QSqlError::ErrorType type = QSqlError::NoError, const QString & errorCode = QString() )
*/
void QSqlError_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QSqlError * obj = new QSqlError( OPQSTRING(1,QString()), OPQSTRING(2,QString()), HB_ISNIL(3)? (QSqlError::ErrorType) QSqlError::NoError : (QSqlError::ErrorType) hb_parni(3), OPQSTRING(4,QString()) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QSqlError( const QSqlError & other )
*/
void QSqlError_new3()
{
  QSqlError * obj = new QSqlError( *PQSQLERROR(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSQLERROR_NEW )
{
  if( ISNUMPAR(4) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISNUM(3) && HB_ISNUM(4) )
  {
    QSqlError_new1();
  }
  else if( ISBETWEEN(0,4) && ( HB_ISCHAR(1)||HB_ISNIL(1)) && ( HB_ISCHAR(2)||HB_ISNIL(2)) && ( HB_ISNUM(3)||HB_ISNIL(3)) && ( HB_ISCHAR(4)||HB_ISNIL(4)) )
  {
    QSqlError_new2();
  }
  else if( ISNUMPAR(1) && ISQSQLERROR(1) )
  {
    QSqlError_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLERROR_DELETE )
{
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

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
QString databaseText() const
*/
HB_FUNC_STATIC( QSQLERROR_DATABASETEXT )
{
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->databaseText() );
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
QT_DEPRECATED void setDatabaseText( const QString & databaseText )
*/
HB_FUNC_STATIC( QSQLERROR_SETDATABASETEXT )
{
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setDatabaseText( PQSTRING(1) );
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
QString driverText() const
*/
HB_FUNC_STATIC( QSQLERROR_DRIVERTEXT )
{
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->driverText() );
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
QT_DEPRECATED void setDriverText( const QString & driverText )
*/
HB_FUNC_STATIC( QSQLERROR_SETDRIVERTEXT )
{
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setDriverText( PQSTRING(1) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QSQLERROR_ISVALID )
{
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
QT_DEPRECATED int number() const
*/
HB_FUNC_STATIC( QSQLERROR_NUMBER )
{
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->number() );
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
QT_DEPRECATED void setNumber( int number )
*/
HB_FUNC_STATIC( QSQLERROR_SETNUMBER )
{
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setNumber( PINT(1) );
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
QString text() const
*/
HB_FUNC_STATIC( QSQLERROR_TEXT )
{
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->text() );
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
QSqlError::ErrorType type() const
*/
HB_FUNC_STATIC( QSQLERROR_TYPE )
{
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
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
QT_DEPRECATED void setType( QSqlError::ErrorType type )
*/
HB_FUNC_STATIC( QSQLERROR_SETTYPE )
{
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setType( (QSqlError::ErrorType) hb_parni(1) );
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
QString nativeErrorCode() const
*/
HB_FUNC_STATIC( QSQLERROR_NATIVEERRORCODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->nativeErrorCode() );
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
void swap( QSqlError & other )
*/
HB_FUNC_STATIC( QSQLERROR_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QSqlError * obj = (QSqlError *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSQLERROR(1) )
    {
#endif
      obj->swap( *PQSQLERROR(1) );
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

HB_FUNC_STATIC( QSQLERROR_NEWFROM )
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

HB_FUNC_STATIC( QSQLERROR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSQLERROR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLERROR_NEWFROM );
}

HB_FUNC_STATIC( QSQLERROR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLERROR_SETSELFDESTRUCTION )
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
