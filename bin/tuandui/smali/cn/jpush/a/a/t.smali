.class public final Lcn/jpush/a/a/t;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/s;",
        "Lcn/jpush/a/a/t;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    return-void
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/t;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/jpush/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget v0, p0, Lcn/jpush/a/a/t;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/t;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/t;->b:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic e()Lcn/jpush/a/a/t;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/t;

    invoke-direct {v0}, Lcn/jpush/a/a/t;-><init>()V

    return-object v0
.end method

.method private f()Lcn/jpush/a/a/t;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/t;

    invoke-direct {v0}, Lcn/jpush/a/a/t;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/t;->b()Lcn/jpush/a/a/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/t;->a(Lcn/jpush/a/a/s;)Lcn/jpush/a/a/t;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/s;
    .locals 2

    invoke-virtual {p0}, Lcn/jpush/a/a/t;->b()Lcn/jpush/a/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/s;->e()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/m;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/m;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(J)Lcn/jpush/a/a/t;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/t;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/t;->a:I

    iput-wide p1, p0, Lcn/jpush/a/a/t;->b:J

    return-object p0
.end method

.method public final a(Lcn/jpush/a/a/s;)Lcn/jpush/a/a/t;
    .locals 2

    invoke-static {}, Lcn/jpush/a/a/s;->a()Lcn/jpush/a/a/s;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcn/jpush/a/a/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/jpush/a/a/s;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/jpush/a/a/t;->a(J)Lcn/jpush/a/a/t;

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/t;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcn/jpush/a/a/s;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/s;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/s;-><init>(Lcn/jpush/a/a/t;B)V

    iget v3, p0, Lcn/jpush/a/a/t;->a:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    :goto_0
    iget-wide v4, p0, Lcn/jpush/a/a/t;->b:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/s;->a(Lcn/jpush/a/a/s;J)J

    invoke-static {v2, v0}, Lcn/jpush/a/a/s;->a(Lcn/jpush/a/a/s;I)I

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/t;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/t;->f()Lcn/jpush/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/t;->f()Lcn/jpush/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/t;->f()Lcn/jpush/a/a/t;

    move-result-object v0

    return-object v0
.end method