.class final enum Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod$2;
.super Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;
.source "SocializeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;-><init>(Ljava/lang/String;ILcom/umeng/socialize/net/base/SocializeRequest$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    # getter for: Lcom/umeng/socialize/net/base/SocializeRequest;->POST:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/net/base/SocializeRequest;->access$200()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
