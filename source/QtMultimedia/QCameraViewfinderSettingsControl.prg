/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraViewfinderSettingsControl INHERIT QMediaControl

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isViewfinderParameterSupported
   METHOD setViewfinderParameter
   METHOD viewfinderParameter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraViewfinderSettingsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraViewfinderSettingsControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraViewfinderSettingsControl>
#endif

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_DELETE )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool isViewfinderParameterSupported(ViewfinderParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_ISVIEWFINDERPARAMETERSUPPORTED )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isViewfinderParameterSupported (  (QCameraViewfinderSettingsControl::ViewfinderParameter) par1 ) );
  }
}


/*
virtual void setViewfinderParameter(ViewfinderParameter parameter, const QVariant & value) = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_SETVIEWFINDERPARAMETER )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setViewfinderParameter (  (QCameraViewfinderSettingsControl::ViewfinderParameter) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QVariant viewfinderParameter(ViewfinderParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_VIEWFINDERPARAMETER )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->viewfinderParameter (  (QCameraViewfinderSettingsControl::ViewfinderParameter) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



#pragma ENDDUMP
