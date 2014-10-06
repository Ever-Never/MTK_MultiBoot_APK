.class final Lcom/adsmogo/controller/service/a;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/adsmogo/controller/service/CountService;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Z

.field private final synthetic e:Landroid/content/Intent;

.field private final synthetic f:I

.field private final synthetic g:J


# direct methods
.method constructor <init>(Lcom/adsmogo/controller/service/CountService;Ljava/lang/String;ZLandroid/content/Intent;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/controller/service/a;->b:Lcom/adsmogo/controller/service/CountService;

    iput-object p2, p0, Lcom/adsmogo/controller/service/a;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/adsmogo/controller/service/a;->d:Z

    iput-object p4, p0, Lcom/adsmogo/controller/service/a;->e:Landroid/content/Intent;

    iput p5, p0, Lcom/adsmogo/controller/service/a;->f:I

    iput-wide p6, p0, Lcom/adsmogo/controller/service/a;->g:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/controller/service/a;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/adsmogo/controller/service/a;->a:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/controller/service/a;->b:Lcom/adsmogo/controller/service/CountService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/CountService;->a(Lcom/adsmogo/controller/service/CountService;)Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/controller/service/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/adsmogo/controller/service/a;->a:Z

    iget-boolean v0, p0, Lcom/adsmogo/controller/service/a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/controller/service/a;->b:Lcom/adsmogo/controller/service/CountService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/CountService;->b(Lcom/adsmogo/controller/service/CountService;)V

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/controller/service/a;->b:Lcom/adsmogo/controller/service/CountService;

    iget-object v1, p0, Lcom/adsmogo/controller/service/a;->e:Landroid/content/Intent;

    iget v2, p0, Lcom/adsmogo/controller/service/a;->f:I

    invoke-static {v0, v1, v2}, Lcom/adsmogo/controller/service/CountService;->a(Lcom/adsmogo/controller/service/CountService;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/controller/service/a;->b:Lcom/adsmogo/controller/service/CountService;

    iget-object v1, p0, Lcom/adsmogo/controller/service/a;->e:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/adsmogo/controller/service/CountService;->a(Lcom/adsmogo/controller/service/CountService;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lcom/adsmogo/controller/service/a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/adsmogo/controller/service/a;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iput-boolean v4, p0, Lcom/adsmogo/controller/service/a;->a:Z

    iget-object v0, p0, Lcom/adsmogo/controller/service/a;->b:Lcom/adsmogo/controller/service/CountService;

    iget-object v1, p0, Lcom/adsmogo/controller/service/a;->e:Landroid/content/Intent;

    iget v2, p0, Lcom/adsmogo/controller/service/a;->f:I

    invoke-static {v0, v1, v2}, Lcom/adsmogo/controller/service/CountService;->a(Lcom/adsmogo/controller/service/CountService;Landroid/content/Intent;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method
