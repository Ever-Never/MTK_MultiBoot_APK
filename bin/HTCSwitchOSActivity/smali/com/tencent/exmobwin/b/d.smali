.class Lcom/tencent/exmobwin/b/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/tencent/exmobwin/b/h;


# direct methods
.method constructor <init>(Lcom/tencent/exmobwin/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/b/d;->a:Lcom/tencent/exmobwin/b/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetWork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetworkChangeReceiver receive action "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    sput-boolean v0, Lcom/tencent/exmobwin/b/h;->c:Z

    iget-object v0, p0, Lcom/tencent/exmobwin/b/d;->a:Lcom/tencent/exmobwin/b/h;

    invoke-static {v0}, Lcom/tencent/exmobwin/b/h;->a(Lcom/tencent/exmobwin/b/h;)Lcom/tencent/exmobwin/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/b/d;->a:Lcom/tencent/exmobwin/b/h;

    invoke-static {v0}, Lcom/tencent/exmobwin/b/h;->a(Lcom/tencent/exmobwin/b/h;)Lcom/tencent/exmobwin/b/a;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/exmobwin/b/h;->c:Z

    invoke-interface {v0, v1}, Lcom/tencent/exmobwin/b/a;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
