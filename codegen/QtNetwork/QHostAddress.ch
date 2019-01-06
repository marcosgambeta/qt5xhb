%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

/*
enum QHostAddress::SpecialAddress
*/
#define QHostAddress_Null                                            0
#define QHostAddress_Broadcast                                       1
#define QHostAddress_LocalHost                                       2
#define QHostAddress_LocalHostIPv6                                   3
#define QHostAddress_Any                                             4
#define QHostAddress_AnyIPv6                                         5
#define QHostAddress_AnyIPv4                                         6

/*
enum QHostAddress::ConversionModeFlag
flags QHostAddress::ConversionMode
*/
#define QHostAddress_ConvertV4MappedToIPv4                           1
#define QHostAddress_ConvertV4CompatToIPv4                           2
#define QHostAddress_ConvertUnspecifiedAddress                       4
#define QHostAddress_ConvertLocalHost                                8
#define QHostAddress_TolerantConversion                              0xff
#define QHostAddress_StrictConversion                                0
