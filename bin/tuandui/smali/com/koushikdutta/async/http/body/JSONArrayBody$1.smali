.class Lcom/koushikdutta/async/http/body/JSONArrayBody$1;
.super Ljava/lang/Object;
.source "JSONArrayBody.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/JSONArrayBody;->parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
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
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/body/JSONArrayBody;

.field private final synthetic val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/JSONArrayBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/JSONArrayBody$1;->this$0:Lcom/koushikdutta/async/http/body/JSONArrayBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/JSONArrayBody$1;->val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/body/JSONArrayBody$1;->onCompleted(Ljava/lang/Exception;Lorg/json/JSONArray;)V

    return-void
.end method

.method public onCompleted(Ljava/lang/Exception;Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "result"    # Lorg/json/JSONArray;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/JSONArrayBody$1;->this$0:Lcom/koushikdutta/async/http/body/JSONArrayBody;

    iput-object p2, v0, Lcom/koushikdutta/async/http/body/JSONArrayBody;->json:Lorg/json/JSONArray;

    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/JSONArrayBody$1;->val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 31
    return-void
.end method
