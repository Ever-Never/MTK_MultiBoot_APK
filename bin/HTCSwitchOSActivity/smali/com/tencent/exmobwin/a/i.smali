.class Lcom/tencent/exmobwin/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/exmobwin/a/e;


# direct methods
.method constructor <init>(Lcom/tencent/exmobwin/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/a/i;->a:Lcom/tencent/exmobwin/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/exmobwin/a/i;->a:Lcom/tencent/exmobwin/a/e;

    invoke-static {v0}, Lcom/tencent/exmobwin/a/e;->a(Lcom/tencent/exmobwin/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "MobWIN"

    iget-object v2, p0, Lcom/tencent/exmobwin/a/i;->a:Lcom/tencent/exmobwin/a/e;

    invoke-static {v2}, Lcom/tencent/exmobwin/a/e;->a(Lcom/tencent/exmobwin/a/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/exmobwin/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/exmobwin/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
