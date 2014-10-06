.class final Lcom/adsmogo/controller/service/b;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/adsmogo/controller/service/UpdateService;


# direct methods
.method constructor <init>(Lcom/adsmogo/controller/service/UpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    iget-object v1, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v1}, Lcom/adsmogo/controller/service/UpdateService;->f(Lcom/adsmogo/controller/service/UpdateService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/service/UpdateService;->stopService(Landroid/content/Intent;)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->a(Lcom/adsmogo/controller/service/UpdateService;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    iget-object v2, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsmogo/controller/service/UpdateService;->a(Lcom/adsmogo/controller/service/UpdateService;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->b(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/Notification;

    move-result-object v0

    const v2, 0x1080082

    iput v2, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->b(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/Notification;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v3}, Lcom/adsmogo/controller/service/UpdateService;->c(Lcom/adsmogo/controller/service/UpdateService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\u4e0b\u8f7d\u5b8c\u6210,\u51c6\u5907\u5b89\u88c5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->d(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/adsmogo/controller/service/UpdateService;->a()I

    move-result v2

    iget-object v3, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v3}, Lcom/adsmogo/controller/service/UpdateService;->b(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->d(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/adsmogo/controller/service/UpdateService;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/service/UpdateService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->e(Lcom/adsmogo/controller/service/UpdateService;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->e(Lcom/adsmogo/controller/service/UpdateService;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isAduu"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    iget-object v1, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v1}, Lcom/adsmogo/controller/service/UpdateService;->a(Lcom/adsmogo/controller/service/UpdateService;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/AdsMogoUtilTool;->getApkPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    const-class v3, Lcom/adsmogo/controller/service/CountService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "package_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "isAduu"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "uuid"

    iget-object v2, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v2}, Lcom/adsmogo/controller/service/UpdateService;->e(Lcom/adsmogo/controller/service/UpdateService;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uuid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "reqid"

    iget-object v2, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v2}, Lcom/adsmogo/controller/service/UpdateService;->e(Lcom/adsmogo/controller/service/UpdateService;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "reqid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "adid"

    iget-object v2, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v2}, Lcom/adsmogo/controller/service/UpdateService;->e(Lcom/adsmogo/controller/service/UpdateService;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "adid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/service/UpdateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    iget-object v1, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v1}, Lcom/adsmogo/controller/service/UpdateService;->f(Lcom/adsmogo/controller/service/UpdateService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/service/UpdateService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "faild"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v1}, Lcom/adsmogo/controller/service/UpdateService;->b(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/Notification;

    move-result-object v1

    const v2, 0x108008a

    iput v2, v1, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v1}, Lcom/adsmogo/controller/service/UpdateService;->b(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/Notification;

    move-result-object v1

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v1}, Lcom/adsmogo/controller/service/UpdateService;->b(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/Notification;

    move-result-object v1

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v1}, Lcom/adsmogo/controller/service/UpdateService;->b(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    iget-object v3, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v3}, Lcom/adsmogo/controller/service/UpdateService;->c(Lcom/adsmogo/controller/service/UpdateService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v4}, Lcom/adsmogo/controller/service/UpdateService;->g(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->d(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/adsmogo/controller/service/UpdateService;->a()I

    move-result v1

    iget-object v2, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v2}, Lcom/adsmogo/controller/service/UpdateService;->b(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    iget-object v1, p0, Lcom/adsmogo/controller/service/b;->a:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v1}, Lcom/adsmogo/controller/service/UpdateService;->f(Lcom/adsmogo/controller/service/UpdateService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/service/UpdateService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
