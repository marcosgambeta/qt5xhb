/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#include <QtWidgetsVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgetsVersion>
#endif

HB_FUNC( QTWIDGETS_VERSION_STR )
{
  hb_retc( (const char *) QTWIDGETS_VERSION_STR );
}

HB_FUNC( QTWIDGETS_VERSION )
{
  hb_retni( QTWIDGETS_VERSION );
}
