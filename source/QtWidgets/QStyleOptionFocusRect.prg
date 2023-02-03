/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QStyleOptionFocusRect INHERIT QStyleOption

   METHOD new
   METHOD backgroundColor
   METHOD setBackgroundColor

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionFocusRect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionFocusRect>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionFocusRect>
#endif

HB_FUNC_STATIC( QSTYLEOPTIONFOCUSRECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStyleOptionFocusRect()
    */
    QStyleOptionFocusRect * obj = new QStyleOptionFocusRect();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONFOCUSRECT(1) )
  {
    /*
    QStyleOptionFocusRect( const QStyleOptionFocusRect & other )
    */
    QStyleOptionFocusRect * obj = new QStyleOptionFocusRect( *PQSTYLEOPTIONFOCUSRECT(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QColor backgroundColor
*/
HB_FUNC_STATIC( QSTYLEOPTIONFOCUSRECT_BACKGROUNDCOLOR )
{
  QStyleOptionFocusRect * obj = (QStyleOptionFocusRect *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->backgroundColor );
      Qt5xHb::createReturnClass(ptr, "QCOLOR", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONFOCUSRECT_SETBACKGROUNDCOLOR )
{
  QStyleOptionFocusRect * obj = (QStyleOptionFocusRect *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->backgroundColor= *PQCOLOR(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
