.class public Lcn/jpush/b/a/b/c;
.super Lcn/jpush/b/a/b/q;


# instance fields
.field a:J
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected final a(JLjava/lang/String;)Lcn/jpush/b/a/b/p;
    .locals 9

    invoke-static {}, Lcn/jpush/a/a/m;->h()Lcn/jpush/a/a/n;

    move-result-object v0

    iget-wide v2, p0, Lcn/jpush/b/a/b/c;->a:J

    invoke-virtual {v0, v2, v3}, Lcn/jpush/a/a/n;->a(J)Lcn/jpush/a/a/n;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/b/a/b/c;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/n;->a(Ljava/lang/Iterable;)Lcn/jpush/a/a/n;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/b/a/b/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/n;->a(I)Lcn/jpush/a/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/n;->a()Lcn/jpush/a/a/m;

    move-result-object v7

    new-instance v1, Lcn/jpush/b/a/b/p;

    const/16 v2, 0xa

    const/4 v3, 0x1

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/jpush/b/a/b/p;-><init>(IIJLjava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
