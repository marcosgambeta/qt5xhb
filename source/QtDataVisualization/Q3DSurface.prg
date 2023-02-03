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
REQUEST QVALUE3DAXIS
#endif

CLASS Q3DSurface INHERIT QAbstract3DGraph

   METHOD new
   METHOD delete
   METHOD axisX
   METHOD setAxisX
   METHOD axisY
   METHOD setAxisY
   METHOD axisZ
   METHOD setAxisZ
   METHOD selectedSeries
   METHOD flipHorizontalGrid
   METHOD setFlipHorizontalGrid
   METHOD addSeries
   METHOD removeSeries
   METHOD seriesList
   METHOD addAxis
   METHOD releaseAxis
   METHOD axes

   METHOD onAxisXChanged
   METHOD onAxisYChanged
   METHOD onAxisZChanged
   METHOD onFlipHorizontalGridChanged
   METHOD onSelectedSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS Q3DSurface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/Q3DSurface>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtDataVisualization/Q3DSurface>
#endif

using namespace QtDataVisualization;

/*
Q3DSurface( const QSurfaceFormat * format = nullptr, QWindow * parent = nullptr )
*/
HB_FUNC_STATIC( Q3DSURFACE_NEW )
{
  if( ISBETWEEN(0,2) && (ISQSURFACEFORMAT(1)||HB_ISNIL(1)) && (ISQWINDOW(2)||HB_ISNIL(2)) )
  {
    Q3DSurface * obj = new Q3DSurface( HB_ISNIL(1)? nullptr : (QSurfaceFormat *) Qt5xHb::itemGetPtr(1), OPQWINDOW(2,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~Q3DSurface()
*/
HB_FUNC_STATIC( Q3DSURFACE_DELETE )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

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
QValue3DAxis * axisX() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXISX )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisX();
      Qt5xHb::createReturnQObjectClass(ptr, "QVALUE3DAXIS");
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
void setAxisX( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSURFACE_SETAXISX )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisX( PQVALUE3DAXIS(1) );
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
QValue3DAxis * axisY() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXISY )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisY();
      Qt5xHb::createReturnQObjectClass(ptr, "QVALUE3DAXIS");
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
void setAxisY( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSURFACE_SETAXISY )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisY( PQVALUE3DAXIS(1) );
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
QValue3DAxis * axisZ() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXISZ )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisZ();
      Qt5xHb::createReturnQObjectClass(ptr, "QVALUE3DAXIS");
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
void setAxisZ( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSURFACE_SETAXISZ )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisZ( PQVALUE3DAXIS(1) );
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
QSurface3DSeries * selectedSeries() const
*/
HB_FUNC_STATIC( Q3DSURFACE_SELECTEDSERIES )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurface3DSeries * ptr = obj->selectedSeries();
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

/*
bool flipHorizontalGrid() const
*/
HB_FUNC_STATIC( Q3DSURFACE_FLIPHORIZONTALGRID )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->flipHorizontalGrid() );
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
void setFlipHorizontalGrid( bool flip )
*/
HB_FUNC_STATIC( Q3DSURFACE_SETFLIPHORIZONTALGRID )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setFlipHorizontalGrid( PBOOL(1) );
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
void addSeries( QSurface3DSeries * series )
*/
HB_FUNC_STATIC( Q3DSURFACE_ADDSERIES )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACE3DSERIES(1) )
    {
#endif
      obj->addSeries( PQSURFACE3DSERIES(1) );
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
void removeSeries( QSurface3DSeries * series )
*/
HB_FUNC_STATIC( Q3DSURFACE_REMOVESERIES )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACE3DSERIES(1) )
    {
#endif
      obj->removeSeries( PQSURFACE3DSERIES(1) );
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
QList<QSurface3DSeries*> seriesList() const
*/
HB_FUNC_STATIC( Q3DSURFACE_SERIESLIST )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QSurface3DSeries*> list = obj->seriesList();
      PHB_DYNS pDynSym = hb_dynsymFindName("QSURFACE3DSERIES");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, list[i]);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSURFACE3DSERIES", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
void addAxis( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSURFACE_ADDAXIS )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->addAxis( PQVALUE3DAXIS(1) );
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
void releaseAxis( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSURFACE_RELEASEAXIS )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->releaseAxis( PQVALUE3DAXIS(1) );
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
QList<QValue3DAxis*> axes() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXES )
{
  Q3DSurface * obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QValue3DAxis*> list = obj->axes();
      PHB_DYNS pDynSym = hb_dynsymFindName("QVALUE3DAXIS");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, list[i]);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QVALUE3DAXIS", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void Q3DSurfaceSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( Q3DSURFACE_ONAXISXCHANGED )
{
  Q3DSurfaceSlots_connect_signal("axisXChanged(QValue3DAxis*)", "axisXChanged(QValue3DAxis*)");
}

HB_FUNC_STATIC( Q3DSURFACE_ONAXISYCHANGED )
{
  Q3DSurfaceSlots_connect_signal("axisYChanged(QValue3DAxis*)", "axisYChanged(QValue3DAxis*)");
}

HB_FUNC_STATIC( Q3DSURFACE_ONAXISZCHANGED )
{
  Q3DSurfaceSlots_connect_signal("axisZChanged(QValue3DAxis*)", "axisZChanged(QValue3DAxis*)");
}

HB_FUNC_STATIC( Q3DSURFACE_ONFLIPHORIZONTALGRIDCHANGED )
{
  Q3DSurfaceSlots_connect_signal("flipHorizontalGridChanged(bool)", "flipHorizontalGridChanged(bool)");
}

HB_FUNC_STATIC( Q3DSURFACE_ONSELECTEDSERIESCHANGED )
{
  Q3DSurfaceSlots_connect_signal("selectedSeriesChanged(QSurface3DSeries*)", "selectedSeriesChanged(QSurface3DSeries*)");
}

#pragma ENDDUMP
