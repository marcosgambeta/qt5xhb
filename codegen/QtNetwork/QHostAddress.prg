%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
%% REQUEST Q_IPV6ADDR
#endif

CLASS QHostAddress

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new
   METHOD delete

   METHOD clear
   METHOD isEqual
   METHOD isInSubnet
   METHOD isLoopback
   METHOD isMulticast
   METHOD isNull
   METHOD parseSubnet
   METHOD protocol
   METHOD scopeId
   METHOD setAddress
   METHOD setScopeId
   METHOD swap
   METHOD toIPv4Address
   METHOD toIPv6Address
   METHOD toString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHostAddress()
$constructor=|new1|

$prototype=explicit QHostAddress(quint32 ip4Addr)
$constructor=|new2|quint32

$prototype=explicit QHostAddress(quint8 *ip6Addr)

$prototype=explicit QHostAddress(const quint8 *ip6Addr)

$prototype=explicit QHostAddress(const Q_IPV6ADDR &ip6Addr)

$prototype=explicit QHostAddress(const sockaddr *address)

$prototype=explicit QHostAddress(const QString &address)
$constructor=|new7|const QString &

$prototype=QHostAddress(const QHostAddress &copy)
$constructor=|new8|const QHostAddress &

$prototype=QHostAddress(SpecialAddress address)
$constructor=|new9|QHostAddress::SpecialAddress

//[1]QHostAddress()
//[2]explicit QHostAddress(quint32 ip4Addr)
//[3]explicit QHostAddress(quint8 *ip6Addr)
//[4]explicit QHostAddress(const quint8 *ip6Addr)
//[5]explicit QHostAddress(const Q_IPV6ADDR &ip6Addr)
//[6]explicit QHostAddress(const sockaddr *address)
//[7]explicit QHostAddress(const QString &address)
//[8]QHostAddress(const QHostAddress &copy)
//[9]QHostAddress(SpecialAddress address)

HB_FUNC_STATIC( QHOSTADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW7 );
  }
  else if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW8 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW9 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QHostAddress()
$deleteMethod

$prototype=void swap(QHostAddress &other) Q_DECL_NOTHROW
$method=|void|swap|QHostAddress &

$prototype=void setAddress(quint32 ip4Addr)
$method=|void|setAddress,setAddress1|quint32

$prototype=void setAddress(quint8 *ip6Addr)

$prototype=void setAddress(const quint8 *ip6Addr)

$prototype=void setAddress(const Q_IPV6ADDR &ip6Addr)

$prototype=void setAddress(const sockaddr *address)

$prototype=bool setAddress(const QString &address)
$method=|bool|setAddress,setAddress6|const QString &

$prototype=void setAddress(SpecialAddress address)
$method=|void|setAddress,setAddress7|QHostAddress::SpecialAddress

//[1]void setAddress(quint32 ip4Addr)
//[2]void setAddress(quint8 *ip6Addr)
//[3]void setAddress(const quint8 *ip6Addr)
//[4]void setAddress(const Q_IPV6ADDR &ip6Addr)
//[5]void setAddress(const sockaddr *address)
//[6]bool setAddress(const QString &address)
//[7]void setAddress(SpecialAddress address)

HB_FUNC_STATIC( QHOSTADDRESS_SETADDRESS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_SETADDRESS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_SETADDRESS6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QAbstractSocket::NetworkLayerProtocol protocol() const
$method=|QAbstractSocket::NetworkLayerProtocol|protocol|

$prototype=quint32 toIPv4Address() const
$internalMethod=|quint32|toIPv4Address,toIPv4Address1|

$prototype=quint32 toIPv4Address(bool *ok) const
$internalMethod=|quint32|toIPv4Address,toIPv4Address2|bool *

//[1]quint32 toIPv4Address() const
//[2]quint32 toIPv4Address(bool *ok) const

HB_FUNC_STATIC( QHOSTADDRESS_TOIPV4ADDRESS )
{
  if( ISNUMPAR(0) )
  {
    QHostAddress_setAddress1();
  }
  else if( ISNUMPAR(1) && ISBOOL(1) )
  {
    QHostAddress_setAddress2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=Q_IPV6ADDR toIPv6Address() const

$prototype=QString toString() const
$method=|QString|toString|

$prototype=QString scopeId() const
$method=|QString|scopeId|

$prototype=void setScopeId(const QString &id)
$method=|void|setScopeId|const QString &

$prototype=bool isEqual(const QHostAddress &address, ConversionMode mode = TolerantConversion) const
$method=|bool|isEqual|const QHostAddress &,QHostAddress::ConversionMode=QHostAddress::TolerantConversion

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=void clear()
$method=|void|clear|

$prototype=bool isInSubnet(const QHostAddress &subnet, int netmask) const
$internalMethod=|bool|isInSubnet,isInSubnet1|const QHostAddress &,int

$prototype=bool isInSubnet(const QPair<QHostAddress, int> &subnet) const
%% TODO: implementar QPair
%% $internalMethod=|bool|isInSubnet,isInSubnet2|const QPair<QHostAddress, int> &

//[1]bool isInSubnet(const QHostAddress &subnet, int netmask) const
//[2]bool isInSubnet(const QPair<QHostAddress, int> &subnet) const

HB_FUNC_STATIC( QHOSTADDRESS_ISINSUBNET )
{
  if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISNUM(2) )
  {
    QHostAddress_isInSubnet1();
  }
%%  else if( ISNUMPAR(1) && ISARRAY(1) )
%%  {
%%    QHostAddress_isInSubnet2();
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isLoopback() const
$method=|bool|isLoopback|

$prototype=bool isMulticast() const
$method=|bool|isMulticast|

$prototype=static QPair<QHostAddress, int> parseSubnet(const QString &subnet)

$extraMethods

#pragma ENDDUMP
