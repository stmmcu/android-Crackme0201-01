.class public Lu/aly/bn;
.super Ljava/lang/Object;
.source "UALogEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bn$c;,
        Lu/aly/bn$d;,
        Lu/aly/bn$a;,
        Lu/aly/bn$b;,
        Lu/aly/bn$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch",
        "<",
        "Lu/aly/bn;",
        "Lu/aly/bn$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bn$e;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lu/aly/dl;

.field private static final n:Lu/aly/db;

.field private static final o:Lu/aly/db;

.field private static final p:Lu/aly/db;

.field private static final q:Lu/aly/db;

.field private static final r:Lu/aly/db;

.field private static final s:Lu/aly/db;

.field private static final t:Lu/aly/db;

.field private static final u:Lu/aly/db;

.field private static final v:Lu/aly/db;

.field private static final w:Lu/aly/db;

.field private static final x:Lu/aly/db;

.field private static final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lu/aly/do;",
            ">;",
            "Lu/aly/dp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lu/aly/ap;

.field public b:Lu/aly/ao;

.field public c:Lu/aly/ar;

.field public d:Lu/aly/bf;

.field public e:Lu/aly/am;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/bc;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/bl;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lu/aly/ba;

.field public i:Lu/aly/az;

.field public j:Lu/aly/an;

.field public k:Lu/aly/aq;

.field private z:[Lu/aly/bn$e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0xf

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/16 v7, 0xc

    .line 32
    new-instance v0, Lu/aly/dl;

    const-string v1, "UALogEntry"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bn;->m:Lu/aly/dl;

    .line 34
    new-instance v0, Lu/aly/db;

    const-string v1, "client_stats"

    invoke-direct {v0, v1, v7, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->n:Lu/aly/db;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "app_info"

    invoke-direct {v0, v1, v7, v8}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->o:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "device_info"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->p:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "misc_info"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->q:Lu/aly/db;

    .line 38
    new-instance v0, Lu/aly/db;

    const-string v1, "activate_msg"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->r:Lu/aly/db;

    .line 39
    new-instance v0, Lu/aly/db;

    const-string v1, "instant_msgs"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->s:Lu/aly/db;

    .line 40
    new-instance v0, Lu/aly/db;

    const-string v1, "sessions"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v9, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->t:Lu/aly/db;

    .line 41
    new-instance v0, Lu/aly/db;

    const-string v1, "imprint"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->u:Lu/aly/db;

    .line 42
    new-instance v0, Lu/aly/db;

    const-string v1, "id_tracking"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->v:Lu/aly/db;

    .line 43
    new-instance v0, Lu/aly/db;

    const-string v1, "active_user"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->w:Lu/aly/db;

    .line 44
    new-instance v0, Lu/aly/db;

    const-string v1, "control_policy"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v7, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->x:Lu/aly/db;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bn;->y:Ljava/util/Map;

    .line 48
    sget-object v0, Lu/aly/bn;->y:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v2, Lu/aly/bn$b;

    invoke-direct {v2, v3}, Lu/aly/bn$b;-><init>(Lu/aly/bn$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lu/aly/bn;->y:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v2, Lu/aly/bn$d;

    invoke-direct {v2, v3}, Lu/aly/bn$d;-><init>(Lu/aly/bn$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bn$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 157
    sget-object v1, Lu/aly/bn$e;->a:Lu/aly/bn$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "client_stats"

    new-instance v4, Lu/aly/cy;

    const-class v5, Lu/aly/ap;

    invoke-direct {v4, v7, v5}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lu/aly/bn$e;->b:Lu/aly/bn$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "app_info"

    new-instance v4, Lu/aly/cy;

    const-class v5, Lu/aly/ao;

    invoke-direct {v4, v7, v5}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lu/aly/bn$e;->c:Lu/aly/bn$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "device_info"

    new-instance v4, Lu/aly/cy;

    const-class v5, Lu/aly/ar;

    invoke-direct {v4, v7, v5}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lu/aly/bn$e;->d:Lu/aly/bn$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "misc_info"

    new-instance v4, Lu/aly/cy;

    const-class v5, Lu/aly/bf;

    invoke-direct {v4, v7, v5}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lu/aly/bn$e;->e:Lu/aly/bn$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "activate_msg"

    new-instance v4, Lu/aly/cy;

    const-class v5, Lu/aly/am;

    invoke-direct {v4, v7, v5}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lu/aly/bn$e;->f:Lu/aly/bn$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "instant_msgs"

    new-instance v4, Lu/aly/cv;

    new-instance v5, Lu/aly/cy;

    const-class v6, Lu/aly/bc;

    invoke-direct {v5, v7, v6}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lu/aly/cv;-><init>(BLu/aly/cu;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lu/aly/bn$e;->g:Lu/aly/bn$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "sessions"

    new-instance v4, Lu/aly/cv;

    new-instance v5, Lu/aly/cy;

    const-class v6, Lu/aly/bl;

    invoke-direct {v5, v7, v6}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lu/aly/cv;-><init>(BLu/aly/cu;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lu/aly/bn$e;->h:Lu/aly/bn$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "imprint"

    new-instance v4, Lu/aly/cy;

    const-class v5, Lu/aly/ba;

    invoke-direct {v4, v7, v5}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lu/aly/bn$e;->i:Lu/aly/bn$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "id_tracking"

    new-instance v4, Lu/aly/cy;

    const-class v5, Lu/aly/az;

    invoke-direct {v4, v7, v5}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lu/aly/bn$e;->j:Lu/aly/bn$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "active_user"

    new-instance v4, Lu/aly/cy;

    const-class v5, Lu/aly/an;

    invoke-direct {v4, v7, v5}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lu/aly/bn$e;->k:Lu/aly/bn$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "control_policy"

    new-instance v4, Lu/aly/cy;

    const-class v5, Lu/aly/aq;

    invoke-direct {v4, v7, v5}, Lu/aly/cy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bn;->l:Ljava/util/Map;

    .line 182
    const-class v0, Lu/aly/bn;

    sget-object v1, Lu/aly/bn;->l:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 183
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x7

    new-array v0, v0, [Lu/aly/bn$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/bn$e;->e:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bn$e;->f:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/bn$e;->g:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lu/aly/bn$e;->h:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lu/aly/bn$e;->i:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lu/aly/bn$e;->j:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lu/aly/bn$e;->k:Lu/aly/bn$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bn;->z:[Lu/aly/bn$e;

    .line 186
    return-void
.end method

.method public constructor <init>(Lu/aly/ap;Lu/aly/ao;Lu/aly/ar;Lu/aly/bf;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lu/aly/bn;-><init>()V

    .line 195
    iput-object p1, p0, Lu/aly/bn;->a:Lu/aly/ap;

    .line 196
    iput-object p2, p0, Lu/aly/bn;->b:Lu/aly/ao;

    .line 197
    iput-object p3, p0, Lu/aly/bn;->c:Lu/aly/ar;

    .line 198
    iput-object p4, p0, Lu/aly/bn;->d:Lu/aly/bf;

    .line 199
    return-void
.end method

.method public constructor <init>(Lu/aly/bn;)V
    .locals 4

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x7

    new-array v0, v0, [Lu/aly/bn$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/bn$e;->e:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bn$e;->f:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/bn$e;->g:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lu/aly/bn$e;->h:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lu/aly/bn$e;->i:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lu/aly/bn$e;->j:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lu/aly/bn$e;->k:Lu/aly/bn$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bn;->z:[Lu/aly/bn$e;

    .line 205
    invoke-virtual {p1}, Lu/aly/bn;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lu/aly/ap;

    iget-object v1, p1, Lu/aly/bn;->a:Lu/aly/ap;

    invoke-direct {v0, v1}, Lu/aly/ap;-><init>(Lu/aly/ap;)V

    iput-object v0, p0, Lu/aly/bn;->a:Lu/aly/ap;

    .line 208
    :cond_0
    invoke-virtual {p1}, Lu/aly/bn;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    new-instance v0, Lu/aly/ao;

    iget-object v1, p1, Lu/aly/bn;->b:Lu/aly/ao;

    invoke-direct {v0, v1}, Lu/aly/ao;-><init>(Lu/aly/ao;)V

    iput-object v0, p0, Lu/aly/bn;->b:Lu/aly/ao;

    .line 211
    :cond_1
    invoke-virtual {p1}, Lu/aly/bn;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    new-instance v0, Lu/aly/ar;

    iget-object v1, p1, Lu/aly/bn;->c:Lu/aly/ar;

    invoke-direct {v0, v1}, Lu/aly/ar;-><init>(Lu/aly/ar;)V

    iput-object v0, p0, Lu/aly/bn;->c:Lu/aly/ar;

    .line 214
    :cond_2
    invoke-virtual {p1}, Lu/aly/bn;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    new-instance v0, Lu/aly/bf;

    iget-object v1, p1, Lu/aly/bn;->d:Lu/aly/bf;

    invoke-direct {v0, v1}, Lu/aly/bf;-><init>(Lu/aly/bf;)V

    iput-object v0, p0, Lu/aly/bn;->d:Lu/aly/bf;

    .line 217
    :cond_3
    invoke-virtual {p1}, Lu/aly/bn;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    new-instance v0, Lu/aly/am;

    iget-object v1, p1, Lu/aly/bn;->e:Lu/aly/am;

    invoke-direct {v0, v1}, Lu/aly/am;-><init>(Lu/aly/am;)V

    iput-object v0, p0, Lu/aly/bn;->e:Lu/aly/am;

    .line 220
    :cond_4
    invoke-virtual {p1}, Lu/aly/bn;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v0, p1, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bc;

    .line 223
    new-instance v3, Lu/aly/bc;

    invoke-direct {v3, v0}, Lu/aly/bc;-><init>(Lu/aly/bc;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_5
    iput-object v1, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 227
    :cond_6
    invoke-virtual {p1}, Lu/aly/bn;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iget-object v0, p1, Lu/aly/bn;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bl;

    .line 230
    new-instance v3, Lu/aly/bl;

    invoke-direct {v3, v0}, Lu/aly/bl;-><init>(Lu/aly/bl;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_7
    iput-object v1, p0, Lu/aly/bn;->g:Ljava/util/List;

    .line 234
    :cond_8
    invoke-virtual {p1}, Lu/aly/bn;->E()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    new-instance v0, Lu/aly/ba;

    iget-object v1, p1, Lu/aly/bn;->h:Lu/aly/ba;

    invoke-direct {v0, v1}, Lu/aly/ba;-><init>(Lu/aly/ba;)V

    iput-object v0, p0, Lu/aly/bn;->h:Lu/aly/ba;

    .line 237
    :cond_9
    invoke-virtual {p1}, Lu/aly/bn;->H()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 238
    new-instance v0, Lu/aly/az;

    iget-object v1, p1, Lu/aly/bn;->i:Lu/aly/az;

    invoke-direct {v0, v1}, Lu/aly/az;-><init>(Lu/aly/az;)V

    iput-object v0, p0, Lu/aly/bn;->i:Lu/aly/az;

    .line 240
    :cond_a
    invoke-virtual {p1}, Lu/aly/bn;->K()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 241
    new-instance v0, Lu/aly/an;

    iget-object v1, p1, Lu/aly/bn;->j:Lu/aly/an;

    invoke-direct {v0, v1}, Lu/aly/an;-><init>(Lu/aly/an;)V

    iput-object v0, p0, Lu/aly/bn;->j:Lu/aly/an;

    .line 243
    :cond_b
    invoke-virtual {p1}, Lu/aly/bn;->N()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 244
    new-instance v0, Lu/aly/aq;

    iget-object v1, p1, Lu/aly/bn;->k:Lu/aly/aq;

    invoke-direct {v0, v1}, Lu/aly/aq;-><init>(Lu/aly/aq;)V

    iput-object v0, p0, Lu/aly/bn;->k:Lu/aly/aq;

    .line 246
    :cond_c
    return-void
.end method

.method static synthetic P()Lu/aly/dl;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->m:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic Q()Lu/aly/db;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->n:Lu/aly/db;

    return-object v0
.end method

.method static synthetic R()Lu/aly/db;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->o:Lu/aly/db;

    return-object v0
.end method

.method static synthetic S()Lu/aly/db;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->p:Lu/aly/db;

    return-object v0
.end method

.method static synthetic T()Lu/aly/db;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->q:Lu/aly/db;

    return-object v0
.end method

.method static synthetic U()Lu/aly/db;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->r:Lu/aly/db;

    return-object v0
.end method

.method static synthetic V()Lu/aly/db;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->s:Lu/aly/db;

    return-object v0
.end method

.method static synthetic W()Lu/aly/db;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->t:Lu/aly/db;

    return-object v0
.end method

.method static synthetic X()Lu/aly/db;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->u:Lu/aly/db;

    return-object v0
.end method

.method static synthetic Y()Lu/aly/db;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->v:Lu/aly/db;

    return-object v0
.end method

.method static synthetic Z()Lu/aly/db;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->w:Lu/aly/db;

    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 737
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bn;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bn;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic aa()Lu/aly/db;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bn;->x:Lu/aly/db;

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    .line 452
    return-void
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()Lu/aly/ba;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lu/aly/bn;->h:Lu/aly/ba;

    return-object v0
.end method

.method public D()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->h:Lu/aly/ba;

    .line 476
    return-void
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lu/aly/bn;->h:Lu/aly/ba;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()Lu/aly/az;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lu/aly/bn;->i:Lu/aly/az;

    return-object v0
.end method

.method public G()V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->i:Lu/aly/az;

    .line 500
    return-void
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lu/aly/bn;->i:Lu/aly/az;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()Lu/aly/an;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lu/aly/bn;->j:Lu/aly/an;

    return-object v0
.end method

.method public J()V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->j:Lu/aly/an;

    .line 524
    return-void
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lu/aly/bn;->j:Lu/aly/an;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public L()Lu/aly/aq;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lu/aly/bn;->k:Lu/aly/aq;

    return-object v0
.end method

.method public M()V
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->k:Lu/aly/aq;

    .line 548
    return-void
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lu/aly/bn;->k:Lu/aly/aq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .prologue
    .line 685
    iget-object v0, p0, Lu/aly/bn;->a:Lu/aly/ap;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'client_stats\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    iget-object v0, p0, Lu/aly/bn;->b:Lu/aly/ao;

    if-nez v0, :cond_1

    .line 689
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'app_info\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_1
    iget-object v0, p0, Lu/aly/bn;->c:Lu/aly/ar;

    if-nez v0, :cond_2

    .line 692
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'device_info\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_2
    iget-object v0, p0, Lu/aly/bn;->d:Lu/aly/bf;

    if-nez v0, :cond_3

    .line 695
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'misc_info\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_3
    iget-object v0, p0, Lu/aly/bn;->a:Lu/aly/ap;

    if-eqz v0, :cond_4

    .line 699
    iget-object v0, p0, Lu/aly/bn;->a:Lu/aly/ap;

    invoke-virtual {v0}, Lu/aly/ap;->m()V

    .line 701
    :cond_4
    iget-object v0, p0, Lu/aly/bn;->b:Lu/aly/ao;

    if-eqz v0, :cond_5

    .line 702
    iget-object v0, p0, Lu/aly/bn;->b:Lu/aly/ao;

    invoke-virtual {v0}, Lu/aly/ao;->H()V

    .line 704
    :cond_5
    iget-object v0, p0, Lu/aly/bn;->c:Lu/aly/ar;

    if-eqz v0, :cond_6

    .line 705
    iget-object v0, p0, Lu/aly/bn;->c:Lu/aly/ar;

    invoke-virtual {v0}, Lu/aly/ar;->ac()V

    .line 707
    :cond_6
    iget-object v0, p0, Lu/aly/bn;->d:Lu/aly/bf;

    if-eqz v0, :cond_7

    .line 708
    iget-object v0, p0, Lu/aly/bn;->d:Lu/aly/bf;

    invoke-virtual {v0}, Lu/aly/bf;->H()V

    .line 710
    :cond_7
    iget-object v0, p0, Lu/aly/bn;->e:Lu/aly/am;

    if-eqz v0, :cond_8

    .line 711
    iget-object v0, p0, Lu/aly/bn;->e:Lu/aly/am;

    invoke-virtual {v0}, Lu/aly/am;->f()V

    .line 713
    :cond_8
    iget-object v0, p0, Lu/aly/bn;->h:Lu/aly/ba;

    if-eqz v0, :cond_9

    .line 714
    iget-object v0, p0, Lu/aly/bn;->h:Lu/aly/ba;

    invoke-virtual {v0}, Lu/aly/ba;->n()V

    .line 716
    :cond_9
    iget-object v0, p0, Lu/aly/bn;->i:Lu/aly/az;

    if-eqz v0, :cond_a

    .line 717
    iget-object v0, p0, Lu/aly/bn;->i:Lu/aly/az;

    invoke-virtual {v0}, Lu/aly/az;->p()V

    .line 719
    :cond_a
    iget-object v0, p0, Lu/aly/bn;->j:Lu/aly/an;

    if-eqz v0, :cond_b

    .line 720
    iget-object v0, p0, Lu/aly/bn;->j:Lu/aly/an;

    invoke-virtual {v0}, Lu/aly/an;->j()V

    .line 722
    :cond_b
    iget-object v0, p0, Lu/aly/bn;->k:Lu/aly/aq;

    if-eqz v0, :cond_c

    .line 723
    iget-object v0, p0, Lu/aly/bn;->k:Lu/aly/aq;

    invoke-virtual {v0}, Lu/aly/aq;->f()V

    .line 725
    :cond_c
    return-void
.end method

.method public a(I)Lu/aly/bn$e;
    .locals 1

    .prologue
    .line 562
    invoke-static {p1}, Lu/aly/bn$e;->a(I)Lu/aly/bn$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/bn;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lu/aly/bn;

    invoke-direct {v0, p0}, Lu/aly/bn;-><init>(Lu/aly/bn;)V

    return-object v0
.end method

.method public a(Ljava/util/List;)Lu/aly/bn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lu/aly/bc;",
            ">;)",
            "Lu/aly/bn;"
        }
    .end annotation

    .prologue
    .line 407
    iput-object p1, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 408
    return-object p0
.end method

.method public a(Lu/aly/am;)Lu/aly/bn;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lu/aly/bn;->e:Lu/aly/am;

    .line 369
    return-object p0
.end method

.method public a(Lu/aly/an;)Lu/aly/bn;
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lu/aly/bn;->j:Lu/aly/an;

    .line 519
    return-object p0
.end method

.method public a(Lu/aly/ao;)Lu/aly/bn;
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lu/aly/bn;->b:Lu/aly/ao;

    .line 297
    return-object p0
.end method

.method public a(Lu/aly/ap;)Lu/aly/bn;
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lu/aly/bn;->a:Lu/aly/ap;

    .line 273
    return-object p0
.end method

.method public a(Lu/aly/aq;)Lu/aly/bn;
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lu/aly/bn;->k:Lu/aly/aq;

    .line 543
    return-object p0
.end method

.method public a(Lu/aly/ar;)Lu/aly/bn;
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lu/aly/bn;->c:Lu/aly/ar;

    .line 321
    return-object p0
.end method

.method public a(Lu/aly/az;)Lu/aly/bn;
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lu/aly/bn;->i:Lu/aly/az;

    .line 495
    return-object p0
.end method

.method public a(Lu/aly/ba;)Lu/aly/bn;
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lu/aly/bn;->h:Lu/aly/ba;

    .line 471
    return-object p0
.end method

.method public a(Lu/aly/bf;)Lu/aly/bn;
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lu/aly/bn;->d:Lu/aly/bf;

    .line 345
    return-object p0
.end method

.method public a(Lu/aly/bc;)V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 399
    :cond_0
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method public a(Lu/aly/bl;)V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    .line 438
    :cond_0
    iget-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    return-void
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .prologue
    .line 566
    sget-object v0, Lu/aly/bn;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dg;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dp;

    invoke-interface {v0}, Lu/aly/dp;->b()Lu/aly/do;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/do;->b(Lu/aly/dg;Lu/aly/ch;)V

    .line 567
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->a:Lu/aly/ap;

    .line 289
    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)Lu/aly/bn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lu/aly/bl;",
            ">;)",
            "Lu/aly/bn;"
        }
    .end annotation

    .prologue
    .line 446
    iput-object p1, p0, Lu/aly/bn;->g:Ljava/util/List;

    .line 447
    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lu/aly/bn;->a(I)Lu/aly/bn$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lu/aly/bn;->a:Lu/aly/ap;

    .line 255
    iput-object v0, p0, Lu/aly/bn;->b:Lu/aly/ao;

    .line 256
    iput-object v0, p0, Lu/aly/bn;->c:Lu/aly/ar;

    .line 257
    iput-object v0, p0, Lu/aly/bn;->d:Lu/aly/bf;

    .line 258
    iput-object v0, p0, Lu/aly/bn;->e:Lu/aly/am;

    .line 259
    iput-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 260
    iput-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    .line 261
    iput-object v0, p0, Lu/aly/bn;->h:Lu/aly/ba;

    .line 262
    iput-object v0, p0, Lu/aly/bn;->i:Lu/aly/az;

    .line 263
    iput-object v0, p0, Lu/aly/bn;->j:Lu/aly/an;

    .line 264
    iput-object v0, p0, Lu/aly/bn;->k:Lu/aly/aq;

    .line 265
    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .prologue
    .line 570
    sget-object v0, Lu/aly/bn;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dg;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dp;

    invoke-interface {v0}, Lu/aly/dp;->b()Lu/aly/do;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/do;->a(Lu/aly/dg;Lu/aly/ch;)V

    .line 571
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->b:Lu/aly/ao;

    .line 313
    :cond_0
    return-void
.end method

.method public c()Lu/aly/ap;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lu/aly/bn;->a:Lu/aly/ap;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->c:Lu/aly/ar;

    .line 337
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->a:Lu/aly/ap;

    .line 278
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->d:Lu/aly/bf;

    .line 361
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 382
    if-nez p1, :cond_0

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->e:Lu/aly/am;

    .line 385
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lu/aly/bn;->a:Lu/aly/ap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lu/aly/ao;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lu/aly/bn;->b:Lu/aly/ao;

    return-object v0
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 424
    :cond_0
    return-void
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lu/aly/bn;->a()Lu/aly/bn;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    .line 463
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->b:Lu/aly/ao;

    .line 302
    return-void
.end method

.method public h(Z)V
    .locals 1

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->h:Lu/aly/ba;

    .line 487
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->i:Lu/aly/az;

    .line 511
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lu/aly/bn;->b:Lu/aly/ao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lu/aly/ar;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lu/aly/bn;->c:Lu/aly/ar;

    return-object v0
.end method

.method public j(Z)V
    .locals 1

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->j:Lu/aly/an;

    .line 535
    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->c:Lu/aly/ar;

    .line 326
    return-void
.end method

.method public k(Z)V
    .locals 1

    .prologue
    .line 556
    if-nez p1, :cond_0

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->k:Lu/aly/aq;

    .line 559
    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lu/aly/bn;->c:Lu/aly/ar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lu/aly/bf;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lu/aly/bn;->d:Lu/aly/bf;

    return-object v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->d:Lu/aly/bf;

    .line 350
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lu/aly/bn;->d:Lu/aly/bf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Lu/aly/am;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lu/aly/bn;->e:Lu/aly/am;

    return-object v0
.end method

.method public q()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->e:Lu/aly/am;

    .line 374
    return-void
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lu/aly/bn;->e:Lu/aly/am;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public t()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lu/aly/bc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UALogEntry("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    const-string v1, "client_stats:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v1, p0, Lu/aly/bn;->a:Lu/aly/ap;

    if-nez v1, :cond_7

    .line 580
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v1, "app_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v1, p0, Lu/aly/bn;->b:Lu/aly/ao;

    if-nez v1, :cond_8

    .line 588
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, "device_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v1, p0, Lu/aly/bn;->c:Lu/aly/ar;

    if-nez v1, :cond_9

    .line 596
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v1, "misc_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget-object v1, p0, Lu/aly/bn;->d:Lu/aly/bf;

    if-nez v1, :cond_a

    .line 604
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :goto_3
    invoke-virtual {p0}, Lu/aly/bn;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v1, "activate_msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v1, p0, Lu/aly/bn;->e:Lu/aly/am;

    if-nez v1, :cond_b

    .line 613
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_0
    :goto_4
    invoke-virtual {p0}, Lu/aly/bn;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, "instant_msgs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v1, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-nez v1, :cond_c

    .line 623
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_1
    :goto_5
    invoke-virtual {p0}, Lu/aly/bn;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v1, "sessions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v1, p0, Lu/aly/bn;->g:Ljava/util/List;

    if-nez v1, :cond_d

    .line 633
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_2
    :goto_6
    invoke-virtual {p0}, Lu/aly/bn;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 640
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    iget-object v1, p0, Lu/aly/bn;->h:Lu/aly/ba;

    if-nez v1, :cond_e

    .line 643
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :cond_3
    :goto_7
    invoke-virtual {p0}, Lu/aly/bn;->H()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 650
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string v1, "id_tracking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    iget-object v1, p0, Lu/aly/bn;->i:Lu/aly/az;

    if-nez v1, :cond_f

    .line 653
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    :cond_4
    :goto_8
    invoke-virtual {p0}, Lu/aly/bn;->K()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 660
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v1, "active_user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget-object v1, p0, Lu/aly/bn;->j:Lu/aly/an;

    if-nez v1, :cond_10

    .line 663
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    :cond_5
    :goto_9
    invoke-virtual {p0}, Lu/aly/bn;->N()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 670
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string v1, "control_policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget-object v1, p0, Lu/aly/bn;->k:Lu/aly/aq;

    if-nez v1, :cond_11

    .line 673
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :cond_6
    :goto_a
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 582
    :cond_7
    iget-object v1, p0, Lu/aly/bn;->a:Lu/aly/ap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 590
    :cond_8
    iget-object v1, p0, Lu/aly/bn;->b:Lu/aly/ao;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 598
    :cond_9
    iget-object v1, p0, Lu/aly/bn;->c:Lu/aly/ar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 606
    :cond_a
    iget-object v1, p0, Lu/aly/bn;->d:Lu/aly/bf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 615
    :cond_b
    iget-object v1, p0, Lu/aly/bn;->e:Lu/aly/am;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 625
    :cond_c
    iget-object v1, p0, Lu/aly/bn;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 635
    :cond_d
    iget-object v1, p0, Lu/aly/bn;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 645
    :cond_e
    iget-object v1, p0, Lu/aly/bn;->h:Lu/aly/ba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 655
    :cond_f
    iget-object v1, p0, Lu/aly/bn;->i:Lu/aly/az;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 665
    :cond_10
    iget-object v1, p0, Lu/aly/bn;->j:Lu/aly/an;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 675
    :cond_11
    iget-object v1, p0, Lu/aly/bn;->k:Lu/aly/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lu/aly/bc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    return-object v0
.end method

.method public v()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 413
    return-void
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public y()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lu/aly/bl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lu/aly/bl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lu/aly/bn;->g:Ljava/util/List;

    return-object v0
.end method
