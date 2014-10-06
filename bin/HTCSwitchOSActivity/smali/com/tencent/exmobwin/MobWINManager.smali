.class public Lcom/tencent/exmobwin/MobWINManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "MobWINManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    invoke-static {}, Lcom/tencent/exmobwin/a/e;->a()Lcom/tencent/exmobwin/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/exmobwin/a/e;->d()V

    invoke-static {}, Lcom/tencent/exmobwin/banner/a;->a()Lcom/tencent/exmobwin/banner/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/exmobwin/banner/a;->d()V

    return-void
.end method

.method public static varargs init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/exmobwin/a/e;->a()Lcom/tencent/exmobwin/a/e;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/exmobwin/a/e;->e:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, p0, p4}, Lcom/tencent/exmobwin/a/e;->a(Landroid/content/Context;[I)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/exmobwin/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static varargs init(Landroid/content/Context;[I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/exmobwin/a/e;->a()Lcom/tencent/exmobwin/a/e;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/exmobwin/a/e;->e:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/tencent/exmobwin/a/e;->a(Landroid/content/Context;[I)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/tencent/exmobwin/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
