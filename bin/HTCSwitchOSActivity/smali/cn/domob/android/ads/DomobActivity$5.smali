.class Lcn/domob/android/ads/DomobActivity$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/DomobActivity;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcn/domob/android/ads/DomobActivity$5;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 200
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity$5;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-static {v0}, Lcn/domob/android/ads/DomobActivity;->b(Lcn/domob/android/ads/DomobActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7167\u7247\u4e0a\u4f20\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity$5;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-static {v0}, Lcn/domob/android/ads/DomobActivity;->c(Lcn/domob/android/ads/DomobActivity;)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity$5;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-static {v0}, Lcn/domob/android/ads/DomobActivity;->b(Lcn/domob/android/ads/DomobActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7167\u7247\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
