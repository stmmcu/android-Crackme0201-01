.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->parsed([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/PushParser$ParseCallback",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->this$2:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parsed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->parsed([B)V

    return-void
.end method

.method public parsed([B)V
    .locals 3
    .param p1, "buf"    # [B

    .prologue
    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->this$2:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    # getter for: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;
    invoke-static {v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->access$1(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;)Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    move-result-object v0

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->this$2:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    # getter for: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;
    invoke-static {v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->access$1(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;)Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    move-result-object v0

    # getter for: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
    invoke-static {v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->access$2(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    move-result-object v0

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;->this$2:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    # getter for: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;
    invoke-static {v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->access$1(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;)Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    move-result-object v0

    # invokes: Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->next()V
    invoke-static {v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->access$1(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    .line 71
    return-void
.end method
