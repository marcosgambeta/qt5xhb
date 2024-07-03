//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QSslSocketSlots.hpp"

QSslSocketSlots::QSslSocketSlots(QObject *parent) : QObject(parent)
{
}

QSslSocketSlots::~QSslSocketSlots()
{
}

void QSslSocketSlots::encrypted()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "encrypted()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSSLSOCKET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QSslSocketSlots::encryptedBytesWritten(qint64 written)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "encryptedBytesWritten(qint64)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSSLSOCKET");
    PHB_ITEM pwritten = hb_itemPutNLL(NULL, written);

    hb_vmEvalBlockV(cb, 2, psender, pwritten);

    hb_itemRelease(psender);
    hb_itemRelease(pwritten);
  }
}

void QSslSocketSlots::modeChanged(QSslSocket::SslMode mode)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "modeChanged(QSslSocket::SslMode)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSSLSOCKET");
    PHB_ITEM pmode = hb_itemPutNI(NULL, static_cast<int>(mode));

    hb_vmEvalBlockV(cb, 2, psender, pmode);

    hb_itemRelease(psender);
    hb_itemRelease(pmode);
  }
}

void QSslSocketSlots::peerVerifyError(const QSslError &error)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "peerVerifyError(QSslError)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSSLSOCKET");
    PHB_ITEM perror = Qt5xHb::Signals_return_object((void *)&error, "QSSLERROR");

    hb_vmEvalBlockV(cb, 2, psender, perror);

    hb_itemRelease(psender);
    hb_itemRelease(perror);
  }
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 5, 0))
void QSslSocketSlots::preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator *authenticator)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb =
      Qt5xHb::Signals_return_codeblock(object, "preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSSLSOCKET");
    PHB_ITEM pauthenticator = Qt5xHb::Signals_return_object((void *)authenticator, "QSSLPRESHAREDKEYAUTHENTICATOR");

    hb_vmEvalBlockV(cb, 2, psender, pauthenticator);

    hb_itemRelease(psender);
    hb_itemRelease(pauthenticator);
  }
}
#endif

void QSslSocketSlots::sslErrors(const QList<QSslError> &errors)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "sslErrors(QList<QSslError>)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSSLSOCKET");
    PHB_DYNS pDynSym = hb_dynsymFindName("QSSLERROR");
    PHB_ITEM perrors = hb_itemArrayNew(0);
    if (pDynSym != NULL)
    {
      for (int i = 0; i < errors.count(); i++)
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew(NULL);
        hb_itemCopy(pTempObject, hb_stackReturnItem());
        PHB_ITEM pTempItem = hb_itemPutPtr(NULL, new QSslError(errors[i]));
        hb_objSendMsg(pTempObject, "NEWFROMPOINTER", 1, pTempItem);
        hb_arrayAddForward(perrors, pTempObject);
        hb_itemRelease(pTempObject);
        hb_itemRelease(pTempItem);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS);
    }

    hb_vmEvalBlockV(cb, 2, psender, perrors);

    hb_itemRelease(psender);
    hb_itemRelease(perrors);
  }
}

void QSslSocketSlots_connect_signal(const QString &signal, const QString &slot)
{
  QSslSocket *obj = (QSslSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QSslSocketSlots *s = QCoreApplication::instance()->findChild<QSslSocketSlots *>();

    if (s == NULL)
    {
      s = new QSslSocketSlots();
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
