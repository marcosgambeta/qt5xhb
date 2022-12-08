/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTQUICKWIDGETS_H
#define QT5XHB_MACROS_QTQUICKWIDGETS_H

#define ISQQUICKWIDGET( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QQuickWidget" )

#define PQQUICKWIDGET( n )                                  static_cast< QQuickWidget * >( Qt5xHb::itemGetPtr( n ) )

#define OPQQUICKWIDGET( n, v )                              HB_ISNIL( n ) ? v : static_cast< QQuickWidget * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTQUICKWIDGETS_H */
