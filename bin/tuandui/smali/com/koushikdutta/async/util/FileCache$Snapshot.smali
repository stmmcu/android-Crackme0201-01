.class public Lcom/koushikdutta/async/util/FileCache$Snapshot;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field fins:[Ljava/io/FileInputStream;

.field lens:[J


# direct methods
.method constructor <init>([Ljava/io/FileInputStream;[J)V
    .locals 0
    .param p1, "fins"    # [Ljava/io/FileInputStream;
    .param p2, "lens"    # [J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->fins:[Ljava/io/FileInputStream;

    .line 32
    iput-object p2, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->lens:[J

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->fins:[Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 41
    return-void
.end method

.method public getLength(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->lens:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method