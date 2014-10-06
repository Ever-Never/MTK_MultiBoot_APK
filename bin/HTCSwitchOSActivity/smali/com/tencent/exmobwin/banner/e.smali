.class Lcom/tencent/exmobwin/banner/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/exmobwin/banner/a;


# direct methods
.method constructor <init>(Lcom/tencent/exmobwin/banner/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/banner/e;->a:Lcom/tencent/exmobwin/banner/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/e;->a:Lcom/tencent/exmobwin/banner/a;

    invoke-static {v1, v0}, Lcom/tencent/exmobwin/banner/a;->a(Lcom/tencent/exmobwin/banner/a;Ljava/lang/String;)Lcom/tencent/exmobwin/banner/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/e;->a:Lcom/tencent/exmobwin/banner/a;

    invoke-static {v1, v0}, Lcom/tencent/exmobwin/banner/a;->a(Lcom/tencent/exmobwin/banner/a;Lcom/tencent/exmobwin/banner/d;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
