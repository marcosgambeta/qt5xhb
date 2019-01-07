/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDomNotation INHERIT QDomNode

   METHOD new
   METHOD delete
   METHOD nodeType
   METHOD publicId
   METHOD systemId

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomNotation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDomNotation>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDomNotation>
#endif

/*
QDomNotation ()
*/
void QDomNotation_new1 ()
{
  QDomNotation * o = new QDomNotation ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QDomNotation ( const QDomNotation & x )
*/
void QDomNotation_new2 ()
{
  QDomNotation * o = new QDomNotation ();
  _qt5xhb_returnNewObject( o, true );
}

//[1]QDomNotation ()
//[2]QDomNotation ( const QDomNotation & x )

HB_FUNC_STATIC( QDOMNOTATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomNotation_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMNOTATION(1) )
  {
    QDomNotation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMNOTATION_DELETE )
{
  QDomNotation * obj = (QDomNotation *) _qt5xhb_itemGetPtrStackSelfItem();

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
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMNOTATION_NODETYPE )
{
  QDomNotation * obj = (QDomNotation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->nodeType () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString publicId () const
*/
HB_FUNC_STATIC( QDOMNOTATION_PUBLICID )
{
  QDomNotation * obj = (QDomNotation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->publicId () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString systemId () const
*/
HB_FUNC_STATIC( QDOMNOTATION_SYSTEMID )
{
  QDomNotation * obj = (QDomNotation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->systemId () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
