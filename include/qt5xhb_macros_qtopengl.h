/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTOPENGL_H
#define QT5XHB_MACROS_QTOPENGL_H

#define ISQGLBUFFER( n )                                    Qt5xHb::isObjectDerivedFrom( n, "QGLBuffer" )
#define ISQGLCOLORMAP( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QGLColormap" )
#define ISQGLCONTEXT( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QGLContext" )
#define ISQGLFORMAT( n )                                    Qt5xHb::isObjectDerivedFrom( n, "QGLFormat" )
#define ISQGLFRAMEBUFFEROBJECT( n )                         Qt5xHb::isObjectDerivedFrom( n, "QGLFramebufferObject" )
#define ISQGLFRAMEBUFFEROBJECTFORMAT( n )                   Qt5xHb::isObjectDerivedFrom( n, "QGLFramebufferObjectFormat" )
#define ISQGLFUNCTIONS( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QGLFunctions" )
#define ISQGLPIXELBUFFER( n )                               Qt5xHb::isObjectDerivedFrom( n, "QGLPixelBuffer" )
#define ISQGLSHADER( n )                                    Qt5xHb::isObjectDerivedFrom( n, "QGLShader" )
#define ISQGLWIDGET( n )                                    Qt5xHb::isObjectDerivedFrom( n, "QGLWidget" )

#define PQGLBUFFER( n )                                     static_cast< QGLBuffer * >( Qt5xHb::itemGetPtr( n ) )
#define PQGLCOLORMAP( n )                                   static_cast< QGLColormap * >( Qt5xHb::itemGetPtr( n ) )
#define PQGLCONTEXT( n )                                    static_cast< QGLContext * >( Qt5xHb::itemGetPtr( n ) )
#define PQGLFORMAT( n )                                     static_cast< QGLFormat * >( Qt5xHb::itemGetPtr( n ) )
#define PQGLFRAMEBUFFEROBJECT( n )                          static_cast< QGLFramebufferObject * >( Qt5xHb::itemGetPtr( n ) )
#define PQGLFRAMEBUFFEROBJECTFORMAT( n )                    static_cast< QGLFramebufferObjectFormat * >( Qt5xHb::itemGetPtr( n ) )
#define PQGLFUNCTIONS( n )                                  static_cast< QGLFunctions * >( Qt5xHb::itemGetPtr( n ) )
#define PQGLPIXELBUFFER( n )                                static_cast< QGLPixelBuffer * >( Qt5xHb::itemGetPtr( n ) )
#define PQGLSHADER( n )                                     static_cast< QGLShader * >( Qt5xHb::itemGetPtr( n ) )
#define PQGLWIDGET( n )                                     static_cast< QGLWidget * >( Qt5xHb::itemGetPtr( n ) )

#define OPQGLBUFFER( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QGLBuffer * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGLCOLORMAP( n, v )                               HB_ISNIL( n ) ? v : static_cast< QGLColormap * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGLCONTEXT( n, v )                                HB_ISNIL( n ) ? v : static_cast< QGLContext * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGLFORMAT( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QGLFormat * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGLFRAMEBUFFEROBJECT( n, v )                      HB_ISNIL( n ) ? v : static_cast< QGLFramebufferObject * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGLFRAMEBUFFEROBJECTFORMAT( n, v )                HB_ISNIL( n ) ? v : static_cast< QGLFramebufferObjectFormat * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGLFUNCTIONS( n, v )                              HB_ISNIL( n ) ? v : static_cast< QGLFunctions * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGLPIXELBUFFER( n, v )                            HB_ISNIL( n ) ? v : static_cast< QGLPixelBuffer * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGLSHADER( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QGLShader * >( Qt5xHb::itemGetPtr( n ) )
#define OPQGLWIDGET( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QGLWidget * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTOPENGL_H */
