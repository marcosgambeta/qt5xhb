/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVirtualKeyboardAbstractInputMethodSlots.hpp"

QVirtualKeyboardAbstractInputMethodSlots::QVirtualKeyboardAbstractInputMethodSlots( QObject *parent ) : QObject( parent )
{
}

QVirtualKeyboardAbstractInputMethodSlots::~QVirtualKeyboardAbstractInputMethodSlots()
{
}

void QVirtualKeyboardAbstractInputMethodSlots::selectionListChanged( QVirtualKeyboardSelectionListModel::Type type )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "selectionListChanged(QVirtualKeyboardSelectionListModel::Type)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD");
    PHB_ITEM ptype = hb_itemPutNI( NULL, static_cast<int>(type) );

    hb_vmEvalBlockV(cb, 2, psender, ptype);

    hb_itemRelease(psender);
    hb_itemRelease( ptype );
  }
}

void QVirtualKeyboardAbstractInputMethodSlots::selectionListActiveItemChanged( QVirtualKeyboardSelectionListModel::Type type, int index )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "selectionListActiveItemChanged(QVirtualKeyboardSelectionListModel::Type,int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD");
    PHB_ITEM ptype = hb_itemPutNI( NULL, static_cast<int>(type) );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV(cb, 3, psender, ptype, pindex);

    hb_itemRelease(psender);
    hb_itemRelease( ptype );
    hb_itemRelease( pindex );
  }
}

void QVirtualKeyboardAbstractInputMethodSlots::selectionListsChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "selectionListsChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QVirtualKeyboardAbstractInputMethodSlots_connect_signal(const QString & signal, const QString & slot)
{
  QVirtualKeyboardAbstractInputMethod * obj = (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QVirtualKeyboardAbstractInputMethodSlots * s = QCoreApplication::instance()->findChild<QVirtualKeyboardAbstractInputMethodSlots*>();

    if( s == NULL )
    {
      s = new QVirtualKeyboardAbstractInputMethodSlots();
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
