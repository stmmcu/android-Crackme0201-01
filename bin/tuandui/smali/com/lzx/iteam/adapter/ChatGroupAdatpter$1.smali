.class Lcom/lzx/iteam/adapter/ChatGroupAdatpter$1;
.super Ljava/lang/Object;
.source "ChatGroupAdatpter.java"

# interfaces
.implements Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

.field private final synthetic val$gifTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ChatGroupAdatpter;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$1;->this$0:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$1;->val$gifTextView:Landroid/widget/TextView;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$1;->val$gifTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    .line 222
    return-void
.end method