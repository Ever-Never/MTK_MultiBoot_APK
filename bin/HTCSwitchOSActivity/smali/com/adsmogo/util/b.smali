.class final Lcom/adsmogo/util/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field private b:Lcom/adsmogo/util/c;

.field private c:Landroid/content/Context;

.field private synthetic d:Lcom/adsmogo/util/a;


# direct methods
.method public constructor <init>(Lcom/adsmogo/util/a;Lcom/adsmogo/util/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/util/b;->d:Lcom/adsmogo/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/util/b;->b:Lcom/adsmogo/util/c;

    iput-object p3, p0, Lcom/adsmogo/util/b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/util/b;->d:Lcom/adsmogo/util/a;

    iget-object v0, p0, Lcom/adsmogo/util/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsmogo/util/a;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "networkResult is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_1

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :goto_2
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/adsmogo/util/b;->b:Lcom/adsmogo/util/c;

    invoke-interface {v2}, Lcom/adsmogo/util/c;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "JudgeNetworkRunnable error"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
