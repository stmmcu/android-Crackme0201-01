.class public final Lcn/jpush/a/a/h;
.super Lcom/google/protobuf/jpush/h;


# static fields
.field private static final a:Lcn/jpush/a/a/h;


# instance fields
.field private b:I

.field private c:J

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcn/jpush/a/a/h;

    invoke-direct {v0}, Lcn/jpush/a/a/h;-><init>()V

    sput-object v0, Lcn/jpush/a/a/h;->a:Lcn/jpush/a/a/h;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcn/jpush/a/a/h;->c:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/jpush/h;-><init>()V

    iput-byte v0, p0, Lcn/jpush/a/a/h;->d:B

    iput v0, p0, Lcn/jpush/a/a/h;->e:I

    return-void
.end method

.method private constructor <init>(Lcn/jpush/a/a/i;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/jpush/h;-><init>(B)V

    iput-byte v1, p0, Lcn/jpush/a/a/h;->d:B

    iput v1, p0, Lcn/jpush/a/a/h;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/jpush/a/a/i;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/a/a/h;-><init>(Lcn/jpush/a/a/i;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/a/a/h;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/a/a/h;->b:I

    return p1
.end method

.method static synthetic a(Lcn/jpush/a/a/h;J)J
    .locals 1

    iput-wide p1, p0, Lcn/jpush/a/a/h;->c:J

    return-wide p1
.end method

.method public static a()Lcn/jpush/a/a/h;
    .locals 1

    sget-object v0, Lcn/jpush/a/a/h;->a:Lcn/jpush/a/a/h;

    return-object v0
.end method

.method public static a(Lcn/jpush/a/a/h;)Lcn/jpush/a/a/i;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/i;->e()Lcn/jpush/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/a/a/i;->a(Lcn/jpush/a/a/h;)Lcn/jpush/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lcn/jpush/a/a/i;
    .locals 1

    invoke-static {}, Lcn/jpush/a/a/i;->e()Lcn/jpush/a/a/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/jpush/e;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/jpush/a/a/h;->c()I

    iget v0, p0, Lcn/jpush/a/a/h;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcn/jpush/a/a/h;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/jpush/e;->a(IJ)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/a/a/h;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcn/jpush/a/a/h;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcn/jpush/a/a/h;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-wide v0, p0, Lcn/jpush/a/a/h;->c:J

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/jpush/e;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iput v0, p0, Lcn/jpush/a/a/h;->e:I

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/a/a/h;->c:J

    return-wide v0
.end method

.method public final e()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcn/jpush/a/a/h;->d:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcn/jpush/a/a/h;->d:B

    goto :goto_0
.end method