.class Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;
.super Ljava/lang/Object;
.source "AsyncHttpResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setSocket(Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 61
    return-void
.end method