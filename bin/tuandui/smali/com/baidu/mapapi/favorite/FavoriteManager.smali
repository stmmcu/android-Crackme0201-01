.class public Lcom/baidu/mapapi/favorite/FavoriteManager;
.super Lcom/baidu/mapapi/a/a/a;


# static fields
.field private static a:Lcom/baidu/mapapi/favorite/FavoriteManager;

.field private static b:Lcom/baidu/platform/comapi/favrite/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/a/a/a;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/baidu/mapapi/favorite/FavoriteManager;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->a:Lcom/baidu/mapapi/favorite/FavoriteManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/favorite/FavoriteManager;

    invoke-direct {v0}, Lcom/baidu/mapapi/favorite/FavoriteManager;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->a:Lcom/baidu/mapapi/favorite/FavoriteManager;

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->a:Lcom/baidu/mapapi/favorite/FavoriteManager;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/baidu/mapapi/favorite/FavoritePoiInfo;)I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    if-nez v1, :cond_1

    const-string v1, "baidumapsdk"

    const-string v2, "you may have not call init method!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->c:Lcom/baidu/mapapi/model/LatLng;

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "baidumapsdk"

    const-string v2, "object or pt can not be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "baidumapsdk"

    const-string v1, "poiName can not be null or empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/baidu/mapapi/favorite/a;->a(Lcom/baidu/mapapi/favorite/FavoritePoiInfo;)Lcom/baidu/platform/comapi/favrite/FavSyncPoi;

    move-result-object v1

    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    iget-object v2, v1, Lcom/baidu/platform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/favrite/a;->a(Ljava/lang/String;Lcom/baidu/platform/comapi/favrite/FavSyncPoi;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v2, v1, Lcom/baidu/platform/comapi/favrite/FavSyncPoi;->a:Ljava/lang/String;

    iput-object v2, p1, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/baidu/platform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->g:J

    goto :goto_0
.end method

.method public clearAllFavPois()Z
    .locals 2

    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    if-nez v0, :cond_0

    const-string v0, "baidumapsdk"

    const-string v1, "you may have not call init method!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/favrite/a;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public deleteFavPoi(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    if-nez v1, :cond_1

    const-string v1, "baidumapsdk"

    const-string v2, "you may have not call init method!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/favrite/a;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/favrite/a;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    :cond_0
    return-void
.end method

.method public getAllFavPois()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/favorite/FavoritePoiInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    if-nez v1, :cond_1

    const-string v1, "baidumapsdk"

    const-string v2, "you may have not call init method!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/favrite/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "favpoinum"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "favcontents"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lcom/baidu/mapapi/favorite/a;->a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getFavPoi(Ljava/lang/String;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    if-nez v1, :cond_1

    const-string v1, "baidumapsdk"

    const-string v2, "you may have not call init method!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    invoke-virtual {v1, p1}, Lcom/baidu/platform/comapi/favrite/a;->b(Ljava/lang/String;)Lcom/baidu/platform/comapi/favrite/FavSyncPoi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/baidu/mapapi/favorite/a;->a(Lcom/baidu/platform/comapi/favrite/FavSyncPoi;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/platform/comapi/favrite/a;->a()Lcom/baidu/platform/comapi/favrite/a;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    :cond_0
    return-void
.end method

.method public updateFavPoi(Ljava/lang/String;Lcom/baidu/mapapi/favorite/FavoritePoiInfo;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    if-nez v1, :cond_1

    const-string v1, "baidumapsdk"

    const-string v2, "you may have not call init method!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->c:Lcom/baidu/mapapi/model/LatLng;

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "baidumapsdk"

    const-string v2, "object or pt can not be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p2, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "baidumapsdk"

    const-string v2, "poiName can not be null or empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iput-object p1, p2, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/baidu/mapapi/favorite/a;->a(Lcom/baidu/mapapi/favorite/FavoritePoiInfo;)Lcom/baidu/platform/comapi/favrite/FavSyncPoi;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/platform/comapi/favrite/a;

    invoke-virtual {v1, p1, v0}, Lcom/baidu/platform/comapi/favrite/a;->b(Ljava/lang/String;Lcom/baidu/platform/comapi/favrite/FavSyncPoi;)Z

    move-result v0

    goto :goto_0
.end method
