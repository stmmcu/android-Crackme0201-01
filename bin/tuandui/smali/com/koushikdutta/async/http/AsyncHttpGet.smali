.class public Lcom/koushikdutta/async/http/AsyncHttpGet;
.super Lcom/koushikdutta/async/http/AsyncHttpRequest;
.source "AsyncHttpGet.java"


# static fields
.field public static final METHOD:Ljava/lang/String; = "GET"


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 13
    const-string v0, "GET"

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "GET"

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 10
    return-void
.end method
