.class final Lcom/umeng/socialize/bean/UMShareMsg$1;
.super Ljava/lang/Object;
.source "UMShareMsg.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/bean/UMShareMsg;
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
        "Lcom/umeng/socialize/bean/UMShareMsg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/umeng/socialize/bean/UMShareMsg;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/umeng/socialize/bean/UMShareMsg;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>(Landroid/os/Parcel;Lcom/umeng/socialize/bean/UMShareMsg$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/umeng/socialize/bean/UMShareMsg;
    .locals 1

    .prologue
    .line 46
    new-array v0, p1, [Lcom/umeng/socialize/bean/UMShareMsg;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/UMShareMsg$1;->a(Landroid/os/Parcel;)Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/UMShareMsg$1;->a(I)[Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    return-object v0
.end method
