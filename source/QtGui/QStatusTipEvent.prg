/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QStatusTipEvent INHERIT QEvent

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD tip

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStatusTipEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStatusTipEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStatusTipEvent>
#endif

/*
QStatusTipEvent(const QString &tip)
*/
HB_FUNC_STATIC( QSTATUSTIPEVENT_NEW )
{
  QStatusTipEvent * o = new QStatusTipEvent ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSTATUSTIPEVENT_DELETE )
{
  QStatusTipEvent * obj = (QStatusTipEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString tip() const
*/
HB_FUNC_STATIC( QSTATUSTIPEVENT_TIP )
{
  QStatusTipEvent * obj = (QStatusTipEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->tip (  ).toLatin1().data() );
  }
}



#pragma ENDDUMP
