/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTHELP_H
#define QT5XHB_MACROS_QTHELP_H

#define ISQHELPCONTENTITEM( n )                             Qt5xHb::isObjectDerivedFrom( n, "QHelpContentItem" )
#define ISQHELPCONTENTMODEL( n )                            Qt5xHb::isObjectDerivedFrom( n, "QHelpContentModel" )
#define ISQHELPCONTENTWIDGET( n )                           Qt5xHb::isObjectDerivedFrom( n, "QHelpContentWidget" )
#define ISQHELPENGINE( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QHelpEngine" )
#define ISQHELPENGINECORE( n )                              Qt5xHb::isObjectDerivedFrom( n, "QHelpEngineCore" )
#define ISQHELPINDEXMODEL( n )                              Qt5xHb::isObjectDerivedFrom( n, "QHelpIndexModel" )
#define ISQHELPINDEXWIDGET( n )                             Qt5xHb::isObjectDerivedFrom( n, "QHelpIndexWidget" )
#define ISQHELPSEARCHENGINE( n )                            Qt5xHb::isObjectDerivedFrom( n, "QHelpSearchEngine" )
#define ISQHELPSEARCHQUERY( n )                             Qt5xHb::isObjectDerivedFrom( n, "QHelpSearchQuery" )
#define ISQHELPSEARCHQUERYWIDGET( n )                       Qt5xHb::isObjectDerivedFrom( n, "QHelpSearchQueryWidget" )
#define ISQHELPSEARCHRESULTWIDGET( n )                      Qt5xHb::isObjectDerivedFrom( n, "QHelpSearchResultWidget" )

#define PQHELPCONTENTITEM( n )                              static_cast< QHelpContentItem * >( Qt5xHb::itemGetPtr( n ) )
#define PQHELPCONTENTMODEL( n )                             static_cast< QHelpContentModel * >( Qt5xHb::itemGetPtr( n ) )
#define PQHELPCONTENTWIDGET( n )                            static_cast< QHelpContentWidget * >( Qt5xHb::itemGetPtr( n ) )
#define PQHELPENGINE( n )                                   static_cast< QHelpEngine * >( Qt5xHb::itemGetPtr( n ) )
#define PQHELPENGINECORE( n )                               static_cast< QHelpEngineCore * >( Qt5xHb::itemGetPtr( n ) )
#define PQHELPINDEXMODEL( n )                               static_cast< QHelpIndexModel * >( Qt5xHb::itemGetPtr( n ) )
#define PQHELPINDEXWIDGET( n )                              static_cast< QHelpIndexWidget * >( Qt5xHb::itemGetPtr( n ) )
#define PQHELPSEARCHENGINE( n )                             static_cast< QHelpSearchEngine * >( Qt5xHb::itemGetPtr( n ) )
#define PQHELPSEARCHQUERY( n )                              static_cast< QHelpSearchQuery * >( Qt5xHb::itemGetPtr( n ) )
#define PQHELPSEARCHQUERYWIDGET( n )                        static_cast< QHelpSearchQueryWidget * >( Qt5xHb::itemGetPtr( n ) )
#define PQHELPSEARCHRESULTWIDGET( n )                       static_cast< QHelpSearchResultWidget * >( Qt5xHb::itemGetPtr( n ) )

#define OPQHELPCONTENTITEM( n, v )                          HB_ISNIL( n ) ? v : static_cast< QHelpContentItem * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHELPCONTENTMODEL( n, v )                         HB_ISNIL( n ) ? v : static_cast< QHelpContentModel * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHELPCONTENTWIDGET( n, v )                        HB_ISNIL( n ) ? v : static_cast< QHelpContentWidget * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHELPENGINE( n, v )                               HB_ISNIL( n ) ? v : static_cast< QHelpEngine * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHELPENGINECORE( n, v )                           HB_ISNIL( n ) ? v : static_cast< QHelpEngineCore * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHELPINDEXMODEL( n, v )                           HB_ISNIL( n ) ? v : static_cast< QHelpIndexModel * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHELPINDEXWIDGET( n, v )                          HB_ISNIL( n ) ? v : static_cast< QHelpIndexWidget * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHELPSEARCHENGINE( n, v )                         HB_ISNIL( n ) ? v : static_cast< QHelpSearchEngine * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHELPSEARCHQUERY( n, v )                          HB_ISNIL( n ) ? v : static_cast< QHelpSearchQuery * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHELPSEARCHQUERYWIDGET( n, v )                    HB_ISNIL( n ) ? v : static_cast< QHelpSearchQueryWidget * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHELPSEARCHRESULTWIDGET( n, v )                   HB_ISNIL( n ) ? v : static_cast< QHelpSearchResultWidget * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTHELP_H */
