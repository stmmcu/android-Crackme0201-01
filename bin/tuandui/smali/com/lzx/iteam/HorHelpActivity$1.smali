.class Lcom/lzx/iteam/HorHelpActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "HorHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/HorHelpActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/HorHelpActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/HorHelpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/HorHelpActivity$1;->this$0:Lcom/lzx/iteam/HorHelpActivity;

    .line 47
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 52
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/HorHelpActivity$1;->this$0:Lcom/lzx/iteam/HorHelpActivity;

    # getter for: Lcom/lzx/iteam/HorHelpActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/HorHelpActivity;->access$0(Lcom/lzx/iteam/HorHelpActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 55
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 56
    return-void
.end method
