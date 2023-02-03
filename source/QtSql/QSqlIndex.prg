/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QSqlIndex INHERIT QSqlRecord

   METHOD new
   METHOD delete
   METHOD append
   METHOD cursorName
   METHOD setCursorName
   METHOD isDescending
   METHOD setDescending
   METHOD name
   METHOD setName

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlIndex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSql/QSqlIndex>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtSql/QSqlIndex>
#endif

HB_FUNC_STATIC( QSQLINDEX_NEW )
{
  if( ISBETWEEN(0,2) && ( HB_ISCHAR(1)||HB_ISNIL(1)) && ( HB_ISCHAR(2)||HB_ISNIL(2)) )
  {
    /*
    QSqlIndex( const QString & cursorname = QString(), const QString & name = QString() )
    */
    QSqlIndex * obj = new QSqlIndex( OPQSTRING(1,QString()), OPQSTRING(2,QString()) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQSQLINDEX(1) )
  {
    /*
    QSqlIndex( const QSqlIndex & other )
    */
    QSqlIndex * obj = new QSqlIndex( *PQSQLINDEX(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSQLINDEX_DELETE )
{
  QSqlIndex * obj = (QSqlIndex *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QSQLINDEX_APPEND )
{
  if( ISNUMPAR(1) && ISQSQLFIELD(1) )
  {
    /*
    void append( const QSqlField & field )
    */
    QSqlIndex * obj = (QSqlIndex *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->append( *PQSQLFIELD(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && ISQSQLFIELD(1) && HB_ISLOG(2) )
  {
    /*
    void append( const QSqlField & field, bool desc )
    */
    QSqlIndex * obj = (QSqlIndex *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->append( *PQSQLFIELD(1), PBOOL(2) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString cursorName() const
*/
HB_FUNC_STATIC( QSQLINDEX_CURSORNAME )
{
  QSqlIndex * obj = (QSqlIndex *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->cursorName() );
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
void setCursorName( const QString & cursorName )
*/
HB_FUNC_STATIC( QSQLINDEX_SETCURSORNAME )
{
  QSqlIndex * obj = (QSqlIndex *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setCursorName( PQSTRING(1) );
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
bool isDescending( int i ) const
*/
HB_FUNC_STATIC( QSQLINDEX_ISDESCENDING )
{
  QSqlIndex * obj = (QSqlIndex *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isDescending( PINT(1) ) );
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
void setDescending( int i, bool desc )
*/
HB_FUNC_STATIC( QSQLINDEX_SETDESCENDING )
{
  QSqlIndex * obj = (QSqlIndex *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2) )
    {
#endif
      obj->setDescending( PINT(1), PBOOL(2) );
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
QString name() const
*/
HB_FUNC_STATIC( QSQLINDEX_NAME )
{
  QSqlIndex * obj = (QSqlIndex *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
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
void setName( const QString & name )
*/
HB_FUNC_STATIC( QSQLINDEX_SETNAME )
{
  QSqlIndex * obj = (QSqlIndex *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setName( PQSTRING(1) );
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

#pragma ENDDUMP
