/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTSVG_H
#define QT5XHB_MACROS_QTSVG_H

#define ISQGRAPHICSSVGITEM(n)                               Qt5xHb::isObjectDerivedFrom(n, "QGraphicsSvgItem")
#define ISQSVGGENERATOR(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QSvgGenerator")
#define ISQSVGRENDERER(n)                                   Qt5xHb::isObjectDerivedFrom(n, "QSvgRenderer")
#define ISQSVGWIDGET(n)                                     Qt5xHb::isObjectDerivedFrom(n, "QSvgWidget")

#define PQGRAPHICSSVGITEM(n)                                static_cast<QGraphicsSvgItem*>(Qt5xHb::itemGetPtr(n))
#define PQSVGGENERATOR(n)                                   static_cast<QSvgGenerator*>(Qt5xHb::itemGetPtr(n))
#define PQSVGRENDERER(n)                                    static_cast<QSvgRenderer*>(Qt5xHb::itemGetPtr(n))
#define PQSVGWIDGET(n)                                      static_cast<QSvgWidget*>(Qt5xHb::itemGetPtr(n))

#define OPQGRAPHICSSVGITEM(n, v)                            HB_ISNIL(n) ? v : static_cast<QGraphicsSvgItem*>(Qt5xHb::itemGetPtr(n))
#define OPQSVGGENERATOR(n, v)                               HB_ISNIL(n) ? v : static_cast<QSvgGenerator*>(Qt5xHb::itemGetPtr(n))
#define OPQSVGRENDERER(n, v)                                HB_ISNIL(n) ? v : static_cast<QSvgRenderer*>(Qt5xHb::itemGetPtr(n))
#define OPQSVGWIDGET(n, v)                                  HB_ISNIL(n) ? v : static_cast<QSvgWidget*>(Qt5xHb::itemGetPtr(n))

#endif /* QT5XHB_MACROS_QTSVG_H */
