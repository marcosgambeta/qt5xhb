//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAudioRecorder INHERIT QMediaRecorder

   METHOD new
   METHOD delete
   METHOD audioInput
   METHOD setAudioInput
   METHOD audioInputDescription
   METHOD audioInputs
   METHOD defaultAudioInput

   METHOD onAudioInputChanged
   METHOD onAvailableAudioInputsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAudioRecorder
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAudioRecorder>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAudioRecorder>
#endif

    /*
    QAudioRecorder( QObject * parent = nullptr )
    */
HB_FUNC_STATIC(QAUDIORECORDER_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QAudioRecorder *obj = new QAudioRecorder(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QAudioRecorder()
*/
HB_FUNC_STATIC(QAUDIORECORDER_DELETE)
{
  QAudioRecorder *obj = (QAudioRecorder *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString audioInput() const
*/
HB_FUNC_STATIC(QAUDIORECORDER_AUDIOINPUT)
{
  QAudioRecorder *obj = (QAudioRecorder *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->audioInput());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setAudioInput( const QString &name )
*/
HB_FUNC_STATIC(QAUDIORECORDER_SETAUDIOINPUT)
{
  QAudioRecorder *obj = (QAudioRecorder *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setAudioInput(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString audioInputDescription( const QString &name ) const
*/
HB_FUNC_STATIC(QAUDIORECORDER_AUDIOINPUTDESCRIPTION)
{
  QAudioRecorder *obj = (QAudioRecorder *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RQSTRING(obj->audioInputDescription(PQSTRING(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QStringList audioInputs() const
*/
HB_FUNC_STATIC(QAUDIORECORDER_AUDIOINPUTS)
{
  QAudioRecorder *obj = (QAudioRecorder *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->audioInputs());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString defaultAudioInput() const
*/
HB_FUNC_STATIC(QAUDIORECORDER_DEFAULTAUDIOINPUT)
{
  QAudioRecorder *obj = (QAudioRecorder *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->defaultAudioInput());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QAudioRecorderSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QAUDIORECORDER_ONAUDIOINPUTCHANGED)
{
  QAudioRecorderSlots_connect_signal("audioInputChanged(QString)", "audioInputChanged(QString)");
}

HB_FUNC_STATIC(QAUDIORECORDER_ONAVAILABLEAUDIOINPUTSCHANGED)
{
  QAudioRecorderSlots_connect_signal("availableAudioInputsChanged()", "availableAudioInputsChanged()");
}

#pragma ENDDUMP
