.class public Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
.super Ljava/lang/Object;
.source "InBandBytestreamManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;
    }
.end annotation


# static fields
.field public static final MAXIMUM_BLOCK_SIZE:I = 0xffff

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/ibb"

.field private static final SESSION_ID_PREFIX:Ljava/lang/String; = "jibb_"

.field private static final managers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final randomGenerator:Ljava/util/Random;


# instance fields
.field private final allRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation
.end field

.field private final closeListener:Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final dataListener:Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

.field private defaultBlockSize:I

.field private ignoredBytestreamRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

.field private maximumBlockSize:I

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;",
            ">;"
        }
    .end annotation
.end field

.field private stanza:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

.field private final userListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 140
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->randomGenerator:Ljava/util/Random;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->managers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->userListeners:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->allRequestListeners:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->sessions:Ljava/util/Map;

    .line 173
    const/16 v0, 0x1000

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->defaultBlockSize:I

    .line 176
    const v0, 0xffff

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->maximumBlockSize:I

    .line 179
    sget-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->IQ:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->stanza:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    .line 185
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    .line 211
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 214
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    .line 215
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    .line 216
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->getFilter()Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v2

    .line 215
    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 219
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->dataListener:Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

    .line 220
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->dataListener:Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->dataListener:Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;->getFilter()Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 223
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->closeListener:Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

    .line 224
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->closeListener:Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->closeListener:Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;->getFilter()Lorg/jivesoftware/smack/filter/PacketFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 226
    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->disableService()V

    return-void
.end method

.method private disableService()V
    .locals 2

    .prologue
    .line 539
    sget-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->managers:Ljava/util/Map;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 543
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->dataListener:Lorg/jivesoftware/smackx/bytestreams/ibb/DataListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 544
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->closeListener:Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 547
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InitiationListener;->shutdown()V

    .line 550
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 551
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 552
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 553
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 555
    return-void
.end method

.method public static declared-synchronized getByteStreamManager(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 195
    const-class v2, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    monitor-enter v2

    if-nez p0, :cond_1

    .line 196
    const/4 v0, 0x0

    .line 202
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 197
    :cond_1
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->managers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 198
    .local v0, "manager":Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .end local v0    # "manager":Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 200
    .restart local v0    # "manager":Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->managers:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 195
    .end local v0    # "manager":Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getNextSessionID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "jibb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    .prologue
    .line 243
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public addIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    .param p2, "initiatorJID"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-void
.end method

.method public bridge synthetic establishSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->establishSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v0

    return-object v0
.end method

.method public establishSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    .locals 2
    .param p1, "targetJID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getNextSessionID()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "sessionID":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v1

    return-object v1
.end method

.method public establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    .locals 4
    .param p1, "targetJID"    # Ljava/lang/String;
    .param p2, "sessionID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    iget v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->defaultBlockSize:I

    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->stanza:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    invoke-direct {v0, p2, v2, v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;)V

    .line 424
    .local v0, "byteStreamRequest":Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->setTo(Ljava/lang/String;)V

    .line 427
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v2, v0}, Lorg/jivesoftware/smack/util/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;

    .line 429
    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    .line 430
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 429
    invoke-direct {v1, v2, v0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;Ljava/lang/String;)V

    .line 431
    .local v1, "inBandBytestreamSession":Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->sessions:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-object v1
.end method

.method protected getAllRequestListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->allRequestListeners:Ljava/util/List;

    return-object v0
.end method

.method protected getConnection()Lorg/jivesoftware/smack/Connection;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method public getDefaultBlockSize()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->defaultBlockSize:I

    return v0
.end method

.method protected getIgnoredBytestreamRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    return-object v0
.end method

.method public getMaximumBlockSize()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->maximumBlockSize:I

    return v0
.end method

.method protected getSessions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->sessions:Ljava/util/Map;

    return-object v0
.end method

.method public getStanza()Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->stanza:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    return-object v0
.end method

.method protected getUserListener(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    .locals 1
    .param p1, "initiator"    # Ljava/lang/String;

    .prologue
    .line 501
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    return-object v0
.end method

.method public ignoreBytestreamRequestOnce(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public removeIncomingBytestreamListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "initiatorJID"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public removeIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    .prologue
    .line 253
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method protected replyItemNotFoundPacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/IQ;

    .prologue
    .line 467
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 468
    .local v1, "xmppError":Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-static {p1, v1}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 469
    .local v0, "error":Lorg/jivesoftware/smack/packet/IQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 470
    return-void
.end method

.method protected replyRejectPacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/IQ;

    .prologue
    .line 443
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->no_acceptable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 444
    .local v1, "xmppError":Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-static {p1, v1}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 445
    .local v0, "error":Lorg/jivesoftware/smack/packet/IQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 446
    return-void
.end method

.method protected replyResourceConstraintPacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/IQ;

    .prologue
    .line 455
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->resource_constraint:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 456
    .local v1, "xmppError":Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-static {p1, v1}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/XMPPError;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 457
    .local v0, "error":Lorg/jivesoftware/smack/packet/IQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 458
    return-void
.end method

.method public setDefaultBlockSize(I)V
    .locals 2
    .param p1, "defaultBlockSize"    # I

    .prologue
    .line 325
    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default block size must be between 1 and 65535"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->defaultBlockSize:I

    .line 330
    return-void
.end method

.method public setMaximumBlockSize(I)V
    .locals 2
    .param p1, "maximumBlockSize"    # I

    .prologue
    .line 359
    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum block size must be between 1 and 65535"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->maximumBlockSize:I

    .line 364
    return-void
.end method

.method public setStanza(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;)V
    .locals 0
    .param p1, "stanza"    # Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    .prologue
    .line 387
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->stanza:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    .line 388
    return-void
.end method
