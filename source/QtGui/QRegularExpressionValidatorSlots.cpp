/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QRegularExpressionValidatorSlots.h"


static SlotsQRegularExpressionValidator * s = NULL;

SlotsQRegularExpressionValidator::SlotsQRegularExpressionValidator(QObject *parent) : QObject(parent)
{
}

SlotsQRegularExpressionValidator::~SlotsQRegularExpressionValidator()
{
}

void SlotsQRegularExpressionValidator::regularExpressionChanged(const QRegularExpression &re)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "regularExpressionChanged(QRegularExpression)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pre = hb_itemPutPtr( NULL, (QRegularExpression *) &re );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pre );
    hb_itemRelease( psender );
    hb_itemRelease( pre );
  }
}

HB_FUNC( QREGULAREXPRESSIONVALIDATOR_ONREGULAREXPRESSIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRegularExpressionValidator(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "regularExpressionChanged(QRegularExpression)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(regularExpressionChanged(QRegularExpression)), s, SLOT(regularExpressionChanged(QRegularExpression)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "regularExpressionChanged(QRegularExpression)";
    ret = object->disconnect(object, SIGNAL(regularExpressionChanged(QRegularExpression)), s, SLOT(regularExpressionChanged(QRegularExpression)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}
