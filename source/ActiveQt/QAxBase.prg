/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAXOBJECT
REQUEST QVARIANT
#endif

CLASS QAxBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD asVariant
   METHOD clear
   METHOD control
   METHOD disableClassInfo
   METHOD disableEventSink
   METHOD disableMetaObject
   METHOD dynamicCall
   METHOD generateDocumentation
   METHOD isNull
   METHOD propertyWritable
   METHOD querySubObject
   METHOD setControl
   METHOD setPropertyWritable
   METHOD verbs

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAxBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <ActiveQt/QAxBase>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <ActiveQt/QAxBase>
#endif

#include <QtCore/QStringList>
#include <ActiveQt/QAxObject>

HB_FUNC_STATIC( QAXBASE_DELETE )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QVariant asVariant() const
*/
HB_FUNC_STATIC( QAXBASE_ASVARIANT )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVariant * ptr = new QVariant( obj->asVariant() );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void clear()
*/
HB_FUNC_STATIC( QAXBASE_CLEAR )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString control() const
*/
HB_FUNC_STATIC( QAXBASE_CONTROL )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->control() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void disableClassInfo()
*/
HB_FUNC_STATIC( QAXBASE_DISABLECLASSINFO )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disableClassInfo();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void disableEventSink()
*/
HB_FUNC_STATIC( QAXBASE_DISABLEEVENTSINK )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disableEventSink();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void disableMetaObject()
*/
HB_FUNC_STATIC( QAXBASE_DISABLEMETAOBJECT )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disableMetaObject();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QAXBASE_DYNAMICCALL )
{
  if( ISBETWEEN(1,9) && HB_ISCHAR(1) && (ISQVARIANT(2)||HB_ISNIL(2)) && (ISQVARIANT(3)||HB_ISNIL(3)) && (ISQVARIANT(4)||HB_ISNIL(4)) && (ISQVARIANT(5)||HB_ISNIL(5)) && (ISQVARIANT(6)||HB_ISNIL(6)) && (ISQVARIANT(7)||HB_ISNIL(7)) && (ISQVARIANT(8)||HB_ISNIL(8)) && (ISQVARIANT(9)||HB_ISNIL(9)) )
  {
    /*
    QVariant dynamicCall( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
    */
    QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QVariant * ptr = new QVariant( obj->dynamicCall( PCONSTCHAR(1), HB_ISNIL(2)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(2), HB_ISNIL(3)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(3), HB_ISNIL(4)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(4), HB_ISNIL(5)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(5), HB_ISNIL(6)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(6), HB_ISNIL(7)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(7), HB_ISNIL(8)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(8), HB_ISNIL(9)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(9) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2) )
  {
    /*
    QVariant dynamicCall( const char * function, QList<QVariant> & vars )
    */
    QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QVariant * ptr = new QVariant( obj->dynamicCall( PCONSTCHAR(1), PQVARIANTLIST(2) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString generateDocumentation()
*/
HB_FUNC_STATIC( QAXBASE_GENERATEDOCUMENTATION )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->generateDocumentation() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QAXBASE_ISNULL )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool propertyWritable( const char * prop ) const
*/
HB_FUNC_STATIC( QAXBASE_PROPERTYWRITABLE )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->propertyWritable( PCONSTCHAR(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QAXBASE_QUERYSUBOBJECT )
{
  if( ISBETWEEN(1,9) && HB_ISCHAR(1) && (ISQVARIANT(2)||HB_ISNIL(2)) && (ISQVARIANT(3)||HB_ISNIL(3)) && (ISQVARIANT(4)||HB_ISNIL(4)) && (ISQVARIANT(5)||HB_ISNIL(5)) && (ISQVARIANT(6)||HB_ISNIL(6)) && (ISQVARIANT(7)||HB_ISNIL(7)) && (ISQVARIANT(8)||HB_ISNIL(8)) && (ISQVARIANT(9)||HB_ISNIL(9)) )
  {
    /*
    QAxObject * querySubObject( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
    */
    QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QAxObject * ptr = obj->querySubObject( PCONSTCHAR(1), HB_ISNIL(2)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(2), HB_ISNIL(3)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(3), HB_ISNIL(4)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(4), HB_ISNIL(5)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(5), HB_ISNIL(6)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(6), HB_ISNIL(7)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(7), HB_ISNIL(8)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(8), HB_ISNIL(9)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(9) );
      Qt5xHb::createReturnQObjectClass( ptr, "QAXOBJECT" );
    }
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2) )
  {
    /*
    QAxObject * querySubObject( const char * name, QList<QVariant> & vars )
    */
    QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QAxObject * ptr = obj->querySubObject( PCONSTCHAR(1), PQVARIANTLIST(2) );
      Qt5xHb::createReturnQObjectClass( ptr, "QAXOBJECT" );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool setControl( const QString & )
*/
HB_FUNC_STATIC( QAXBASE_SETCONTROL )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->setControl( PQSTRING(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setPropertyWritable( const char * prop, bool ok )
*/
HB_FUNC_STATIC( QAXBASE_SETPROPERTYWRITABLE )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISLOG(2) )
    {
#endif
      obj->setPropertyWritable( PCONSTCHAR(1), PBOOL(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QStringList verbs() const
*/
HB_FUNC_STATIC( QAXBASE_VERBS )
{
  QAxBase * obj = (QAxBase *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->verbs() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QAXBASE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QAXBASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QAXBASE_NEWFROM );
}

HB_FUNC_STATIC( QAXBASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QAXBASE_NEWFROM );
}

HB_FUNC_STATIC( QAXBASE_SELFDESTRUCTION )
{
  hb_retl((bool) hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QAXBASE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
