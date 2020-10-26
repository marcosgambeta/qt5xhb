/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMetaDataWriterControlSlots.h"

QMetaDataWriterControlSlots::QMetaDataWriterControlSlots( QObject *parent ) : QObject( parent )
{
}

QMetaDataWriterControlSlots::~QMetaDataWriterControlSlots()
{
}

void QMetaDataWriterControlSlots::metaDataChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "metaDataChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMETADATAWRITERCONTROL" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QMetaDataWriterControlSlots::metaDataChanged( const QString & key, const QVariant & value )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "metaDataChanged(QString,QVariant)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMETADATAWRITERCONTROL" );
    PHB_ITEM pkey = hb_itemPutC( NULL, QSTRINGTOSTRING(key) );
    PHB_ITEM pvalue = Qt5xHb::Signals_return_object( (void *) &value, "QVARIANT" );

    hb_vmEvalBlockV( cb, 3, psender, pkey, pvalue );

    hb_itemRelease( psender );
    hb_itemRelease( pkey );
    hb_itemRelease( pvalue );
  }
}

void QMetaDataWriterControlSlots::writableChanged( bool writable )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "writableChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMETADATAWRITERCONTROL" );
    PHB_ITEM pwritable = hb_itemPutL( NULL, writable );

    hb_vmEvalBlockV( cb, 2, psender, pwritable );

    hb_itemRelease( psender );
    hb_itemRelease( pwritable );
  }
}

void QMetaDataWriterControlSlots::metaDataAvailableChanged( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "metaDataAvailableChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMETADATAWRITERCONTROL" );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV( cb, 2, psender, pavailable );

    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void QMetaDataWriterControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QMetaDataWriterControl * obj = (QMetaDataWriterControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QMetaDataWriterControlSlots * s = QCoreApplication::instance()->findChild<QMetaDataWriterControlSlots *>();

    if( s == NULL )
    {
      s = new QMetaDataWriterControlSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
