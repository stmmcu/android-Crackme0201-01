.class public Lorg/xbill/DNS/DNSSEC$NoSignatureException;
.super Lorg/xbill/DNS/DNSSEC$DNSSECException;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoSignatureException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 322
    const-string v0, "no signature found"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    .line 323
    return-void
.end method
