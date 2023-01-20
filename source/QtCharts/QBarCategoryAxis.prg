/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QBarCategoryAxis INHERIT QAbstractAxis

   METHOD new
   METHOD delete
   METHOD categories
   METHOD setCategories
   METHOD count
   METHOD min
   METHOD setMin
   METHOD max
   METHOD setMax
   METHOD type
   METHOD append
   METHOD remove
   METHOD insert
   METHOD replace
   METHOD clear
   METHOD at
   METHOD setRange

   METHOD onCategoriesChanged
   METHOD onCountChanged
   METHOD onMaxChanged
   METHOD onMinChanged
   METHOD onRangeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBarCategoryAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QBarCategoryAxis>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QBarCategoryAxis>
#endif
#endif

using namespace QtCharts;

/*
QBarCategoryAxis( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QBarCategoryAxis * obj = new QBarCategoryAxis( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
~QBarCategoryAxis()
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QStringList categories()
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_CATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->categories() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setCategories( const QStringList & categories )
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_SETCATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setCategories( PQSTRINGLIST(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
int count() const
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString min() const
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_MIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->min() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setMin( const QString & minCategory )
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_SETMIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setMin( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString max() const
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_MAX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->max() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setMax( const QString & maxCategory )
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_SETMAX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setMax( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QAbstractAxis::AxisType type() const
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QBARCATEGORYAXIS_APPEND )
{
  if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    /*
    void append( const QStringList & categories )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->append( PQSTRINGLIST(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
#endif
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    void append( const QString & category )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->append( PQSTRING(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void remove( const QString & category )
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_REMOVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->remove( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void insert( int index, const QString & category )
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_INSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      obj->insert( PINT(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void replace( const QString & oldCategory, const QString & newCategory )
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_REPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      obj->replace( PQSTRING(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
Q_INVOKABLE void clear()
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
#endif
}

/*
QString at( int index ) const
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_AT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->at( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setRange( const QString & minCategory, const QString & maxCategory )
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_SETRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxis * obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      obj->setRange( PQSTRING(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

void QBarCategoryAxisSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QBARCATEGORYAXIS_ONCATEGORIESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxisSlots_connect_signal("categoriesChanged()", "categoriesChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QBARCATEGORYAXIS_ONCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxisSlots_connect_signal("countChanged()", "countChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QBARCATEGORYAXIS_ONMAXCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxisSlots_connect_signal("maxChanged(QString)", "maxChanged(QString)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QBARCATEGORYAXIS_ONMINCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxisSlots_connect_signal("minChanged(QString)", "minChanged(QString)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QBARCATEGORYAXIS_ONRANGECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarCategoryAxisSlots_connect_signal("rangeChanged(QString,QString)", "rangeChanged(QString,QString)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
