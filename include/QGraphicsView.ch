/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QGraphicsView::CacheModeFlag
flags QGraphicsView::CacheMode
*/
#define QGraphicsView_CacheNone                                      0x0
#define QGraphicsView_CacheBackground                                0x1

/*
enum QGraphicsView::DragMode
*/
#define QGraphicsView_NoDrag                                         0
#define QGraphicsView_ScrollHandDrag                                 1
#define QGraphicsView_RubberBandDrag                                 2

/*
enum QGraphicsView::OptimizationFlag
flags QGraphicsView::OptimizationFlags
*/
#define QGraphicsView_DontClipPainter                                0x1
#define QGraphicsView_DontSavePainterState                           0x2
#define QGraphicsView_DontAdjustForAntialiasing                      0x4
#define QGraphicsView_IndirectPainting                               0x8

/*
enum QGraphicsView::ViewportAnchor
*/
#define QGraphicsView_NoAnchor                                       0
#define QGraphicsView_AnchorViewCenter                               1
#define QGraphicsView_AnchorUnderMouse                               2

/*
enum QGraphicsView::ViewportUpdateMode
*/
#define QGraphicsView_FullViewportUpdate                             0
#define QGraphicsView_MinimalViewportUpdate                          1
#define QGraphicsView_SmartViewportUpdate                            2
#define QGraphicsView_BoundingRectViewportUpdate                     4
#define QGraphicsView_NoViewportUpdate                               3
