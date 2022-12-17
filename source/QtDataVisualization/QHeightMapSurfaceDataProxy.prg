/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
#endif

CLASS QHeightMapSurfaceDataProxy INHERIT QSurfaceDataProxy

   METHOD new
   METHOD delete
   METHOD heightMap
   METHOD setHeightMap
   METHOD heightMapFile
   METHOD setHeightMapFile
   METHOD minXValue
   METHOD setMinXValue
   METHOD maxXValue
   METHOD setMaxXValue
   METHOD minZValue
   METHOD setMinZValue
   METHOD maxZValue
   METHOD setMaxZValue
   METHOD setValueRanges

   METHOD onHeightMapChanged
   METHOD onHeightMapFileChanged
   METHOD onMaxXValueChanged
   METHOD onMaxZValueChanged
   METHOD onMinXValueChanged
   METHOD onMinZValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHeightMapSurfaceDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QHeightMapSurfaceDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QHeightMapSurfaceDataProxy>
#endif

using namespace QtDataVisualization;

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    /*
    QHeightMapSurfaceDataProxy( QObject * parent = nullptr )
    */
    QHeightMapSurfaceDataProxy * obj = new QHeightMapSurfaceDataProxy( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    /*
    QHeightMapSurfaceDataProxy( const QImage & image, QObject * parent = nullptr )
    */
    QHeightMapSurfaceDataProxy * obj = new QHeightMapSurfaceDataProxy( *PQIMAGE(1), OPQOBJECT(2,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1,2) && HB_ISCHAR(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    /*
    QHeightMapSurfaceDataProxy( const QString & filename, QObject * parent = nullptr )
    */
    QHeightMapSurfaceDataProxy * obj = new QHeightMapSurfaceDataProxy( PQSTRING(1), OPQOBJECT(2,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QHeightMapSurfaceDataProxy()
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_DELETE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
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
}

/*
QImage heightMap() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_HEIGHTMAP )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QImage * ptr = new QImage( obj->heightMap() );
      Qt5xHb::createReturnClass(ptr, "QIMAGE", true);
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
void setHeightMap( const QImage & image )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETHEIGHTMAP )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQIMAGE(1) )
    {
#endif
      obj->setHeightMap( *PQIMAGE(1) );
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
QString heightMapFile() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_HEIGHTMAPFILE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->heightMapFile() );
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
void setHeightMapFile( const QString & filename )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETHEIGHTMAPFILE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setHeightMapFile( PQSTRING(1) );
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
float minXValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MINXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->minXValue() );
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
void setMinXValue( float min )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMINXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMinXValue( PFLOAT(1) );
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
float maxXValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MAXXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->maxXValue() );
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
void setMaxXValue( float max )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMAXXVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMaxXValue( PFLOAT(1) );
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
float minZValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MINZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->minZValue() );
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
void setMinZValue( float min )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMINZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMinZValue( PFLOAT(1) );
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
float maxZValue() const
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_MAXZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->maxZValue() );
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
void setMaxZValue( float max )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETMAXZVALUE )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMaxZValue( PFLOAT(1) );
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
void setValueRanges( float minX, float maxX, float minZ, float maxZ )
*/
HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_SETVALUERANGES )
{
  QHeightMapSurfaceDataProxy * obj = (QHeightMapSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      obj->setValueRanges( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4) );
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

void QHeightMapSurfaceDataProxySlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONHEIGHTMAPCHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "heightMapChanged(QImage)", "heightMapChanged(QImage)" );
}

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONHEIGHTMAPFILECHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "heightMapFileChanged(QString)", "heightMapFileChanged(QString)" );
}

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMAXXVALUECHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "maxXValueChanged(float)", "maxXValueChanged(float)" );
}

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMAXZVALUECHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "maxZValueChanged(float)", "maxZValueChanged(float)" );
}

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMINXVALUECHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "minXValueChanged(float)", "minXValueChanged(float)" );
}

HB_FUNC_STATIC( QHEIGHTMAPSURFACEDATAPROXY_ONMINZVALUECHANGED )
{
  QHeightMapSurfaceDataProxySlots_connect_signal( "minZValueChanged(float)", "minZValueChanged(float)" );
}

#pragma ENDDUMP
