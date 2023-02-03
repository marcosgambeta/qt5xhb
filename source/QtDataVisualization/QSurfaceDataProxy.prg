/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACE3DSERIES
REQUEST QSURFACEDATAITEM
#endif

CLASS QSurfaceDataProxy INHERIT QAbstractDataProxy

   METHOD new
   METHOD delete
   METHOD rowCount
   METHOD columnCount
   METHOD series
   METHOD itemAt
   METHOD setItem
   METHOD removeRows

   METHOD onArrayReset
   METHOD onColumnCountChanged
   METHOD onItemChanged
   METHOD onRowCountChanged
   METHOD onRowsAdded
   METHOD onRowsChanged
   METHOD onRowsInserted
   METHOD onRowsRemoved
   METHOD onSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSurfaceDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QSurfaceDataProxy>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QSurfaceDataProxy>
#endif

#include <QtDataVisualization/QSurface3DSeries>

using namespace QtDataVisualization;

/*
QSurfaceDataProxy( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QSurfaceDataProxy * obj = new QSurfaceDataProxy( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QSurfaceDataProxy()
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_DELETE )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int rowCount() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_ROWCOUNT )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowCount() );
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
int columnCount() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_COLUMNCOUNT )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnCount() );
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
QSurface3DSeries * series() const
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_SERIES )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurface3DSeries * ptr = obj->series();
      Qt5xHb::createReturnQObjectClass(ptr, "QSURFACE3DSERIES");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ITEMAT )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    const QSurfaceDataItem * itemAt( int rowIndex, int columnIndex ) const
    */
    QSurfaceDataProxy * obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      const QSurfaceDataItem * ptr = obj->itemAt( PINT(1), PINT(2) );
      Qt5xHb::createReturnClass(ptr, "QSURFACEDATAITEM", false);
    }
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    const QSurfaceDataItem * itemAt( const QPoint & position ) const
    */
    QSurfaceDataProxy * obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      const QSurfaceDataItem * ptr = obj->itemAt( *PQPOINT(1) );
      Qt5xHb::createReturnClass(ptr, "QSURFACEDATAITEM", false);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_SETITEM )
{
  if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQSURFACEDATAITEM(3) )
  {
    /*
    void setItem( int rowIndex, int columnIndex, const QSurfaceDataItem & item )
    */
    QSurfaceDataProxy * obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->setItem( PINT(1), PINT(2), *PQSURFACEDATAITEM(3) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSURFACEDATAITEM(2) )
  {
    /*
    void setItem( const QPoint & position, const QSurfaceDataItem & item )
    */
    QSurfaceDataProxy * obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->setItem( *PQPOINT(1), *PQSURFACEDATAITEM(2) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void removeRows( int rowIndex, int removeCount )
*/
HB_FUNC_STATIC( QSURFACEDATAPROXY_REMOVEROWS )
{
  QSurfaceDataProxy * obj = (QSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->removeRows( PINT(1), PINT(2) );
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

void QSurfaceDataProxySlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONARRAYRESET )
{
  QSurfaceDataProxySlots_connect_signal("arrayReset()", "arrayReset()");
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONCOLUMNCOUNTCHANGED )
{
  QSurfaceDataProxySlots_connect_signal("columnCountChanged(int)", "columnCountChanged(int)");
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONITEMCHANGED )
{
  QSurfaceDataProxySlots_connect_signal("itemChanged(int,int)", "itemChanged(int,int)");
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWCOUNTCHANGED )
{
  QSurfaceDataProxySlots_connect_signal("rowCountChanged(int)", "rowCountChanged(int)");
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSADDED )
{
  QSurfaceDataProxySlots_connect_signal("rowsAdded(int,int)", "rowsAdded(int,int)");
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSCHANGED )
{
  QSurfaceDataProxySlots_connect_signal("rowsChanged(int,int)", "rowsChanged(int,int)");
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSINSERTED )
{
  QSurfaceDataProxySlots_connect_signal("rowsInserted(int,int)", "rowsInserted(int,int)");
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONROWSREMOVED )
{
  QSurfaceDataProxySlots_connect_signal("rowsRemoved(int,int)", "rowsRemoved(int,int)");
}

HB_FUNC_STATIC( QSURFACEDATAPROXY_ONSERIESCHANGED )
{
  QSurfaceDataProxySlots_connect_signal("seriesChanged(QSurface3DSeries*)", "seriesChanged(QSurface3DSeries*)");
}

#pragma ENDDUMP
