.class public interface abstract Lcom/koushikdutta/async/http/AsyncHttpResponse;
.super Ljava/lang/Object;
.source "AsyncHttpResponse.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# virtual methods
.method public abstract detachSocket()Lcom/koushikdutta/async/AsyncSocket;
.end method

.method public abstract end()V
.end method

.method public abstract getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
.end method

.method public abstract getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;
.end method

.method public abstract getRequest()Lcom/koushikdutta/async/http/AsyncHttpRequest;
.end method

.method public abstract setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end method
