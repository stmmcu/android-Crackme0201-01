.class Lcom/lzx/iteam/EditCloudActivity$8;
.super Ljava/lang/Object;
.source "EditCloudActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EditCloudActivity;->showSetPhotoPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EditCloudActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EditCloudActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EditCloudActivity$8;->this$0:Lcom/lzx/iteam/EditCloudActivity;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/lzx/iteam/EditCloudActivity$8;->this$0:Lcom/lzx/iteam/EditCloudActivity;

    # getter for: Lcom/lzx/iteam/EditCloudActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/EditCloudActivity;->access$3(Lcom/lzx/iteam/EditCloudActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 507
    return-void
.end method
