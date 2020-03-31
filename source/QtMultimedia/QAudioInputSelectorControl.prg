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

CLASS QAudioInputSelectorControl INHERIT QMediaControl

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

PROCEDURE destroyObject() CLASS QAudioInputSelectorControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAudioInputSelectorControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAudioInputSelectorControl>
#endif

/*
explicit QAudioInputSelectorControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QAudioInputSelectorControl()
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_DELETE )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

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
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->activeInput() );
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
virtual QList<QString> availableInputs() const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_AVAILABLEINPUTS )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QString> list = obj->availableInputs();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) list[i].toLatin1().data() );
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
}

/*
virtual QString defaultInput() const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_DEFAULTINPUT )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->defaultInput() );
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
virtual QString inputDescription(const QString & name) const = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_INPUTDESCRIPTION )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RQSTRING( obj->inputDescription( PQSTRING(1) ) );
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
virtual void setActiveInput(const QString & name) = 0
*/
HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_SETACTIVEINPUT )
{
  QAudioInputSelectorControl * obj = (QAudioInputSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setActiveInput( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QAudioInputSelectorControlSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_ONACTIVEINPUTCHANGED )
{
  QAudioInputSelectorControlSlots_connect_signal( "activeInputChanged(QString)", "activeInputChanged(QString)" );
}

HB_FUNC_STATIC( QAUDIOINPUTSELECTORCONTROL_ONAVAILABLEINPUTSCHANGED )
{
  QAudioInputSelectorControlSlots_connect_signal( "availableInputsChanged()", "availableInputsChanged()" );
}

#pragma ENDDUMP
