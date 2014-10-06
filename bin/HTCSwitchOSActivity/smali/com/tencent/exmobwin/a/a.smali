.class Lcom/tencent/exmobwin/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/exmobwin/a/e;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tencent/exmobwin/a/e;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/a/a;->a:Lcom/tencent/exmobwin/a/e;

    iput-object p2, p0, Lcom/tencent/exmobwin/a/a;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/tencent/exmobwin/a/a;->a:Lcom/tencent/exmobwin/a/e;

    iget-object v1, p0, Lcom/tencent/exmobwin/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tencent/exmobwin/a/e;->a(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "center_level1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Check request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/exmobwin/a/h;->b([B)[B

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/exmobwin/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v1, "http://adv.app.qq.com/mobwin_plugin/update"

    new-instance v0, Lcom/tencent/exmobwin/b/b;

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/tencent/exmobwin/a/a;->a:Lcom/tencent/exmobwin/a/e;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/exmobwin/b/b;-><init>(Ljava/lang/String;ZI[BLcom/tencent/exmobwin/b/e;Landroid/os/Handler;)V

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/exmobwin/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/exmobwin/a/a;->a:Lcom/tencent/exmobwin/a/e;

    invoke-static {v1}, Lcom/tencent/exmobwin/a/e;->a(Lcom/tencent/exmobwin/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/exmobwin/b/h;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/b/b;->a(Lcom/tencent/exmobwin/b/b;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
