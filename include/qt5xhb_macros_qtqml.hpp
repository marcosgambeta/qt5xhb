/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTQML_H
#define QT5XHB_MACROS_QTQML_H

#define ISQJSENGINE(n)                                      Qt5xHb::isObjectDerivedFrom(n, "QJSEngine")
#define ISQJSVALUE(n)                                       Qt5xHb::isObjectDerivedFrom(n, "QJSValue")
#define ISQJSVALUEITERATOR(n)                               Qt5xHb::isObjectDerivedFrom(n, "QJSValueIterator")
#define ISQQMLAPPLICATIONENGINE(n)                          Qt5xHb::isObjectDerivedFrom(n, "QQmlApplicationEngine")
#define ISQQMLCOMPONENT(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QQmlComponent")
#define ISQQMLCONTEXT(n)                                    Qt5xHb::isObjectDerivedFrom(n, "QQmlContext")
#define ISQQMLENGINE(n)                                     Qt5xHb::isObjectDerivedFrom(n, "QQmlEngine")
#define ISQQMLERROR(n)                                      Qt5xHb::isObjectDerivedFrom(n, "QQmlError")
#define ISQQMLEXPRESSION(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QQmlExpression")
#define ISQQMLEXTENSIONPLUGIN(n)                            Qt5xHb::isObjectDerivedFrom(n, "QQmlExtensionPlugin")
#define ISQQMLIMAGEPROVIDERBASE(n)                          Qt5xHb::isObjectDerivedFrom(n, "QQmlImageProviderBase")
#define ISQQMLINCUBATIONCONTROLLER(n)                       Qt5xHb::isObjectDerivedFrom(n, "QQmlIncubationController")
#define ISQQMLINCUBATOR(n)                                  Qt5xHb::isObjectDerivedFrom(n, "QQmlIncubator")
#define ISQQMLLISTPROPERTY(n)                               Qt5xHb::isObjectDerivedFrom(n, "QQmlListProperty")
#define ISQQMLLISTREFERENCE(n)                              Qt5xHb::isObjectDerivedFrom(n, "QQmlListReference")
#define ISQQMLNETWORKACCESSMANAGERFACTORY(n)                Qt5xHb::isObjectDerivedFrom(n, "QQmlNetworkAccessManagerFactory")
#define ISQQMLPARSERSTATUS(n)                               Qt5xHb::isObjectDerivedFrom(n, "QQmlParserStatus")
#define ISQQMLPROPERTY(n)                                   Qt5xHb::isObjectDerivedFrom(n, "QQmlProperty")
#define ISQQMLPROPERTYMAP(n)                                Qt5xHb::isObjectDerivedFrom(n, "QQmlPropertyMap")
#define ISQQMLPROPERTYVALUESOURCE(n)                        Qt5xHb::isObjectDerivedFrom(n, "QQmlPropertyValueSource")
#define ISQQMLSCRIPTSTRING(n)                               Qt5xHb::isObjectDerivedFrom(n, "QQmlScriptString")

#define PQJSENGINE(n)                                       static_cast<QJSEngine*>(Qt5xHb::itemGetPtr(n))
#define PQJSVALUE(n)                                        static_cast<QJSValue*>(Qt5xHb::itemGetPtr(n))
#define PQJSVALUEITERATOR(n)                                static_cast<QJSValueIterator*>(Qt5xHb::itemGetPtr(n))
#define PQQMLAPPLICATIONENGINE(n)                           static_cast<QQmlApplicationEngine*>(Qt5xHb::itemGetPtr(n))
#define PQQMLCOMPONENT(n)                                   static_cast<QQmlComponent*>(Qt5xHb::itemGetPtr(n))
#define PQQMLCONTEXT(n)                                     static_cast<QQmlContext*>(Qt5xHb::itemGetPtr(n))
#define PQQMLENGINE(n)                                      static_cast<QQmlEngine*>(Qt5xHb::itemGetPtr(n))
#define PQQMLERROR(n)                                       static_cast<QQmlError*>(Qt5xHb::itemGetPtr(n))
#define PQQMLEXPRESSION(n)                                  static_cast<QQmlExpression*>(Qt5xHb::itemGetPtr(n))
#define PQQMLEXTENSIONPLUGIN(n)                             static_cast<QQmlExtensionPlugin*>(Qt5xHb::itemGetPtr(n))
#define PQQMLIMAGEPROVIDERBASE(n)                           static_cast<QQmlImageProviderBase*>(Qt5xHb::itemGetPtr(n))
#define PQQMLINCUBATIONCONTROLLER(n)                        static_cast<QQmlIncubationController*>(Qt5xHb::itemGetPtr(n))
#define PQQMLINCUBATOR(n)                                   static_cast<QQmlIncubator*>(Qt5xHb::itemGetPtr(n))
#define PQQMLLISTPROPERTY(n)                                static_cast<QQmlListProperty*>(Qt5xHb::itemGetPtr(n))
#define PQQMLLISTREFERENCE(n)                               static_cast<QQmlListReference*>(Qt5xHb::itemGetPtr(n))
#define PQQMLNETWORKACCESSMANAGERFACTORY(n)                 static_cast<QQmlNetworkAccessManagerFactory*>(Qt5xHb::itemGetPtr(n))
#define PQQMLPARSERSTATUS(n)                                static_cast<QQmlParserStatus*>(Qt5xHb::itemGetPtr(n))
#define PQQMLPROPERTY(n)                                    static_cast<QQmlProperty*>(Qt5xHb::itemGetPtr(n))
#define PQQMLPROPERTYMAP(n)                                 static_cast<QQmlPropertyMap*>(Qt5xHb::itemGetPtr(n))
#define PQQMLPROPERTYVALUESOURCE(n)                         static_cast<QQmlPropertyValueSource*>(Qt5xHb::itemGetPtr(n))
#define PQQMLSCRIPTSTRING(n)                                static_cast<QQmlScriptString*>(Qt5xHb::itemGetPtr(n))

#define OPQJSENGINE(n, v)                                   HB_ISNIL(n) ? v : static_cast<QJSEngine*>(Qt5xHb::itemGetPtr(n))
#define OPQJSVALUE(n, v)                                    HB_ISNIL(n) ? v : static_cast<QJSValue*>(Qt5xHb::itemGetPtr(n))
#define OPQJSVALUEITERATOR(n, v)                            HB_ISNIL(n) ? v : static_cast<QJSValueIterator*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLAPPLICATIONENGINE(n, v)                       HB_ISNIL(n) ? v : static_cast<QQmlApplicationEngine*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLCOMPONENT(n, v)                               HB_ISNIL(n) ? v : static_cast<QQmlComponent*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLCONTEXT(n, v)                                 HB_ISNIL(n) ? v : static_cast<QQmlContext*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLENGINE(n, v)                                  HB_ISNIL(n) ? v : static_cast<QQmlEngine*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLERROR(n, v)                                   HB_ISNIL(n) ? v : static_cast<QQmlError*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLEXPRESSION(n, v)                              HB_ISNIL(n) ? v : static_cast<QQmlExpression*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLEXTENSIONPLUGIN(n, v)                         HB_ISNIL(n) ? v : static_cast<QQmlExtensionPlugin*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLIMAGEPROVIDERBASE(n, v)                       HB_ISNIL(n) ? v : static_cast<QQmlImageProviderBase*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLINCUBATIONCONTROLLER(n, v)                    HB_ISNIL(n) ? v : static_cast<QQmlIncubationController*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLINCUBATOR(n, v)                               HB_ISNIL(n) ? v : static_cast<QQmlIncubator*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLLISTPROPERTY(n, v)                            HB_ISNIL(n) ? v : static_cast<QQmlListProperty*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLLISTREFERENCE(n, v)                           HB_ISNIL(n) ? v : static_cast<QQmlListReference*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLNETWORKACCESSMANAGERFACTORY(n, v)             HB_ISNIL(n) ? v : static_cast<QQmlNetworkAccessManagerFactory*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLPARSERSTATUS(n, v)                            HB_ISNIL(n) ? v : static_cast<QQmlParserStatus*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLPROPERTY(n, v)                                HB_ISNIL(n) ? v : static_cast<QQmlProperty*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLPROPERTYMAP(n, v)                             HB_ISNIL(n) ? v : static_cast<QQmlPropertyMap*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLPROPERTYVALUESOURCE(n, v)                     HB_ISNIL(n) ? v : static_cast<QQmlPropertyValueSource*>(Qt5xHb::itemGetPtr(n))
#define OPQQMLSCRIPTSTRING(n, v)                            HB_ISNIL(n) ? v : static_cast<QQmlScriptString*>(Qt5xHb::itemGetPtr(n))

#endif /* QT5XHB_MACROS_QTQML_H */
