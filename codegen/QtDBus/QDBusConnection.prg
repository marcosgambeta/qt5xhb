$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSERROR
REQUEST CONNECTIONCAPABILITIES
REQUEST QDBUSMESSAGE
REQUEST QDBUSPENDINGCALL
REQUEST QOBJECT
REQUEST QDBUSCONNECTIONINTERFACE
REQUEST QBYTEARRAY
#endif

CLASS QDBusConnection

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isConnected
   METHOD baseService
   METHOD lastError
   METHOD name
   METHOD connectionCapabilities
   METHOD send
   METHOD callWithCallback
   METHOD call
   METHOD asyncCall
   METHOD connect
   METHOD disconnect
   METHOD registerObject
   METHOD unregisterObject
   METHOD objectRegisteredAt
   METHOD registerVirtualObject
   METHOD registerService
   METHOD unregisterService
   METHOD interface
   METHOD internalPointer
   METHOD connectToBus
   METHOD connectToPeer
   METHOD disconnectFromBus
   METHOD disconnectFromPeer
   METHOD localMachineId
   METHOD sessionBus
   METHOD systemBus
   METHOD sender

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

/*
QDBusConnection(const QString &name)
*/
$internalConstructor=|new1|const QString &

/*
QDBusConnection(const QDBusConnection &other)
*/
$internalConstructor=|new2|const QDBusConnection &

//[1]QDBusConnection(const QString &name)
//[2]QDBusConnection(const QDBusConnection &other)

HB_FUNC_STATIC( QDBUSCONNECTION_NEW )
{
  // TODO: implementar
}

$deleteMethod

/*
bool isConnected() const
*/
$method=|bool|isConnected|

/*
QString baseService() const
*/
$method=|QString|baseService|

/*
QDBusError lastError() const
*/
$method=|QDBusError|lastError|

/*
QString name() const
*/
$method=|QString|name|

/*
ConnectionCapabilities connectionCapabilities() const
*/
$method=|QDBusConnection::ConnectionCapabilities|connectionCapabilities|

/*
bool send(const QDBusMessage &message) const
*/
$method=|bool|send|const QDBusMessage &

/*
bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *returnMethod, const char *errorMethod,int timeout = -1) const
*/
$internalMethod=|bool|callWithCallback,callWithCallback1|const QDBusMessage &,QObject *,const char *,const char *,int=-1

/*
bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *slot, int timeout = -1) const
*/
$internalMethod=|bool|callWithCallback,callWithCallback2|const QDBusMessage &,QObject *,const char *,int=-1

//[1]bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *returnMethod, const char *errorMethod,int timeout = -1) const
//[2]bool callWithCallback(const QDBusMessage &message, QObject *receiver,const char *slot, int timeout = -1) const

HB_FUNC_STATIC( QDBUSCONNECTION_CALLWITHCALLBACK )
{
  // TODO: implementar
}

/*
QDBusMessage call(const QDBusMessage &message, QDBus::CallMode mode = QDBus::Block,int timeout = -1) const
*/
$method=|QDBusMessage|call|const QDBusMessage &,QDBus::CallMode=QDBus::Block,int=-1

/*
QDBusPendingCall asyncCall(const QDBusMessage &message, int timeout = -1) const
*/
$method=|QDBusPendingCall|asyncCall|const QDBusMessage &,int=-1

/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
*/
$internalMethod=|bool|connect,connect1|const QString &,const QString &,const QString &,const QString &,QObject *,const char *

/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
*/
$internalMethod=|bool|connect,connect2|const QString &,const QString &,const QString &,const QString &,const QString &,QObject *,const char *

/*
bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
*/
$internalMethod=|bool|connect,connect3|const QString &,const QString &,const QString &,const QString &,const QStringList &,const QString &,QObject *,const char *

//[1]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
//[2]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
//[3]bool connect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECT )
{
  // TODO: implementar
}

/*
bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
*/
$internalMethod=|bool|disconnect,disconnect1|const QString &,const QString &,const QString &,const QString &,QObject *,const char *

/*
bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
*/
$internalMethod=|bool|disconnect,disconnect2|const QString &,const QString &,const QString &,const QString &,const QString &,QObject *,const char *

/*
bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)
*/
$internalMethod=|bool|disconnect,disconnect3|const QString &,const QString &,const QString &,const QString &,const QStringList &,const QString &,QObject *,const char *

//[1]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, QObject *receiver, const char *slot)
//[2]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QString& signature,QObject *receiver, const char *slot)
//[3]bool disconnect(const QString &service, const QString &path, const QString &interface,const QString &name, const QStringList &argumentMatch, const QString& signature,QObject *receiver, const char *slot)

HB_FUNC_STATIC( QDBUSCONNECTION_DISCONNECT )
{
  // TODO: implementar
}

/*
bool registerObject(const QString &path, QObject *object,RegisterOptions options = ExportAdaptors)
*/
$method=|bool|registerObject|const QString &,QObject *,QDBusConnection::RegisterOptions=QDBusConnection::ExportAdaptors

/*
void unregisterObject(const QString &path, UnregisterMode mode = UnregisterNode)
*/
$method=|void|unregisterObject|const QString &,QDBusConnection::UnregisterMode=QDBusConnection::UnregisterNode

/*
QObject *objectRegisteredAt(const QString &path) const
*/
$method=|QObject *|objectRegisteredAt|const QString &

/*
bool registerVirtualObject(const QString &path, QDBusVirtualObject *object,VirtualObjectRegisterOption options = SingleNode)
*/
$method=|bool|registerVirtualObject|const QString &,QDBusVirtualObject *,VirtualObjectRegisterOption=SingleNode

/*
bool registerService(const QString &serviceName)
*/
$method=|bool|registerService|const QString &

/*
bool unregisterService(const QString &serviceName)
*/
$method=|bool|unregisterService|const QString &

/*
QDBusConnectionInterface *interface() const
*/
$method=|QDBusConnectionInterface *|interface|

/*
void *internalPointer() const
*/
$method=|void *|internalPointer|

/*
static QDBusConnection connectToBus(BusType type, const QString &name)
*/
$staticInternalMethod=|QDBusConnection|connectToBus,connectToBus1|QDBusConnection::BusType,const QString &

/*
static QDBusConnection connectToBus(const QString &address, const QString &name)
*/
$staticInternalMethod=|QDBusConnection|connectToBus,connectToBus2|const QString &,const QString &

//[1]static QDBusConnection connectToBus(BusType type, const QString &name)
//[2]static QDBusConnection connectToBus(const QString &address, const QString &name)

HB_FUNC_STATIC( QDBUSCONNECTION_CONNECTTOBUS )
{
  // TODO: implementar
}

/*
static QDBusConnection connectToPeer(const QString &address, const QString &name)
*/
$staticMethod=|QDBusConnection|connectToPeer|const QString &,const QString &

/*
static void disconnectFromBus(const QString &name)
*/
$staticMethod=|void|disconnectFromBus|const QString &

/*
static void disconnectFromPeer(const QString &name)
*/
$staticMethod=|void|disconnectFromPeer|const QString &

/*
static QByteArray localMachineId()
*/
$staticMethod=|QByteArray|localMachineId|

/*
static QDBusConnection sessionBus()
*/
$staticMethod=|QDBusConnection|sessionBus|

/*
static QDBusConnection systemBus()
*/
$staticMethod=|QDBusConnection|systemBus|

/*
static QDBusConnection sender()
*/
$staticMethod=|QDBusConnection|sender|

$extraMethods

#pragma ENDDUMP
