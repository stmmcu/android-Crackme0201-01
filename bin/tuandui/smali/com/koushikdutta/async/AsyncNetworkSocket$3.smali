.class Lcom/koushikdutta/async/AsyncNetworkSocket$3;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncNetworkSocket;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$3;->this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$3;->this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->pause()V

    .line 295
    return-void
.end method
