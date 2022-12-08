/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QOBJECT
REQUEST QVARIANT
#endif

CLASS QJSValue

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new9
   METHOD delete
   METHOD deleteProperty
   METHOD equals
   METHOD hasOwnProperty
   METHOD hasProperty
   METHOD isArray
   METHOD isBool
   METHOD isCallable
   METHOD isDate
   METHOD isError
   METHOD isNull
   METHOD isNumber
   METHOD isObject
   METHOD isQObject
   METHOD isRegExp
   METHOD isString
   METHOD isUndefined
   METHOD isVariant
   METHOD property
   METHOD prototype
   METHOD setProperty
   METHOD setPrototype
   METHOD strictlyEquals
   METHOD toBool
   METHOD toDateTime
   METHOD toInt
   METHOD toNumber
   METHOD toQObject
   METHOD toString
   METHOD toUInt
   METHOD toVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QJSValue
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQml/QJSValue>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtQml/QJSValue>
#endif

#include <QtCore/QDateTime>
#include <QtCore/QVariant>

/*
QJSValue( QJSValue::SpecialValue value = QJSValue::UndefinedValue )
*/
HB_FUNC_STATIC( QJSVALUE_NEW1 )
{
  QJSValue * obj = new QJSValue( HB_ISNIL(1)? (QJSValue::SpecialValue) QJSValue::UndefinedValue : (QJSValue::SpecialValue) hb_parni(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJSValue( const QJSValue & other )
*/
void QJSValue_new2()
{
  QJSValue * obj = new QJSValue( *PQJSVALUE(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJSValue( bool value )
*/
void QJSValue_new3()
{
  QJSValue * obj = new QJSValue( PBOOL(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJSValue( int value )
*/
void QJSValue_new4()
{
  QJSValue * obj = new QJSValue( PINT(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJSValue( uint value )
*/
HB_FUNC_STATIC( QJSVALUE_NEW5 )
{
  QJSValue * obj = new QJSValue( PUINT(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJSValue( double value )
*/
HB_FUNC_STATIC( QJSVALUE_NEW6 )
{
  QJSValue * obj = new QJSValue( PDOUBLE(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJSValue( const QString & value )
*/
HB_FUNC_STATIC( QJSVALUE_NEW7 )
{
  QJSValue * obj = new QJSValue( PQSTRING(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJSValue( const QLatin1String & value )
*/
void QJSValue_new8()
{
  QJSValue * obj = new QJSValue( *PQLATIN1STRING(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJSValue( const char * value )
*/
HB_FUNC_STATIC( QJSVALUE_NEW9 )
{
  QJSValue * obj = new QJSValue( PCONSTCHAR(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QJSVALUE_NEW )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    HB_FUNC_EXEC( QJSVALUE_NEW1 );
    //HB_FUNC_EXEC( QJSVALUE_NEW4 );
    //HB_FUNC_EXEC( QJSVALUE_NEW5 );
    //HB_FUNC_EXEC( QJSVALUE_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQJSVALUE(1) )
  {
    QJSValue_new2();
  }
  else if( ISNUMPAR(1) && HB_ISLOG(1) )
  {
    QJSValue_new3();
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    HB_FUNC_EXEC( QJSVALUE_NEW7 );
    //HB_FUNC_EXEC( QJSVALUE_NEW9 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    QJSValue_new8();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSVALUE_DELETE )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool deleteProperty( const QString & name )
*/
HB_FUNC_STATIC( QJSVALUE_DELETEPROPERTY )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->deleteProperty( PQSTRING(1) ) );
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
bool equals( const QJSValue & other ) const
*/
HB_FUNC_STATIC( QJSVALUE_EQUALS )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQJSVALUE(1) )
    {
#endif
      RBOOL( obj->equals( *PQJSVALUE(1) ) );
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
bool hasOwnProperty( const QString & name ) const
*/
HB_FUNC_STATIC( QJSVALUE_HASOWNPROPERTY )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->hasOwnProperty( PQSTRING(1) ) );
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
bool hasProperty( const QString & name ) const
*/
HB_FUNC_STATIC( QJSVALUE_HASPROPERTY )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->hasProperty( PQSTRING(1) ) );
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
bool isArray() const
*/
HB_FUNC_STATIC( QJSVALUE_ISARRAY )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isArray() );
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
bool isBool() const
*/
HB_FUNC_STATIC( QJSVALUE_ISBOOL )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBool() );
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
bool isCallable() const
*/
HB_FUNC_STATIC( QJSVALUE_ISCALLABLE )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCallable() );
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
bool isDate() const
*/
HB_FUNC_STATIC( QJSVALUE_ISDATE )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDate() );
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
bool isError() const
*/
HB_FUNC_STATIC( QJSVALUE_ISERROR )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isError() );
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
bool isNull() const
*/
HB_FUNC_STATIC( QJSVALUE_ISNULL )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
bool isNumber() const
*/
HB_FUNC_STATIC( QJSVALUE_ISNUMBER )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNumber() );
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
bool isObject() const
*/
HB_FUNC_STATIC( QJSVALUE_ISOBJECT )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isObject() );
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
bool isQObject() const
*/
HB_FUNC_STATIC( QJSVALUE_ISQOBJECT )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isQObject() );
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
bool isRegExp() const
*/
HB_FUNC_STATIC( QJSVALUE_ISREGEXP )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRegExp() );
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
bool isString() const
*/
HB_FUNC_STATIC( QJSVALUE_ISSTRING )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isString() );
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
bool isUndefined() const
*/
HB_FUNC_STATIC( QJSVALUE_ISUNDEFINED )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isUndefined() );
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
bool isVariant() const
*/
HB_FUNC_STATIC( QJSVALUE_ISVARIANT )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVariant() );
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
QJSValue property( const QString & name ) const
*/
void QJSValue_property1()
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QJSValue * ptr = new QJSValue( obj->property( PQSTRING(1) ) );
    Qt5xHb::createReturnClass( ptr, "QJSVALUE", true );
  }
}

/*
QJSValue property( quint32 arrayIndex ) const
*/
void QJSValue_property2()
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QJSValue * ptr = new QJSValue( obj->property( PQUINT32(1) ) );
    Qt5xHb::createReturnClass( ptr, "QJSVALUE", true );
  }
}

HB_FUNC_STATIC( QJSVALUE_PROPERTY )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    QJSValue_property1();
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    QJSValue_property2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QJSValue prototype() const
*/
HB_FUNC_STATIC( QJSVALUE_PROTOTYPE )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QJSValue * ptr = new QJSValue( obj->prototype() );
      Qt5xHb::createReturnClass( ptr, "QJSVALUE", true );
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
void setProperty( const QString & name, const QJSValue & value )
*/
void QJSValue_setProperty1()
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setProperty( PQSTRING(1), *PQJSVALUE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProperty( quint32 arrayIndex, const QJSValue & value )
*/
void QJSValue_setProperty2()
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setProperty( PQUINT32(1), *PQJSVALUE(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QJSVALUE_SETPROPERTY )
{
  if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQJSVALUE(2) )
  {
    QJSValue_setProperty1();
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && ISQJSVALUE(2) )
  {
    QJSValue_setProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPrototype( const QJSValue & prototype )
*/
HB_FUNC_STATIC( QJSVALUE_SETPROTOTYPE )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQJSVALUE(1) )
    {
#endif
      obj->setPrototype( *PQJSVALUE(1) );
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
bool strictlyEquals( const QJSValue & other ) const
*/
HB_FUNC_STATIC( QJSVALUE_STRICTLYEQUALS )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQJSVALUE(1) )
    {
#endif
      RBOOL( obj->strictlyEquals( *PQJSVALUE(1) ) );
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
bool toBool() const
*/
HB_FUNC_STATIC( QJSVALUE_TOBOOL )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->toBool() );
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
QDateTime toDateTime() const
*/
HB_FUNC_STATIC( QJSVALUE_TODATETIME )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->toDateTime() );
      Qt5xHb::createReturnClass( ptr, "QDATETIME", true );
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
qint32 toInt() const
*/
HB_FUNC_STATIC( QJSVALUE_TOINT )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT32( obj->toInt() );
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
double toNumber() const
*/
HB_FUNC_STATIC( QJSVALUE_TONUMBER )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->toNumber() );
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
QObject * toQObject() const
*/
HB_FUNC_STATIC( QJSVALUE_TOQOBJECT )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->toQObject();
      Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
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
QString toString() const
*/
HB_FUNC_STATIC( QJSVALUE_TOSTRING )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString() );
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
quint32 toUInt() const
*/
HB_FUNC_STATIC( QJSVALUE_TOUINT )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT32( obj->toUInt() );
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
QVariant toVariant() const
*/
HB_FUNC_STATIC( QJSVALUE_TOVARIANT )
{
  QJSValue * obj = (QJSValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVariant * ptr = new QVariant( obj->toVariant() );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QJSVALUE_NEWFROM )
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

HB_FUNC_STATIC( QJSVALUE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QJSVALUE_NEWFROM );
}

HB_FUNC_STATIC( QJSVALUE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QJSVALUE_NEWFROM );
}

HB_FUNC_STATIC( QJSVALUE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QJSVALUE_SETSELFDESTRUCTION )
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
