.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

.field private final synthetic val$sink:Lcom/koushikdutta/async/DataSink;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->val$sink:Lcom/koushikdutta/async/DataSink;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 4
    .param p1, "continuation"    # Lcom/koushikdutta/async/future/Continuation;
    .param p2, "next"    # Lcom/koushikdutta/async/callback/CompletedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 168
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-static {v1, v0, p2}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 169
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget v2, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->written:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->written:I

    .line 170
    return-void
.end method
