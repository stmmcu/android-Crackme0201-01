.class public final Lcn/jpush/a/a/ag;
.super Lcom/google/protobuf/jpush/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/jpush/i",
        "<",
        "Lcn/jpush/a/a/af;",
        "Lcn/jpush/a/a/ag;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/google/protobuf/jpush/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/i;-><init>()V

    sget-object v0, Lcom/google/protobuf/jpush/c;->a:Lcom/google/protobuf/jpush/c;

    iput-object v0, p0, Lcn/jpush/a/a/ag;->c:Lcom/google/protobuf/jpush/c;

    return-void
.end method

.method static synthetic b()Lcn/jpush/a/a/ag;
    .locals 1

    new-instance v0, Lcn/jpush/a/a/ag;

    invoke-direct {v0}, Lcn/jpush/a/a/ag;-><init>()V

    return-object v0
.end method

.method private c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ag;
    .locals 1

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
    iget v0, p0, Lcn/jpush/a/a/ag;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/a/a/ag;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->c()I

    move-result v0

    iput v0, p0, Lcn/jpush/a/a/ag;->b:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcn/jpush/a/a/ag;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jpush/a/a/ag;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/jpush/d;->d()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/a/ag;->c:Lcom/google/protobuf/jpush/c;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method private e()Lcn/jpush/a/a/ag;
    .locals 2

    new-instance v0, Lcn/jpush/a/a/ag;

    invoke-direct {v0}, Lcn/jpush/a/a/ag;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/a/a/ag;->a()Lcn/jpush/a/a/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/ag;->a(Lcn/jpush/a/a/af;)Lcn/jpush/a/a/ag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcn/jpush/a/a/af;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/jpush/a/a/af;

    invoke-direct {v2, p0, v1}, Lcn/jpush/a/a/af;-><init>(Lcn/jpush/a/a/ag;B)V

    iget v3, p0, Lcn/jpush/a/a/ag;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    :goto_0
    iget v1, p0, Lcn/jpush/a/a/ag;->b:I

    invoke-static {v2, v1}, Lcn/jpush/a/a/af;->a(Lcn/jpush/a/a/af;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcn/jpush/a/a/ag;->c:Lcom/google/protobuf/jpush/c;

    invoke-static {v2, v1}, Lcn/jpush/a/a/af;->a(Lcn/jpush/a/a/af;Lcom/google/protobuf/jpush/c;)Lcom/google/protobuf/jpush/c;

    invoke-static {v2, v0}, Lcn/jpush/a/a/af;->b(Lcn/jpush/a/a/af;I)I

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcn/jpush/a/a/af;)Lcn/jpush/a/a/ag;
    .locals 2

    invoke-static {}, Lcn/jpush/a/a/af;->a()Lcn/jpush/a/a/af;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcn/jpush/a/a/af;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/jpush/a/a/af;->d()I

    move-result v0

    iget v1, p0, Lcn/jpush/a/a/ag;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/jpush/a/a/ag;->a:I

    iput v0, p0, Lcn/jpush/a/a/ag;->b:I

    :cond_2
    invoke-virtual {p1}, Lcn/jpush/a/a/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/jpush/a/a/af;->f()Lcom/google/protobuf/jpush/c;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcn/jpush/a/a/ag;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/jpush/a/a/ag;->a:I

    iput-object v0, p0, Lcn/jpush/a/a/ag;->c:Lcom/google/protobuf/jpush/c;

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/ag;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcom/google/protobuf/jpush/l;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/jpush/a/a/ag;->c(Lcom/google/protobuf/jpush/d;Lcom/google/protobuf/jpush/g;)Lcn/jpush/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/jpush/i;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ag;->e()Lcn/jpush/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ag;->e()Lcn/jpush/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/protobuf/jpush/b;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/a/a/ag;->e()Lcn/jpush/a/a/ag;

    move-result-object v0

    return-object v0
.end method
