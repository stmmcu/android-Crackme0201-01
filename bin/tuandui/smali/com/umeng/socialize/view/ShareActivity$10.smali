.class Lcom/umeng/socialize/view/ShareActivity$10;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/ShareActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->b(Lcom/umeng/socialize/view/ShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->c(Lcom/umeng/socialize/view/ShareActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->d(Lcom/umeng/socialize/view/ShareActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/ShareActivity;->c(Lcom/umeng/socialize/view/ShareActivity;)Landroid/view/View;

    move-result-object v1

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/view/ShareActivity;->a(Lcom/umeng/socialize/view/ShareActivity;Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/ShareActivity;->c(Lcom/umeng/socialize/view/ShareActivity;)Landroid/view/View;

    move-result-object v1

    const-string v2, "onShow"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/view/ShareActivity;->a(Lcom/umeng/socialize/view/ShareActivity;Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->c(Lcom/umeng/socialize/view/ShareActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->e(Lcom/umeng/socialize/view/ShareActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->e(Lcom/umeng/socialize/view/ShareActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/ShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 276
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/ShareActivity;->f(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 277
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$10;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->e(Lcom/umeng/socialize/view/ShareActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method
