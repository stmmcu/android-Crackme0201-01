.class public final Lcn/jpush/a/a/av;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/au;",
        "Lcn/jpush/a/a/av;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    return-void
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/av;
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
    iget v0, p0, Lcn/jpush/a/a/av;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/av;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/av;->b:J

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcn/jpush/a/a/av;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/av;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/a/a/av;->c:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic e()Lcn/jpush/a/a/av;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/av;

    invoke-direct {v0}, Lcn/jpush/a/a/av;-><init>()V

    return-object v0
.end method

.method private f()Lcn/jpush/a/a/av;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/av;

    invoke-direct {v0}, Lcn/jpush/a/a/av;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/av;->b()Lcn/jpush/a/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/av;->a(Lcn/jpush/a/a/au;)Lcn/jpush/a/a/av;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/au;
    .locals 2

    invoke-virtual {p0}, Lcn/jpush/a/a/av;->b()Lcn/jpush/a/a/au;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/au;->g()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/protobuf/jpush/m;

    invoke-direct {v0}, Lcom/google/protobuf/jpush/m;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(J)Lcn/jpush/a/a/av;
    .locals 1

    iget v0, p0, Lcn/jpush/a/a/av;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/av;->a:I

    iput-wide p1, p0, Lcn/jpush/a/a/av;->b:J

    return-object p0
.end method

.method public final a(Lcn/jpush/a/a/au;)Lcn/jpush/a/a/av;
    .locals 3

    invoke-static {}, Lcn/jpush/a/a/au;->a()Lcn/jpush/a/a/au;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcn/jpush/a/a/au;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/jpush/a/a/au;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/jpush/a/a/av;->a(J)Lcn/jpush/a/a/av;

    :cond_2
    invoke-virtual {p1}, Lcn/jpush/a/a/au;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/jpush/a/a/au;->f()J

    move-result-wide v0

    iget v2, p0, Lcn/jpush/a/a/av;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/jpush/a/a/av;->a:I

    iput-wide v0, p0, Lcn/jpush/a/a/av;->c:J

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/av;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcn/jpush/a/a/au;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/au;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/au;-><init>(Lcn/jpush/a/a/av;B)V

    iget v3, p0, Lcn/jpush/a/a/av;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    :goto_0
    iget-wide v4, p0, Lcn/jpush/a/a/av;->b:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/au;->a(Lcn/jpush/a/a/au;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcn/jpush/a/a/av;->c:J

    invoke-static {v2, v4, v5}, Lcn/jpush/a/a/au;->b(Lcn/jpush/a/a/au;J)J

    invoke-static {v2, v0}, Lcn/jpush/a/a/au;->a(Lcn/jpush/a/a/au;I)I

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/av;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/av;->f()Lcn/jpush/a/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/av;->f()Lcn/jpush/a/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/av;->f()Lcn/jpush/a/a/av;

    move-result-object v0

    return-object v0
.end method
