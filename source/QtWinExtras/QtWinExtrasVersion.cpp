//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtWinExtras/QtWinExtrasVersion>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtWinExtras/QtWinExtrasVersion>
#endif
#endif

HB_FUNC(QTWINEXTRAS_VERSION_STR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  hb_retc(static_cast<const char *>(QTWINEXTRAS_VERSION_STR));
#else
  hb_retc(static_cast<const char *>(""));
#endif
}

HB_FUNC(QTWINEXTRAS_VERSION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  hb_retni(QTWINEXTRAS_VERSION);
#else
  hb_retni(0);
#endif
}
