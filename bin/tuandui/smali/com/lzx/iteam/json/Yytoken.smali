.class public Lcom/lzx/iteam/json/Yytoken;
.super Ljava/lang/Object;
.source "Yytoken.java"


# static fields
.field public static final TYPE_COLON:I = 0x6

.field public static final TYPE_COMMA:I = 0x5

.field public static final TYPE_EOF:I = -0x1

.field public static final TYPE_LEFT_BRACE:I = 0x1

.field public static final TYPE_LEFT_SQUARE:I = 0x3

.field public static final TYPE_RIGHT_BRACE:I = 0x2

.field public static final TYPE_RIGHT_SQUARE:I = 0x4

.field public static final TYPE_VALUE:I


# instance fields
.field public type:I

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/json/Yytoken;->type:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    .line 22
    iput p1, p0, Lcom/lzx/iteam/json/Yytoken;->type:I

    .line 23
    iput-object p2, p0, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/lzx/iteam/json/Yytoken;->type:I

    packed-switch v1, :pswitch_data_0

    .line 54
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 30
    :pswitch_0
    const-string v1, "VALUE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/json/Yytoken;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 33
    :pswitch_1
    const-string v1, "LEFT BRACE({)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 36
    :pswitch_2
    const-string v1, "RIGHT BRACE(})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 39
    :pswitch_3
    const-string v1, "LEFT SQUARE([)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 42
    :pswitch_4
    const-string v1, "RIGHT SQUARE(])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 45
    :pswitch_5
    const-string v1, "COMMA(,)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 48
    :pswitch_6
    const-string v1, "COLON(:)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 51
    :pswitch_7
    const-string v1, "END OF FILE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method