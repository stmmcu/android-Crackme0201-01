.class Lcom/koushikdutta/async/PushParser$7;
.super Ljava/lang/Object;
.source "PushParser.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/PushParser$ParseCallback",
        "<",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/PushParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/PushParser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser$7;->this$0:Lcom/koushikdutta/async/PushParser;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parsed(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1
    .param p1, "data"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser$7;->this$0:Lcom/koushikdutta/async/PushParser;

    # getter for: Lcom/koushikdutta/async/PushParser;->args:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/koushikdutta/async/PushParser;->access$0(Lcom/koushikdutta/async/PushParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public bridge synthetic parsed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/PushParser$7;->parsed(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method