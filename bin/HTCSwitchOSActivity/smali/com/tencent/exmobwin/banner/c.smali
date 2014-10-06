.class Lcom/tencent/exmobwin/banner/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/exmobwin/banner/MobWINBrowserActivity;


# direct methods
.method constructor <init>(Lcom/tencent/exmobwin/banner/MobWINBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/banner/c;->a:Lcom/tencent/exmobwin/banner/MobWINBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/c;->a:Lcom/tencent/exmobwin/banner/MobWINBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/banner/MobWINBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/c;->a:Lcom/tencent/exmobwin/banner/MobWINBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/banner/MobWINBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
