.class final Lcn/jpush/android/data/p;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "\u0010GLBO%DMPS\u0013DMXD\t\u0019]S"

    const/4 v0, -0x1

    move-object v5, v4

    move-object v6, v4

    move v4, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v7, v3

    if-gt v7, v2, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v3

    move v10, v8

    move v13, v7

    move-object v7, v3

    move v3, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x27

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v3, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v3

    goto :goto_1

    :cond_1
    move v7, v3

    move-object v3, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    packed-switch v0, :pswitch_data_1

    aput-object v3, v5, v4

    const-string v0, "9e|ps?\u0017mpe6r\u0019[W\u000fDQnT\u000eVMXT\u000e^ZB\u0007RhPU\u00073ymt`?e\u0019au3zxc~Z||h\u0007;bm~n4tktj?ym\u0011\u000b\tCfBH\u0008CfZB\u0003\u0017MT_\u000e\u0017W^SZYL]KVDMnI\u001fC\u0019EB\u0002C\u0019_H\u000e\u0017WDK\u0016\u001bJEx\u0019XW_x\u0013G\u0019EB\u0002C\u0019_H\u000e\u0017WDK\u0016\u001bJEx\u0016XZPK%SWB\u0007\u000eRAE\u000b\tCfBH\u000fEZT\u0007\u0013YMT@\u001fE\u0019_H\u000e\u0017WDK\u0016\u001bJEx\u001cVP]B\u001e\u0017P_S\u001fP\\C\u0007\u0014XM\u0011I\u000f[U\u001dT\u000ehM^S\u001b[\u0019XI\u000eR^TUZYVE\u0007\u0014BU]\u000b\tCfRH\u000fYMn\u0016Z^WEB\u001dRK\u001dT\u000ehZ^R\u0014Cf\u0000xI\u0017P_S\u001fP\\C\u000b\tCfRH\u000fYMn\u0014%\u0006\t\u0011N\u0014C\\VB\u0008\u001bJEx\u0019XL_S%\u0006\t\u0011N\u0014C\\VB\u0008\u001e\u0002"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, ">eva\u0007.v{}bZ~\u007f\u0011b\"~jetZ]IDT\u0012hJEF\u000e^JEN\u0019D"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcn/jpush/android/data/p;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x7a

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x37

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x39

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x31

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcn/jpush/android/data/p;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/jpush/android/data/p;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcn/jpush/android/data/p;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    goto :goto_0
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    sget-object v0, Lcn/jpush/android/data/p;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/jpush/android/data/p;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
