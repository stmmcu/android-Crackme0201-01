.class Lcom/koushikdutta/async/AsyncServer$7;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field private final synthetic val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field private final synthetic val$remote:Ljava/net/InetSocketAddress;

.field private final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/net/InetSocketAddress;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$7;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$remote:Ljava/net/InetSocketAddress;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer$7;->onCompleted(Ljava/lang/Exception;Ljava/net/InetAddress;)V

    return-void
.end method

.method public onCompleted(Ljava/lang/Exception;Ljava/net/InetAddress;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "result"    # Ljava/net/InetAddress;

    .prologue
    .line 379
    if-eqz p1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 381
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$7;->this$0:Lcom/koushikdutta/async/AsyncServer;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$7;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    # invokes: Lcom/koushikdutta/async/AsyncServer;->connectResolvedInetSocketAddress(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
    invoke-static {v1, v2, v3}, Lcom/koushikdutta/async/AsyncServer;->access$2(Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncServer$ConnectFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/SimpleFuture;

    goto :goto_0
.end method
