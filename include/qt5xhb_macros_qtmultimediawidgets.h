/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTMULTIMEDIAWIDGETS_H
#define QT5XHB_MACROS_QTMULTIMEDIAWIDGETS_H

#define ISQCAMERAVIEWFINDER( n )                            Qt5xHb::isObjectDerivedFrom( n, "QCameraViewfinder" )
#define ISQGRAPHICSVIDEOITEM( n )                           Qt5xHb::isObjectDerivedFrom( n, "QGraphicsVideoItem" )
#define ISQVIDEOWIDGET( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QVideoWidget" )
#define ISQVIDEOWIDGETCONTROL( n )                          Qt5xHb::isObjectDerivedFrom( n, "QVideoWidgetControl" )

#define PQCAMERAVIEWFINDER( n )                             static_cast< QCameraViewfinder * >( Qt5xHb::itemGetPtr( n ) )
#define PQGRAPHICSVIDEOITEM( n )                            static_cast< QGraphicsVideoItem * >( Qt5xHb::itemGetPtr( n ) )
#define PQVIDEOWIDGET( n )                                  static_cast< QVideoWidget * >( Qt5xHb::itemGetPtr( n ) )
#define PQVIDEOWIDGETCONTROL( n )                           static_cast< QVideoWidgetControl * >( Qt5xHb::itemGetPtr( n ) )

#define OPQCAMERAVIEWFINDER( n, v )                         HB_ISNIL( n ) ? v : static_cast< QCameraViewfinder * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGRAPHICSVIDEOITEM( n, v )                        HB_ISNIL( n ) ? v : static_cast< QGraphicsVideoItem * >( Qt5xHb::itemGetPtr( n ) )
#define OPQVIDEOWIDGET( n, v )                              HB_ISNIL( n ) ? v : static_cast< QVideoWidget * >( Qt5xHb::itemGetPtr( n ) )
#define OPQVIDEOWIDGETCONTROL( n, v )                       HB_ISNIL( n ) ? v : static_cast< QVideoWidgetControl * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTMULTIMEDIAWIDGETS_H */
