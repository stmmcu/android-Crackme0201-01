.class Lcom/loopj/android/http/AsyncHttpClient$4;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;

.field final synthetic val$mayInterruptIfRunning:Z

.field final synthetic val$requestList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/loopj/android/http/AsyncHttpClient;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$requestList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 732
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$requestList:Ljava/util/List;

    iget-boolean v2, p0, Lcom/loopj/android/http/AsyncHttpClient$4;->val$mayInterruptIfRunning:Z

    # invokes: Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Ljava/util/List;Z)V
    invoke-static {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->access$100(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/List;Z)V

    .line 733
    return-void
.end method
