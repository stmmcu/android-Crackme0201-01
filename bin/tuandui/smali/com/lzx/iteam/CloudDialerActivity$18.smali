.class Lcom/lzx/iteam/CloudDialerActivity$18;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->updateSelectTitleSkin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$18;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 4287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4290
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4291
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 4292
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$18;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget-object v0, v0, Lcom/lzx/iteam/bean/SkinCommonData;->left:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4303
    :cond_0
    :goto_0
    return v2

    .line 4293
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 4294
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$18;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget-object v0, v0, Lcom/lzx/iteam/bean/SkinCommonData;->left:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4297
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 4298
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$18;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget-object v0, v0, Lcom/lzx/iteam/bean/SkinCommonData;->left:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4299
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 4300
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$18;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget-object v0, v0, Lcom/lzx/iteam/bean/SkinCommonData;->left:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method