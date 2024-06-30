/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIASERVICE
REQUEST QVARIANT
#endif

CLASS QMediaObject INHERIT QObject

   METHOD delete
   METHOD notifyInterval
   METHOD setNotifyInterval
   METHOD availability
   METHOD availableMetaData
   METHOD bind
   METHOD isAvailable
   METHOD isMetaDataAvailable
   METHOD metaData
   METHOD service
   METHOD unbind

   METHOD onAvailabilityChanged1
   METHOD onAvailabilityChanged2
   METHOD onMetaDataAvailableChanged
   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onNotifyIntervalChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaObject>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaObject>
#endif

#include <QtCore/QVariant>
#include <QtMultimedia/QMediaService>

/*
~QMediaObject()
*/
HB_FUNC_STATIC( QMEDIAOBJECT_DELETE )
{
  QMediaObject * obj = (QMediaObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
int notifyInterval() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_NOTIFYINTERVAL )
{
  QMediaObject * obj = (QMediaObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->notifyInterval() );
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
void setNotifyInterval( int milliSeconds )
*/
HB_FUNC_STATIC( QMEDIAOBJECT_SETNOTIFYINTERVAL )
{
  QMediaObject * obj = (QMediaObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setNotifyInterval( PINT(1) );
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
virtual QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_AVAILABILITY )
{
  QMediaObject * obj = (QMediaObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->availability() );
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
QStringList availableMetaData() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_AVAILABLEMETADATA )
{
  QMediaObject * obj = (QMediaObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->availableMetaData() );
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
virtual bool bind( QObject * object )
*/
HB_FUNC_STATIC( QMEDIAOBJECT_BIND )
{
  QMediaObject * obj = (QMediaObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      RBOOL( obj->bind( PQOBJECT(1) ) );
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
virtual bool isAvailable() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_ISAVAILABLE )
{
  QMediaObject * obj = (QMediaObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAvailable() );
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
bool isMetaDataAvailable() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_ISMETADATAAVAILABLE )
{
  QMediaObject * obj = (QMediaObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMetaDataAvailable() );
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
QVariant metaData( const QString & key ) const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_METADATA )
{
  QMediaObject * obj = (QMediaObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->metaData( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual QMediaService * service() const
*/
HB_FUNC_STATIC( QMEDIAOBJECT_SERVICE )
{
  QMediaObject * obj = (QMediaObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaService * ptr = obj->service();
      Qt5xHb::createReturnQObjectClass(ptr, "QMEDIASERVICE");
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
virtual void unbind( QObject * object )
*/
HB_FUNC_STATIC( QMEDIAOBJECT_UNBIND )
{
  QMediaObject * obj = (QMediaObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      obj->unbind( PQOBJECT(1) );
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

void QMediaObjectSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QMEDIAOBJECT_ONAVAILABILITYCHANGED1 )
{
  QMediaObjectSlots_connect_signal("availabilityChanged(bool)", "availabilityChanged(bool)");
}

HB_FUNC_STATIC( QMEDIAOBJECT_ONAVAILABILITYCHANGED2 )
{
  QMediaObjectSlots_connect_signal("availabilityChanged(QMultimedia::AvailabilityStatus)", "availabilityChanged(QMultimedia::AvailabilityStatus)");
}

HB_FUNC_STATIC( QMEDIAOBJECT_ONMETADATAAVAILABLECHANGED )
{
  QMediaObjectSlots_connect_signal("metaDataAvailableChanged(bool)", "metaDataAvailableChanged(bool)");
}

HB_FUNC_STATIC( QMEDIAOBJECT_ONMETADATACHANGED1 )
{
  QMediaObjectSlots_connect_signal("metaDataChanged()", "metaDataChanged()");
}

HB_FUNC_STATIC( QMEDIAOBJECT_ONMETADATACHANGED2 )
{
  QMediaObjectSlots_connect_signal("metaDataChanged(QString,QVariant)", "metaDataChanged(QString,QVariant)");
}

HB_FUNC_STATIC( QMEDIAOBJECT_ONNOTIFYINTERVALCHANGED )
{
  QMediaObjectSlots_connect_signal("notifyIntervalChanged(int)", "notifyIntervalChanged(int)");
}

#pragma ENDDUMP
