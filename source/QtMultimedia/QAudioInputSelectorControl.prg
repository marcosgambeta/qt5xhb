/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QAudioInputSelectorControl INHERIT QMediaControl

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activeInput
   METHOD availableInputs
   METHOD defaultInput
   METHOD inputDescription
   METHOD setActiveInput

   METHOD onActiveInputChanged
   METHOD onAvailableInputsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioInputSelectorControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioInputSelectorControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioInputSelectorControl>
#endif


HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_DELETE )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString activeInput() const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_ACTIVEINPUT )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->activeInput ().toLatin1().data() );
  }
}


/*
virtual QList<QString> availableInputs() const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_AVAILABLEINPUTS )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QString> strl = obj->availableInputs ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
virtual QString defaultInput() const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_DEFAULTINPUT )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->defaultInput ().toLatin1().data() );
  }
}


/*
virtual QString inputDescription(const QString & name) const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_INPUTDESCRIPTION )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->inputDescription ( PQSTRING(1) ).toLatin1().data() );
  }
}


/*
virtual void setActiveInput(const QString & name) = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_SETACTIVEINPUT )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setActiveInput ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
