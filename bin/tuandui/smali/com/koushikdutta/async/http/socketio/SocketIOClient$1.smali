.class Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;
.super Ljava/lang/Object;
.source "SocketIOClient.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connect(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/socketio/SocketIORequest;Lcom/koushikdutta/async/http/socketio/ConnectCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

.field private final synthetic val$connection:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

.field private final synthetic val$request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

.field private final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIORequest;Lcom/koushikdutta/async/http/socketio/ConnectCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$callback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p4, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$connection:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "client"    # Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .prologue
    .line 80
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$callback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$callback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/http/socketio/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 99
    :goto_0
    return-void

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$connection:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1$1;

    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$callback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    iget-object v3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v1, p0, v2, v3}, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1$1;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;Lcom/koushikdutta/async/http/socketio/ConnectCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-virtual {p2, v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->of(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/ConnectCallback;)V

    goto :goto_0
.end method