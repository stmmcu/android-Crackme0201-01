.class public Lorg/xbill/DNS/EDNSOption$Code;
.super Ljava/lang/Object;
.source "EDNSOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/EDNSOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Code"
.end annotation


# static fields
.field public static final CLIENT_SUBNET:I = 0x8

.field public static final NSID:I = 0x3

.field private static codes:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "EDNS Option Codes"

    .line 26
    const/4 v2, 0x2

    .line 25
    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    .line 29
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 30
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "CODE"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 33
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x3

    const-string v2, "NSID"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 34
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0x8

    const-string v2, "CLIENT_SUBNET"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 42
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lorg/xbill/DNS/EDNSOption$Code;->codes:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
