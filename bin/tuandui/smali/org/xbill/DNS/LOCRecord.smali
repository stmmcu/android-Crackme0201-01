.class public Lorg/xbill/DNS/LOCRecord;
.super Lorg/xbill/DNS/Record;
.source "LOCRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x7db54773c7eed6c9L

.field private static w2:Ljava/text/NumberFormat;

.field private static w3:Ljava/text/NumberFormat;


# instance fields
.field private altitude:J

.field private hPrecision:J

.field private latitude:J

.field private longitude:J

.field private size:J

.field private vPrecision:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    .line 25
    sget-object v0, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 27
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    .line 28
    sget-object v0, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJDDDDDD)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "altitude"    # D
    .param p11, "size"    # D
    .param p13, "hPrecision"    # D
    .param p15, "vPrecision"    # D

    .prologue
    .line 51
    const/16 v2, 0x1d

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 52
    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, p5

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41e0000000000000L    # 2.147483648E9

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 53
    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, p7

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41e0000000000000L    # 2.147483648E9

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 54
    const-wide v0, 0x40f86a0000000000L    # 100000.0

    add-double v0, v0, p9

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 55
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v0, v0, p11

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 56
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v0, v0, p13

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 57
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v0, v0, p15

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 58
    return-void
.end method

.method private parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J
    .locals 8
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "min"    # J
    .param p6, "max"    # J
    .param p8, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 140
    .local v1, "token":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    if-eqz p3, :cond_0

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid LOC "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v4

    throw v4

    .line 143
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 153
    .end local p8    # "defaultValue":J
    :goto_0
    return-wide p8

    .line 146
    .restart local p8    # "defaultValue":J
    :cond_1
    iget-object v0, v1, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 147
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x6d

    if-ne v4, v5, :cond_2

    .line 148
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_2
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/xbill/DNS/LOCRecord;->parseFixedPoint(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v2, v4

    .line 151
    .local v2, "value":J
    cmp-long v4, v2, p4

    if-ltz v4, :cond_3

    cmp-long v4, v2, p6

    if-lez v4, :cond_4

    .line 152
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid LOC "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v4

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2    # "value":J
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid LOC "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v4

    throw v4

    .restart local v2    # "value":J
    :cond_4
    move-wide/from16 p8, v2

    .line 153
    goto :goto_0
.end method

.method private parseFixedPoint(Ljava/lang/String;)D
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 79
    const-string v6, "^-?\\d+$"

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    .line 88
    :goto_0
    return-wide v6

    .line 81
    :cond_0
    const-string v6, "^-?\\d+\\.\\d*$"

    invoke-virtual {p1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "parts":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v4, v6

    .line 84
    .local v4, "value":D
    aget-object v6, v1, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v2, v6

    .line 85
    .local v2, "fraction":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1

    .line 86
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v6

    .line 87
    :cond_1
    aget-object v6, v1, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .line 88
    .local v0, "digits":I
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double v6, v2, v6

    add-double/2addr v6, v4

    goto :goto_0

    .line 90
    .end local v0    # "digits":I
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "fraction":D
    .end local v4    # "value":D
    :cond_2
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6}, Ljava/lang/NumberFormatException;-><init>()V

    throw v6
.end method

.method private static parseLOCformat(I)J
    .locals 6
    .param p0, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 295
    shr-int/lit8 v4, p0, 0x4

    int-to-long v2, v4

    .line 296
    .local v2, "out":J
    and-int/lit8 v0, p0, 0xf

    .line 297
    .local v0, "exp":I
    const-wide/16 v4, 0x9

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const/16 v4, 0x9

    if-le v0, v4, :cond_2

    .line 298
    :cond_0
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "Invalid LOC Encoding"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    :cond_1
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    move v1, v0

    .line 299
    .end local v0    # "exp":I
    .local v1, "exp":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "exp":I
    .restart local v0    # "exp":I
    if-gtz v1, :cond_1

    .line 301
    return-wide v2

    :cond_2
    move v1, v0

    .end local v0    # "exp":I
    .restart local v1    # "exp":I
    goto :goto_0
.end method

.method private parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J
    .locals 22
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v7, "latitude"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 96
    .local v4, "isLatitude":Z
    const/4 v3, 0x0

    .local v3, "deg":I
    const/4 v5, 0x0

    .line 97
    .local v5, "min":I
    const-wide/16 v8, 0x0

    .line 101
    .local v8, "sec":D
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v3

    .line 102
    const/16 v7, 0xb4

    if-gt v3, v7, :cond_0

    const/16 v7, 0x5a

    if-le v3, v7, :cond_1

    if-eqz v4, :cond_1

    .line 103
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Invalid LOC "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " degrees"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v7

    throw v7

    .line 105
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 108
    if-ltz v5, :cond_2

    const/16 v7, 0x3b

    if-le v5, v7, :cond_3

    .line 109
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Invalid LOC "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " minutes"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v7

    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    .line 118
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v12, 0x1

    if-eq v7, v12, :cond_6

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Invalid LOC "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v7

    throw v7

    .line 110
    :cond_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v6

    .line 111
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/xbill/DNS/LOCRecord;->parseFixedPoint(Ljava/lang/String;)D

    move-result-wide v8

    .line 112
    const-wide/16 v12, 0x0

    cmpg-double v7, v8, v12

    if-ltz v7, :cond_4

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    cmpl-double v7, v8, v12

    if-ltz v7, :cond_5

    .line 113
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Invalid LOC "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " seconds"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v7

    throw v7

    .line 114
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 121
    :cond_6
    const-wide v12, 0x408f400000000000L    # 1000.0

    const-wide/16 v14, 0x3c

    int-to-long v0, v5

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3c

    int-to-long v0, v3

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    mul-long v14, v14, v16

    long-to-double v14, v14

    add-double/2addr v14, v8

    mul-double/2addr v12, v14

    double-to-long v10, v12

    .line 123
    .local v10, "value":J
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 124
    .local v2, "c":C
    if-eqz v4, :cond_7

    const/16 v7, 0x53

    if-eq v2, v7, :cond_8

    :cond_7
    if-nez v4, :cond_a

    const/16 v7, 0x57

    if-ne v2, v7, :cond_a

    .line 125
    :cond_8
    neg-long v10, v10

    .line 129
    :cond_9
    const-wide v12, 0x80000000L

    add-long/2addr v10, v12

    .line 131
    return-wide v10

    .line 126
    :cond_a
    if-eqz v4, :cond_b

    const/16 v7, 0x4e

    if-ne v2, v7, :cond_c

    :cond_b
    if-nez v4, :cond_9

    const/16 v7, 0x45

    if-eq v2, v7, :cond_9

    .line 127
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Invalid LOC "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v7

    throw v7
.end method

.method private positionToString(JCC)Ljava/lang/String;
    .locals 9
    .param p1, "value"    # J
    .param p3, "pos"    # C
    .param p4, "neg"    # C

    .prologue
    .line 187
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-wide v6, 0x80000000L

    sub-long v4, p1, v6

    .line 191
    .local v4, "temp":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 192
    neg-long v4, v4

    .line 193
    move v0, p4

    .line 197
    .local v0, "direction":C
    :goto_0
    const-wide/32 v6, 0x36ee80

    div-long v6, v4, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 198
    const-wide/32 v6, 0x36ee80

    rem-long/2addr v4, v6

    .line 199
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const-wide/32 v6, 0xea60

    div-long v6, v4, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 202
    const-wide/32 v6, 0xea60

    rem-long/2addr v4, v6

    .line 203
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 206
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 195
    .end local v0    # "direction":C
    :cond_0
    move v0, p3

    .restart local v0    # "direction":C
    goto :goto_0
.end method

.method private renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "formatter"    # Ljava/text/NumberFormat;
    .param p3, "value"    # J
    .param p5, "divisor"    # J

    .prologue
    .line 177
    div-long v0, p3, p5

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 178
    rem-long/2addr p3, p5

    .line 179
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {p2, p3, p4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_0
    return-void
.end method

.method private toLOCformat(J)I
    .locals 7
    .param p1, "l"    # J

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "exp":B
    :goto_0
    const-wide/16 v2, 0x9

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 311
    const/4 v1, 0x4

    shl-long v2, p1, v1

    int-to-long v4, v0

    add-long/2addr v2, v4

    long-to-int v1, v2

    return v1

    .line 308
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 309
    const-wide/16 v2, 0xa

    div-long/2addr p1, v2

    goto :goto_0
.end method


# virtual methods
.method public getAltitude()D
    .locals 4

    .prologue
    .line 261
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-wide/32 v2, 0x989680

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getHPrecision()D
    .locals 4

    .prologue
    .line 273
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLatitude()D
    .locals 4

    .prologue
    .line 249
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const-wide v2, 0x80000000L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitude()D
    .locals 4

    .prologue
    .line 255
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const-wide v2, 0x80000000L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/xbill/DNS/LOCRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/LOCRecord;-><init>()V

    return-object v0
.end method

.method public getSize()D
    .locals 4

    .prologue
    .line 267
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getVPrecision()D
    .locals 4

    .prologue
    .line 279
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 10
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const-string v0, "latitude"

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/LOCRecord;->parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 163
    const-string v0, "longitude"

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/LOCRecord;->parsePosition(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 164
    const-string v2, "altitude"

    const/4 v3, 0x1

    .line 165
    const-wide/32 v4, -0x989680

    const-wide v6, 0xff67697fL

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 164
    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    .line 165
    const-wide/32 v2, 0x989680

    add-long/2addr v0, v2

    .line 164
    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 166
    const-string v2, "size"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x218711a00L

    const-wide/16 v8, 0x64

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 167
    const-string v2, "horizontal precision"

    const/4 v3, 0x0

    .line 168
    const-wide/16 v4, 0x0

    const-wide v6, 0x218711a00L

    const-wide/32 v8, 0xf4240

    move-object v0, p0

    move-object v1, p1

    .line 167
    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 169
    const-string v2, "vertical precision"

    const/4 v3, 0x0

    .line 170
    const-wide/16 v4, 0x0

    const-wide v6, 0x218711a00L

    const-wide/16 v8, 0x3e8

    move-object v0, p0

    move-object v1, p1

    .line 169
    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/LOCRecord;->parseDouble(Lorg/xbill/DNS/Tokenizer;Ljava/lang/String;ZJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 171
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 4
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 65
    .local v0, "version":I
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "Invalid LOC version"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 69
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 70
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 71
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 73
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 74
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x64

    .line 217
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const/16 v3, 0x4e

    const/16 v4, 0x53

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const/16 v3, 0x45

    const/16 v4, 0x57

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-wide/32 v4, 0x989680

    sub-long v4, v0, v4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 229
    const-string v0, "m "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 233
    const-string v0, "m "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 237
    const-string v0, "m "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 241
    const-string v0, "m"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 285
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 286
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 287
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 288
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 289
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 290
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 291
    return-void
.end method
