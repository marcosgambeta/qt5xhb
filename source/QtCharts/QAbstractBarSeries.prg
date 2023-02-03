/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBARSET
#endif

CLASS QAbstractBarSeries INHERIT QAbstractSeries

   METHOD delete
   METHOD barWidth
   METHOD setBarWidth
   METHOD count
   METHOD isLabelsVisible
   METHOD setLabelsVisible
   METHOD labelsFormat
   METHOD setLabelsFormat
   METHOD labelsAngle
   METHOD setLabelsAngle
   METHOD labelsPosition
   METHOD setLabelsPosition
   METHOD append
   METHOD remove
   METHOD take
   METHOD insert
   METHOD barSets
   METHOD clear

   METHOD onBarsetsAdded
   METHOD onBarsetsRemoved
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onLabelsAngleChanged
   METHOD onLabelsFormatChanged
   METHOD onLabelsPositionChanged
   METHOD onLabelsVisibleChanged
   METHOD onPressed
   METHOD onReleased

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractBarSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QAbstractBarSeries>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QAbstractBarSeries>
#endif
#endif

using namespace QtCharts;

/*
virtual ~QAbstractBarSeries()
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
qreal barWidth() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_BARWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->barWidth() );
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
void setBarWidth( qreal width )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_SETBARWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setBarWidth( PQREAL(1) );
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
HB_FUNC_STATIC( QABSTRACTBARSERIES_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

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
bool isLabelsVisible() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_ISLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLabelsVisible() );
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
void setLabelsVisible( bool visible = true )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_SETLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISLOG(1)||HB_ISNIL(1)) )
    {
#endif
      obj->setLabelsVisible( OPBOOL(1,true) );
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
QString labelsFormat() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_LABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->labelsFormat() );
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
void setLabelsFormat( const QString & format )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_SETLABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setLabelsFormat( PQSTRING(1) );
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
qreal labelsAngle() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_LABELSANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->labelsAngle() );
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
void setLabelsAngle( qreal angle )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_SETLABELSANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setLabelsAngle( PQREAL(1) );
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
QAbstractBarSeries::LabelsPosition labelsPosition() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_LABELSPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->labelsPosition() );
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
void setLabelsPosition( QAbstractBarSeries::LabelsPosition position )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_SETLABELSPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setLabelsPosition( (QAbstractBarSeries::LabelsPosition) hb_parni(1) );
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

HB_FUNC_STATIC( QABSTRACTBARSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQBARSET(1) )
  {
    /*
    bool append( QBarSet * set )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->append( PQBARSET(1) ) );
    }
#endif
  }
  else if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    /*
    bool append( QList<QBarSet*> sets )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
    QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QList<QBarSet*> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen(aList1);
      for( int i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << (QBarSet *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      RBOOL( obj->append( par1 ) );
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool remove( QBarSet * set )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_REMOVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBARSET(1) )
    {
#endif
      RBOOL( obj->remove( PQBARSET(1) ) );
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
bool take( QBarSet * set )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_TAKE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBARSET(1) )
    {
#endif
      RBOOL( obj->take( PQBARSET(1) ) );
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
bool insert( int index, QBarSet * set )
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_INSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQBARSET(2) )
    {
#endif
      RBOOL( obj->insert( PINT(1), PQBARSET(2) ) );
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
QList<QBarSet*> barSets() const
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_BARSETS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QBarSet*> list = obj->barSets();
      PHB_DYNS pDynSym = hb_dynsymFindName("QBARSET");
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
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QBARSET", HB_ERR_ARGS_BASEPARAMS);
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
#endif
}

/*
void clear()
*/
HB_FUNC_STATIC( QABSTRACTBARSERIES_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeries * obj = (QAbstractBarSeries *) Qt5xHb::itemGetPtrStackSelfItem();

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

void QAbstractBarSeriesSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONBARSETSADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("barsetsAdded(QList<QBarSet*>)", "barsetsAdded(QList<QBarSet*>)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONBARSETSREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("barsetsRemoved(QList<QBarSet*>)", "barsetsRemoved(QList<QBarSet*>)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("clicked(int,QBarSet*)", "clicked(int,QBarSet*)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("countChanged()", "countChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("doubleClicked(int,QBarSet*)", "doubleClicked(int,QBarSet*)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("hovered(bool,int,QBarSet*)", "hovered(bool,int,QBarSet*)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONLABELSANGLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("labelsAngleChanged(qreal)", "labelsAngleChanged(qreal)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONLABELSFORMATCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("labelsFormatChanged(QString)", "labelsFormatChanged(QString)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONLABELSPOSITIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("labelsPositionChanged(QAbstractBarSeries::LabelsPosition)", "labelsPositionChanged(QAbstractBarSeries::LabelsPosition)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONLABELSVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("labelsVisibleChanged()", "labelsVisibleChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("pressed(int,QBarSet*)", "pressed(int,QBarSet*)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QABSTRACTBARSERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractBarSeriesSlots_connect_signal("released(int,QBarSet*)", "released(int,QBarSet*)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
