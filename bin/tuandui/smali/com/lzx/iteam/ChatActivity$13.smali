.class Lcom/lzx/iteam/ChatActivity$13;
.super Ljava/util/TimerTask;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity;->sendTextMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatActivity;

.field private final synthetic val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

.field private final synthetic val$uniqueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    iput-object p2, p0, Lcom/lzx/iteam/ChatActivity$13;->val$uniqueId:Ljava/lang/String;

    iput-object p3, p0, Lcom/lzx/iteam/ChatActivity$13;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 1719
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ChatActivity$13;)Lcom/lzx/iteam/ChatActivity;
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1723
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v3

    invoke-interface {v3}, Lcom/lzx/iteam/service/aidl/INetService;->getMessageTag()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1756
    :goto_1
    return-void

    .line 1723
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1724
    .local v2, "tag":Ljava/lang/String;
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->val$uniqueId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1725
    sget-object v4, Lcom/lzx/iteam/ChatActivity;->tags:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity$13;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v5}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1726
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setIsSuccess(Z)V

    .line 1729
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$1(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/ChatActivity;->access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/lzx/iteam/ChatActivity$13;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/ChatActivity$13;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v4, v5, v6, v7}, Lcom/lzx/iteam/provider/MessageDB;->updateMessageStatus(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1730
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->setShowTextProgress(Z)V

    .line 1731
    const/4 v0, 0x0

    .line 1732
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;>;"
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    mul-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_3

    .line 1733
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$1(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/ChatActivity;->access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mUserId:Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/ChatActivity;->access$51(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/16 v8, 0xa

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lzx/iteam/provider/MessageDB;->findMessagesByChatGroupId(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1738
    :goto_2
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1739
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1740
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1741
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    new-instance v5, Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v7, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v7, v7, Lcom/lzx/iteam/ChatActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v5, v6, v7}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;-><init>(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    invoke-static {v4, v5}, Lcom/lzx/iteam/ChatActivity;->access$59(Lcom/lzx/iteam/ChatActivity;Lcom/lzx/iteam/adapter/ChatMessageAdapter;)V

    .line 1743
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    new-instance v5, Lcom/lzx/iteam/ChatActivity$13$1;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/ChatActivity$13$1;-><init>(Lcom/lzx/iteam/ChatActivity$13;)V

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1753
    .end local v0    # "datas":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;>;"
    .end local v2    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1754
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 1735
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "datas":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;>;"
    .restart local v2    # "tag":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$1(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/ChatActivity;->access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mUserId:Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/ChatActivity;->access$51(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v8}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0xa

    mul-int/lit8 v8, v8, 0xa

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lzx/iteam/provider/MessageDB;->findMessagesByChatGroupId(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method