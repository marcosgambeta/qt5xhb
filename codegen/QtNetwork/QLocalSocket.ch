%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QLocalSocket::LocalSocketError
*/
#define QLocalSocket_ConnectionRefusedError                          QAbstractSocket_ConnectionRefusedError
#define QLocalSocket_PeerClosedError                                 QAbstractSocket_RemoteHostClosedError
#define QLocalSocket_ServerNotFoundError                             QAbstractSocket_HostNotFoundError
#define QLocalSocket_SocketAccessError                               QAbstractSocket_SocketAccessError
#define QLocalSocket_SocketResourceError                             QAbstractSocket_SocketResourceError
#define QLocalSocket_SocketTimeoutError                              QAbstractSocket_SocketTimeoutError
#define QLocalSocket_DatagramTooLargeError                           QAbstractSocket_DatagramTooLargeError
#define QLocalSocket_ConnectionError                                 QAbstractSocket_NetworkError
#define QLocalSocket_UnsupportedSocketOperationError                 QAbstractSocket_UnsupportedSocketOperationError
#define QLocalSocket_UnknownSocketError                              QAbstractSocket_UnknownSocketError
#define QLocalSocket_OperationError                                  QAbstractSocket_OperationError

/*
enum QLocalSocket::LocalSocketState
*/
#define QLocalSocket_UnconnectedState                                QAbstractSocket_UnconnectedState
#define QLocalSocket_ConnectingState                                 QAbstractSocket_ConnectingState
#define QLocalSocket_ConnectedState                                  QAbstractSocket_ConnectedState
#define QLocalSocket_ClosingState                                    QAbstractSocket_ClosingState
