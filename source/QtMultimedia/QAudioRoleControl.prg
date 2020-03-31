/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAudioRoleControl INHERIT QMediaControl

   METHOD delete
   METHOD audioRole
   METHOD setAudioRole
   METHOD supportedAudioRoles

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioRoleControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtMultimedia/QAudioRoleControl>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
#include <QtMultimedia/QAudioRoleControl>
#endif
#endif

/*
explicit QAudioRoleControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QAudioRoleControl()
*/
HB_FUNC_STATIC( QAUDIOROLECONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QAudioRoleControl * obj = (QAudioRoleControl *) Qt5xHb::itemGetPtrStackSelfItem();

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
virtual QAudio::Role audioRole() const = 0
*/
HB_FUNC_STATIC( QAUDIOROLECONTROL_AUDIOROLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QAudioRoleControl * obj = (QAudioRoleControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->audioRole() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual void setAudioRole(QAudio::Role role) = 0
*/
HB_FUNC_STATIC( QAUDIOROLECONTROL_SETAUDIOROLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QAudioRoleControl * obj = (QAudioRoleControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setAudioRole( (QAudio::Role) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual QList<QAudio::Role> supportedAudioRoles() const = 0
*/
HB_FUNC_STATIC( QAUDIOROLECONTROL_SUPPORTEDAUDIOROLES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QAudioRoleControl * obj = (QAudioRoleControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAudio::Role> list = obj->supportedAudioRoles();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

#pragma ENDDUMP

