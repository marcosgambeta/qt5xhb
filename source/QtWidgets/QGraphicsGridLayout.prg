/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEF
#endif

CLASS QGraphicsGridLayout INHERIT QGraphicsLayout

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD alignment
   METHOD columnAlignment
   METHOD columnCount
   METHOD columnMaximumWidth
   METHOD columnMinimumWidth
   METHOD columnPreferredWidth
   METHOD columnSpacing
   METHOD columnStretchFactor
   METHOD horizontalSpacing
   METHOD itemAt
   METHOD removeItem
   METHOD rowAlignment
   METHOD rowCount
   METHOD rowMaximumHeight
   METHOD rowMinimumHeight
   METHOD rowPreferredHeight
   METHOD rowSpacing
   METHOD rowStretchFactor
   METHOD setAlignment
   METHOD setColumnAlignment
   METHOD setColumnFixedWidth
   METHOD setColumnMaximumWidth
   METHOD setColumnMinimumWidth
   METHOD setColumnPreferredWidth
   METHOD setColumnSpacing
   METHOD setColumnStretchFactor
   METHOD setHorizontalSpacing
   METHOD setRowAlignment
   METHOD setRowFixedHeight
   METHOD setRowMaximumHeight
   METHOD setRowMinimumHeight
   METHOD setRowPreferredHeight
   METHOD setRowSpacing
   METHOD setRowStretchFactor
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD verticalSpacing
   METHOD count
   METHOD invalidate
   METHOD removeAt
   METHOD setGeometry
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsGridLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsGridLayout>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsGridLayout>
#endif

/*
QGraphicsGridLayout( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSLAYOUTITEM(1)||HB_ISNIL(1)) )
  {
    QGraphicsGridLayout * obj = new QGraphicsGridLayout( HB_ISNIL(1)? 0 : (QGraphicsLayoutItem *) Qt5xHb::itemGetPtr(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_DELETE )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

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

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ADDITEM )
{
  if( ISBETWEEN(5,6) && ISQGRAPHICSLAYOUTITEM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && ( HB_ISNUM(6)||HB_ISNIL(6)) )
  {
    /*
    void addItem( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
    */
    QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->addItem( PQGRAPHICSLAYOUTITEM(1), PINT(2), PINT(3), PINT(4), PINT(5), HB_ISNIL(6)? (Qt::Alignment) 0 : (Qt::Alignment) hb_parni(6) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISBETWEEN(3,4) && ISQGRAPHICSLAYOUTITEM(1) && HB_ISNUM(2) && HB_ISNUM(3) && ( HB_ISNUM(4)||HB_ISNIL(4)) )
  {
    /*
    void addItem( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )
    */
    QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->addItem( PQGRAPHICSLAYOUTITEM(1), PINT(2), PINT(3), HB_ISNIL(4)? (Qt::Alignment) 0 : (Qt::Alignment) hb_parni(4) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
Qt::Alignment alignment( QGraphicsLayoutItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGRAPHICSLAYOUTITEM(1) )
    {
#endif
      RENUM( obj->alignment( PQGRAPHICSLAYOUTITEM(1) ) );
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
Qt::Alignment columnAlignment( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RENUM( obj->columnAlignment( PINT(1) ) );
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
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNCOUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

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
qreal columnMaximumWidth( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNMAXIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQREAL( obj->columnMaximumWidth( PINT(1) ) );
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
qreal columnMinimumWidth( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNMINIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQREAL( obj->columnMinimumWidth( PINT(1) ) );
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
qreal columnPreferredWidth( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNPREFERREDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQREAL( obj->columnPreferredWidth( PINT(1) ) );
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
qreal columnSpacing( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQREAL( obj->columnSpacing( PINT(1) ) );
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
int columnStretchFactor( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->columnStretchFactor( PINT(1) ) );
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
qreal horizontalSpacing() const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_HORIZONTALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->horizontalSpacing() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ITEMAT )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QGraphicsLayoutItem * itemAt( int row, int column ) const
    */
    QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QGraphicsLayoutItem * ptr = obj->itemAt( PINT(1), PINT(2) );
      Qt5xHb::createReturnClass(ptr, "QGRAPHICSLAYOUTITEM", false);
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    virtual QGraphicsLayoutItem * itemAt( int index ) const
    */
    QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QGraphicsLayoutItem * ptr = obj->itemAt( PINT(1) );
      Qt5xHb::createReturnClass(ptr, "QGRAPHICSLAYOUTITEM", false);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void removeItem( QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_REMOVEITEM )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGRAPHICSLAYOUTITEM(1) )
    {
#endif
      obj->removeItem( PQGRAPHICSLAYOUTITEM(1) );
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
Qt::Alignment rowAlignment( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RENUM( obj->rowAlignment( PINT(1) ) );
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
int rowCount() const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWCOUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

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
qreal rowMaximumHeight( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWMAXIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQREAL( obj->rowMaximumHeight( PINT(1) ) );
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
qreal rowMinimumHeight( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWMINIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQREAL( obj->rowMinimumHeight( PINT(1) ) );
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
qreal rowPreferredHeight( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWPREFERREDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQREAL( obj->rowPreferredHeight( PINT(1) ) );
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
qreal rowSpacing( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQREAL( obj->rowSpacing( PINT(1) ) );
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
int rowStretchFactor( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->rowStretchFactor( PINT(1) ) );
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
void setAlignment( QGraphicsLayoutItem * item, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQGRAPHICSLAYOUTITEM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setAlignment( PQGRAPHICSLAYOUTITEM(1), (Qt::Alignment) hb_parni(2) );
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
void setColumnAlignment( int column, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setColumnAlignment( PINT(1), (Qt::Alignment) hb_parni(2) );
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
void setColumnFixedWidth( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNFIXEDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setColumnFixedWidth( PINT(1), PQREAL(2) );
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
void setColumnMaximumWidth( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNMAXIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setColumnMaximumWidth( PINT(1), PQREAL(2) );
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
void setColumnMinimumWidth( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNMINIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setColumnMinimumWidth( PINT(1), PQREAL(2) );
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
void setColumnPreferredWidth( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNPREFERREDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setColumnPreferredWidth( PINT(1), PQREAL(2) );
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
void setColumnSpacing( int column, qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setColumnSpacing( PINT(1), PQREAL(2) );
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
void setColumnStretchFactor( int column, int stretch )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setColumnStretchFactor( PINT(1), PINT(2) );
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
void setHorizontalSpacing( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETHORIZONTALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setHorizontalSpacing( PQREAL(1) );
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
void setRowAlignment( int row, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setRowAlignment( PINT(1), (Qt::Alignment) hb_parni(2) );
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
void setRowFixedHeight( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWFIXEDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setRowFixedHeight( PINT(1), PQREAL(2) );
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
void setRowMaximumHeight( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWMAXIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setRowMaximumHeight( PINT(1), PQREAL(2) );
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
void setRowMinimumHeight( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWMINIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setRowMinimumHeight( PINT(1), PQREAL(2) );
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
void setRowPreferredHeight( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWPREFERREDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setRowPreferredHeight( PINT(1), PQREAL(2) );
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
void setRowSpacing( int row, qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setRowSpacing( PINT(1), PQREAL(2) );
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
void setRowStretchFactor( int row, int stretch )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setRowStretchFactor( PINT(1), PINT(2) );
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
void setSpacing( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSpacing( PQREAL(1) );
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
void setVerticalSpacing( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETVERTICALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setVerticalSpacing( PQREAL(1) );
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
qreal verticalSpacing() const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_VERTICALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->verticalSpacing() );
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
virtual int count() const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
virtual void invalidate()
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_INVALIDATE )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->invalidate();
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
virtual void removeAt( int index )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_REMOVEAT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->removeAt( PINT(1) );
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
virtual void setGeometry( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETGEOMETRY )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECTF(1) )
    {
#endif
      obj->setGeometry( *PQRECTF(1) );
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
virtual QSizeF sizeHint( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SIZEHINT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISNUM(1) && (ISQSIZEF(2)||HB_ISNIL(2)) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->sizeHint( (Qt::SizeHint) hb_parni(1), HB_ISNIL(2)? QSizeF() : *(QSizeF *) Qt5xHb::itemGetPtr(2) ) );
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
