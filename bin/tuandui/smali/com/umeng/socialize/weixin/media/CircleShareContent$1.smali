.class final Lcom/umeng/socialize/weixin/media/CircleShareContent$1;
.super Ljava/lang/Object;
.source "CircleShareContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/weixin/media/CircleShareContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/umeng/socialize/weixin/media/CircleShareContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/umeng/socialize/weixin/media/CircleShareContent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 82
    new-instance v0, Lcom/umeng/socialize/weixin/media/CircleShareContent;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/weixin/media/CircleShareContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/weixin/media/CircleShareContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/umeng/socialize/weixin/media/CircleShareContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/umeng/socialize/weixin/media/CircleShareContent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 87
    new-array v0, p1, [Lcom/umeng/socialize/weixin/media/CircleShareContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/weixin/media/CircleShareContent$1;->newArray(I)[Lcom/umeng/socialize/weixin/media/CircleShareContent;

    move-result-object v0

    return-object v0
.end method
