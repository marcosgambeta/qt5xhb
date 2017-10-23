/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QGesture INHERIT QObject

   METHOD new
   METHOD delete
   METHOD gestureCancelPolicy
   METHOD gestureType
   METHOD hasHotSpot
   METHOD hotSpot
   METHOD setGestureCancelPolicy
   METHOD setHotSpot
   METHOD state
   METHOD unsetHotSpot

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGesture>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGesture>
#endif

/*
QGesture(QObject * parent = 0)
*/
HB_FUNC_STATIC( QGESTURE_NEW )
{
  QGesture * o = new QGesture ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

HB_FUNC_STATIC( QGESTURE_DELETE )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
GestureCancelPolicy gestureCancelPolicy() const
*/
HB_FUNC_STATIC( QGESTURE_GESTURECANCELPOLICY )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->gestureCancelPolicy () );
  }
}

/*
Qt::GestureType gestureType() const
*/
HB_FUNC_STATIC( QGESTURE_GESTURETYPE )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->gestureType () );
  }
}

/*
bool hasHotSpot() const
*/
HB_FUNC_STATIC( QGESTURE_HASHOTSPOT )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasHotSpot () );
  }
}

/*
QPointF hotSpot() const
*/
HB_FUNC_STATIC( QGESTURE_HOTSPOT )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->hotSpot () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setGestureCancelPolicy(GestureCancelPolicy policy)
*/
HB_FUNC_STATIC( QGESTURE_SETGESTURECANCELPOLICY )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setGestureCancelPolicy ( (QGesture::GestureCancelPolicy) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHotSpot(const QPointF & value)
*/
HB_FUNC_STATIC( QGESTURE_SETHOTSPOT )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setHotSpot ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::GestureState state() const
*/
HB_FUNC_STATIC( QGESTURE_STATE )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->state () );
  }
}

/*
void unsetHotSpot()
*/
HB_FUNC_STATIC( QGESTURE_UNSETHOTSPOT )
{
  QGesture * obj = (QGesture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unsetHotSpot ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
