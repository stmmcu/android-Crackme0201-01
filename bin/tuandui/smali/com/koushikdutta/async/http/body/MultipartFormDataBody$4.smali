.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;
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

.field private final synthetic val$part:Lcom/koushikdutta/async/http/body/Part;

.field private final synthetic val$sink:Lcom/koushikdutta/async/DataSink;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->val$part:Lcom/koushikdutta/async/http/body/Part;

    iput-object p3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->val$sink:Lcom/koushikdutta/async/DataSink;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 6
    .param p1, "continuation"    # Lcom/koushikdutta/async/future/Continuation;
    .param p2, "next"    # Lcom/koushikdutta/async/callback/CompletedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->val$part:Lcom/koushikdutta/async/http/body/Part;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->length()J

    move-result-wide v0

    .line 159
    .local v0, "partLength":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget v3, v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->written:I

    int-to-long v4, v3

    add-long/2addr v4, v0

    long-to-int v3, v4

    iput v3, v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->written:I

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->val$part:Lcom/koushikdutta/async/http/body/Part;

    iget-object v3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-virtual {v2, v3, p2}, Lcom/koushikdutta/async/http/body/Part;->write(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 162
    return-void
.end method
