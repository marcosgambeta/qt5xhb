/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPlainTextEditSlots.h"

QPlainTextEditSlots::QPlainTextEditSlots( QObject *parent ) : QObject( parent )
{
}

QPlainTextEditSlots::~QPlainTextEditSlots()
{
}

void QPlainTextEditSlots::blockCountChanged( int newBlockCount )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "blockCountChanged(int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM pnewBlockCount = hb_itemPutNI( NULL, newBlockCount );

    hb_vmEvalBlockV(cb, 2, psender, pnewBlockCount);

    hb_itemRelease(psender);
    hb_itemRelease( pnewBlockCount );
  }
}

void QPlainTextEditSlots::copyAvailable( bool yes )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "copyAvailable(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM pyes = hb_itemPutL( NULL, yes );

    hb_vmEvalBlockV(cb, 2, psender, pyes);

    hb_itemRelease(psender);
    hb_itemRelease( pyes );
  }
}

void QPlainTextEditSlots::cursorPositionChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "cursorPositionChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QPlainTextEditSlots::modificationChanged( bool changed )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "modificationChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM pchanged = hb_itemPutL( NULL, changed );

    hb_vmEvalBlockV(cb, 2, psender, pchanged);

    hb_itemRelease(psender);
    hb_itemRelease( pchanged );
  }
}

void QPlainTextEditSlots::redoAvailable( bool available )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "redoAvailable(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV(cb, 2, psender, pavailable);

    hb_itemRelease(psender);
    hb_itemRelease( pavailable );
  }
}

void QPlainTextEditSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "selectionChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QPlainTextEditSlots::textChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "textChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QPlainTextEditSlots::undoAvailable( bool available )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "undoAvailable(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV(cb, 2, psender, pavailable);

    hb_itemRelease(psender);
    hb_itemRelease( pavailable );
  }
}

void QPlainTextEditSlots::updateRequest( const QRect & rect, int dy )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "updateRequest(QRect,int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM prect = Qt5xHb::Signals_return_object( (void *) &rect, "QRECT");
    PHB_ITEM pdy = hb_itemPutNI( NULL, dy );

    hb_vmEvalBlockV(cb, 3, psender, prect, pdy);

    hb_itemRelease(psender);
    hb_itemRelease( prect );
    hb_itemRelease( pdy );
  }
}

void QPlainTextEditSlots_connect_signal(const QString & signal, const QString & slot)
{
  QPlainTextEdit * obj = (QPlainTextEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QPlainTextEditSlots * s = QCoreApplication::instance()->findChild<QPlainTextEditSlots*>();

    if( s == NULL )
    {
      s = new QPlainTextEditSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
