.class Lcom/lzx/iteam/bean/aidl/ActiveDetailBean$1;
.super Ljava/lang/Object;
.source "ActiveDetailBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 14
    new-instance v0, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;

    invoke-direct {v0, p1}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 19
    new-array v0, p1, [Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean$1;->newArray(I)[Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;

    move-result-object v0

    return-object v0
.end method
