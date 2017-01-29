/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QMetaType::ExtensionFlag
*/
#define QMetaType_NoExtensionFlags                                   0
#define QMetaType_CreateEx                                           0x1
#define QMetaType_DestroyEx                                          0x2
#define QMetaType_ConstructEx                                        0x4
#define QMetaType_DestructEx                                         0x8
#define QMetaType_NameEx                                             0x10
#define QMetaType_SizeEx                                             0x20
#define QMetaType_CtorEx                                             0x40
#define QMetaType_DtorEx                                             0x80
#define QMetaType_FlagsEx                                            0x100
#define QMetaType_MetaObjectEx                                       0x200

/*
enum QMetaType::Type
*/
#define QMetaType_UnknownType                                        0
#define QMetaType_Bool                                               1
#define QMetaType_Int                                                2
#define QMetaType_UInt                                               3
#define QMetaType_LongLong                                           4
#define QMetaType_ULongLong                                          5
#define QMetaType_Double                                             6
#define QMetaType_Long                                               32
#define QMetaType_Short                                              33
#define QMetaType_Char                                               34
#define QMetaType_ULong                                              35
#define QMetaType_UShort                                             36
#define QMetaType_UChar                                              37
#define QMetaType_Float                                              38
#define QMetaType_VoidStar                                           31
#define QMetaType_QChar                                              7
#define QMetaType_QString                                            10
#define QMetaType_QStringList                                        11
#define QMetaType_QByteArray                                         12
#define QMetaType_QBitArray                                          13
#define QMetaType_QDate                                              14
#define QMetaType_QTime                                              15
#define QMetaType_QDateTime                                          16
#define QMetaType_QUrl                                               17
#define QMetaType_QLocale                                            18
#define QMetaType_QRect                                              19
#define QMetaType_QRectF                                             20
#define QMetaType_QSize                                              21
#define QMetaType_QSizeF                                             22
#define QMetaType_QLine                                              23
#define QMetaType_QLineF                                             24
#define QMetaType_QPoint                                             25
#define QMetaType_QPointF                                            26
#define QMetaType_QRegExp                                            27
#define QMetaType_QEasingCurve                                       29
#define QMetaType_QUuid                                              30
#define QMetaType_QVariant                                           41
#define QMetaType_QModelIndex                                        42
#define QMetaType_QRegularExpression                                 44
#define QMetaType_QJsonValue                                         45
#define QMetaType_QJsonObject                                        46
#define QMetaType_QJsonArray                                         47
#define QMetaType_QJsonDocument                                      48
#define QMetaType_QObjectStar                                        39
#define QMetaType_SChar                                              40
#define QMetaType_Void                                               43
#define QMetaType_QVariantMap                                        8
#define QMetaType_QVariantList                                       9
#define QMetaType_QVariantHash                                       28
#define QMetaType_QFont                                              64
#define QMetaType_QPixmap                                            65
#define QMetaType_QBrush                                             66
#define QMetaType_QColor                                             67
#define QMetaType_QPalette                                           68
#define QMetaType_QIcon                                              69
#define QMetaType_QImage                                             70
#define QMetaType_QPolygon                                           71
#define QMetaType_QRegion                                            72
#define QMetaType_QBitmap                                            73
#define QMetaType_QCursor                                            74
#define QMetaType_QKeySequence                                       75
#define QMetaType_QPen                                               76
#define QMetaType_QTextLength                                        77
#define QMetaType_QTextFormat                                        78
#define QMetaType_QMatrix                                            79
#define QMetaType_QTransform                                         80
#define QMetaType_QMatrix4x4                                         81
#define QMetaType_QVector2D                                          82
#define QMetaType_QVector3D                                          83
#define QMetaType_QVector4D                                          84
#define QMetaType_QQuaternion                                        85
#define QMetaType_QPolygonF                                          86
#define QMetaType_QSizePolicy                                        121
#define QMetaType_User                                               1024
#define QMetaType_FirstCoreType                                      QMetaType_Bool
#define QMetaType_LastCoreType                                       QMetaType_QJsonDocument
#define QMetaType_FirstGuiType                                       QMetaType_QFont
#define QMetaType_LastGuiType                                        QMetaType_QPolygonF
#define QMetaType_FirstWidgetsType                                   QMetaType_QSizePolicy
#define QMetaType_LastWidgetsType                                    QMetaType_QSizePolicy
#define QMetaType_HighestInternalId                                  QMetaType_LastWidgetsType
#define QMetaType_QReal                                              //sizeof(qreal) == sizeof(double) ? Double : Float

/*
enum QMetaType::TypeFlag
*/
#define QMetaType_NeedsConstruction                                  0x1
#define QMetaType_NeedsDestruction                                   0x2
#define QMetaType_MovableType                                        0x4
#define QMetaType_PointerToQObject                                   0x8
#define QMetaType_IsEnumeration                                      0x10
#define QMetaType_SharedPointerToQObject                             0x20
#define QMetaType_WeakPointerToQObject                               0x40
#define QMetaType_TrackingPointerToQObject                           0x80
#define QMetaType_WasDeclaredAsMetaType                              0x100
