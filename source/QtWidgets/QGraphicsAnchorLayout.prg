//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSANCHOR
REQUEST QGRAPHICSLAYOUTITEM
#endif

CLASS QGraphicsAnchorLayout INHERIT QGraphicsLayout

   METHOD new
   METHOD delete
   METHOD addAnchor
   METHOD addAnchors
   METHOD addCornerAnchors
   METHOD anchor
   METHOD horizontalSpacing
   METHOD setHorizontalSpacing
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD verticalSpacing
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsAnchorLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsAnchorLayout>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsAnchorLayout>
#endif

    /*
    QGraphicsAnchorLayout( QGraphicsLayoutItem * parent = 0 )
    */
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQGRAPHICSLAYOUTITEM(1) || HB_ISNIL(1)))
  {
    QGraphicsAnchorLayout *obj =
        new QGraphicsAnchorLayout(HB_ISNIL(1) ? 0 : (QGraphicsLayoutItem *)Qt5xHb::itemGetPtr(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_DELETE)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QGraphicsAnchor * addAnchor( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem *
secondItem, Qt::AnchorPoint secondEdge )
*/
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_ADDANCHOR)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && ISQGRAPHICSLAYOUTITEM(1) && HB_ISNUM(2) && ISQGRAPHICSLAYOUTITEM(3) && HB_ISNUM(4))
    {
#endif
      QGraphicsAnchor *ptr = obj->addAnchor(PQGRAPHICSLAYOUTITEM(1), (Qt::AnchorPoint)hb_parni(2),
                                            PQGRAPHICSLAYOUTITEM(3), (Qt::AnchorPoint)hb_parni(4));
      Qt5xHb::createReturnQObjectClass(ptr, "QGRAPHICSANCHOR");
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
void addAnchors( QGraphicsLayoutItem * firstItem, QGraphicsLayoutItem * secondItem, Qt::Orientations orientations =
Qt::Horizontal | Qt::Vertical )
*/
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_ADDANCHORS)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && ISQGRAPHICSLAYOUTITEM(1) && ISQGRAPHICSLAYOUTITEM(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      obj->addAnchors(PQGRAPHICSLAYOUTITEM(1), PQGRAPHICSLAYOUTITEM(2),
                      HB_ISNIL(3) ? (Qt::Orientations)Qt::Horizontal | Qt::Vertical : (Qt::Orientations)hb_parni(3));
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
void addCornerAnchors( QGraphicsLayoutItem * firstItem, Qt::Corner firstCorner, QGraphicsLayoutItem * secondItem,
Qt::Corner secondCorner )
*/
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_ADDCORNERANCHORS)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && ISQGRAPHICSLAYOUTITEM(1) && HB_ISNUM(2) && ISQGRAPHICSLAYOUTITEM(3) && HB_ISNUM(4))
    {
#endif
      obj->addCornerAnchors(PQGRAPHICSLAYOUTITEM(1), (Qt::Corner)hb_parni(2), PQGRAPHICSLAYOUTITEM(3),
                            (Qt::Corner)hb_parni(4));
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
QGraphicsAnchor * anchor( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem,
Qt::AnchorPoint secondEdge )
*/
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_ANCHOR)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && ISQGRAPHICSLAYOUTITEM(1) && HB_ISNUM(2) && ISQGRAPHICSLAYOUTITEM(3) && HB_ISNUM(4))
    {
#endif
      QGraphicsAnchor *ptr = obj->anchor(PQGRAPHICSLAYOUTITEM(1), (Qt::AnchorPoint)hb_parni(2), PQGRAPHICSLAYOUTITEM(3),
                                         (Qt::AnchorPoint)hb_parni(4));
      Qt5xHb::createReturnQObjectClass(ptr, "QGRAPHICSANCHOR");
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
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_HORIZONTALSPACING)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->horizontalSpacing());
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
void setHorizontalSpacing( qreal spacing )
*/
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_SETHORIZONTALSPACING)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setHorizontalSpacing(PQREAL(1));
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
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_SETSPACING)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSpacing(PQREAL(1));
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
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_SETVERTICALSPACING)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setVerticalSpacing(PQREAL(1));
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
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_VERTICALSPACING)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->verticalSpacing());
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
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_COUNT)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->count());
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
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_INVALIDATE)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
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
virtual QGraphicsLayoutItem * itemAt( int index ) const
*/
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_ITEMAT)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QGraphicsLayoutItem *ptr = obj->itemAt(PINT(1));
      Qt5xHb::createReturnClass(ptr, "QGRAPHICSLAYOUTITEM", false);
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
virtual void removeAt( int index )
*/
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_REMOVEAT)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->removeAt(PINT(1));
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
virtual void setGeometry( const QRectF &geom )
*/
HB_FUNC_STATIC(QGRAPHICSANCHORLAYOUT_SETGEOMETRY)
{
  QGraphicsAnchorLayout *obj = (QGraphicsAnchorLayout *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQRECTF(1))
    {
#endif
      obj->setGeometry(*PQRECTF(1));
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
