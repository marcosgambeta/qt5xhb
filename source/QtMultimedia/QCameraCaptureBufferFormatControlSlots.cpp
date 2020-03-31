/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCameraCaptureBufferFormatControlSlots.h"

QCameraCaptureBufferFormatControlSlots::QCameraCaptureBufferFormatControlSlots(QObject *parent) : QObject(parent)
{
}

QCameraCaptureBufferFormatControlSlots::~QCameraCaptureBufferFormatControlSlots()
{
}
void QCameraCaptureBufferFormatControlSlots::bufferFormatChanged( QVideoFrame::PixelFormat format )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferFormatChanged(QVideoFrame::PixelFormat)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QCAMERACAPTUREBUFFERFORMATCONTROL" );
    PHB_ITEM pformat = hb_itemPutNI( NULL, (int) format );
    hb_vmEvalBlockV( cb, 2, psender, pformat );
    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}

void QCameraCaptureBufferFormatControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QCameraCaptureBufferFormatControlSlots * s = QCoreApplication::instance()->findChild<QCameraCaptureBufferFormatControlSlots *>();

    if( s == NULL )
    {
      s = new QCameraCaptureBufferFormatControlSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
