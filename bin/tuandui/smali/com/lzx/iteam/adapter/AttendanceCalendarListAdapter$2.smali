.class Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$2;
.super Ljava/lang/Object;
.source "AttendanceCalendarListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

.field private final synthetic val$attendanceCalendarMsgData:Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$2;->this$0:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$2;->val$attendanceCalendarMsgData:Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    const-string v0, "4"

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$2;->val$attendanceCalendarMsgData:Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getApproval_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$2;->this$0:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->access$0(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/AttendanceCalendarActivity;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$2;->val$attendanceCalendarMsgData:Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/AttendanceCalendarActivity;->sendApproval(Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;)V

    .line 195
    :cond_0
    return-void
.end method
