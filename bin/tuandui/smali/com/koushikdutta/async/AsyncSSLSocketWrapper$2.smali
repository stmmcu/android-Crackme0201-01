.class Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;-><init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteable()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;->this$0:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    .line 226
    :cond_0
    return-void
.end method
