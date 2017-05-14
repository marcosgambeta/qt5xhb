/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QIRProximityFilter INHERIT QSensorFilter

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIRProximityFilter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QIRProximityFilter>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QIRProximityFilter>
#endif
#endif


HB_FUNC_STATIC( QIRPROXIMITYFILTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximityFilter * obj = (QIRProximityFilter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
virtual bool filter(QIRProximityReading *reading) = 0
*/
HB_FUNC_STATIC( QIRPROXIMITYFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximityFilter * obj = (QIRProximityFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIRProximityReading * par1 = (QIRProximityReading *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->filter ( par1 ) );
  }
#endif
}



#pragma ENDDUMP
