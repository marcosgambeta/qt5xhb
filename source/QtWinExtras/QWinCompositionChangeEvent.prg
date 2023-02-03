/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QWinCompositionChangeEvent INHERIT QWinEvent

   METHOD new
   METHOD delete
   METHOD isCompositionEnabled

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWinCompositionChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWinExtras/QWinCompositionChangeEvent>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWinExtras/QWinCompositionChangeEvent>
#endif
#endif

/*
QWinCompositionChangeEvent( bool enabled )
*/
HB_FUNC_STATIC( QWINCOMPOSITIONCHANGEEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISNUMPAR(1) && HB_ISLOG(1) )
  {
    QWinCompositionChangeEvent * obj = new QWinCompositionChangeEvent( PBOOL(1) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QWINCOMPOSITIONCHANGEEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinCompositionChangeEvent * obj = (QWinCompositionChangeEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
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
bool isCompositionEnabled() const
*/
HB_FUNC_STATIC( QWINCOMPOSITIONCHANGEEVENT_ISCOMPOSITIONENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinCompositionChangeEvent * obj = (QWinCompositionChangeEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCompositionEnabled() );
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

#pragma ENDDUMP
