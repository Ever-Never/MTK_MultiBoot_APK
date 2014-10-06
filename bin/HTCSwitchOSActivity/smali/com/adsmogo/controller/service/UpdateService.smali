.class public Lcom/adsmogo/controller/service/UpdateService;
.super Landroid/app/Service;


# static fields
.field private static e:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private f:Landroid/app/NotificationManager;

.field private g:Landroid/app/Notification;

.field private h:Landroid/content/Intent;

.field private i:Landroid/content/Intent;

.field private j:Landroid/app/PendingIntent;

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/adsmogo/controller/service/UpdateService;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/adsmogo/controller/service/UpdateService;->c:Ljava/io/File;

    iput-object v1, p0, Lcom/adsmogo/controller/service/UpdateService;->d:Ljava/io/File;

    iput-object v1, p0, Lcom/adsmogo/controller/service/UpdateService;->f:Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/adsmogo/controller/service/UpdateService;->g:Landroid/app/Notification;

    iput-object v1, p0, Lcom/adsmogo/controller/service/UpdateService;->h:Landroid/content/Intent;

    iput-object v1, p0, Lcom/adsmogo/controller/service/UpdateService;->i:Landroid/content/Intent;

    iput-object v1, p0, Lcom/adsmogo/controller/service/UpdateService;->j:Landroid/app/PendingIntent;

    new-instance v0, Lcom/adsmogo/controller/service/b;

    invoke-direct {v0, p0}, Lcom/adsmogo/controller/service/b;-><init>(Lcom/adsmogo/controller/service/UpdateService;)V

    iput-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/adsmogo/controller/service/UpdateService;->e:I

    return v0
.end method

.method static synthetic a(Lcom/adsmogo/controller/service/UpdateService;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/controller/service/UpdateService;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/service/UpdateService;->j:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic b(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->g:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic c(Lcom/adsmogo/controller/service/UpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->f:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic e(Lcom/adsmogo/controller/service/UpdateService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->i:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic f(Lcom/adsmogo/controller/service/UpdateService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->h:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic g(Lcom/adsmogo/controller/service/UpdateService;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->j:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic h(Lcom/adsmogo/controller/service/UpdateService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/adsmogo/controller/service/UpdateService;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->c:Ljava/io/File;

    return-object v0
.end method

.method static synthetic j(Lcom/adsmogo/controller/service/UpdateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/File;)J
    .locals 13

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v1, "User-Agent"

    const-string v4, "PacificHttpClient"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v4, 0x194

    if-ne v1, v4, :cond_3

    new-instance v1, Ljava/lang/Exception;

    const-string v4, "fail!"

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v12

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v3, p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v1, 0x1000

    :try_start_4
    new-array v9, v1, [B

    move-wide v1, v5

    move v5, v7

    :cond_4
    :goto_1
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v6

    if-lez v6, :cond_5

    if-nez p0, :cond_8

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    return-wide v1

    :cond_8
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v3, v9, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v6, v6

    add-long/2addr v1, v6

    if-eqz v5, :cond_9

    const-wide/16 v6, 0x64

    mul-long/2addr v6, v1

    int-to-long v10, v8

    div-long/2addr v6, v10

    long-to-int v6, v6

    add-int/lit8 v6, v6, -0xa

    if-le v6, v5, :cond_4

    :cond_9
    add-int/lit8 v5, v5, 0xa

    iget-object v6, p0, Lcom/adsmogo/controller/service/UpdateService;->g:Landroid/app/Notification;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/adsmogo/controller/service/UpdateService;->a:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\"\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    long-to-int v11, v1

    mul-int/lit8 v11, v11, 0x64

    div-int/2addr v11, v8

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/adsmogo/controller/service/UpdateService;->j:Landroid/app/PendingIntent;

    invoke-virtual {v6, p0, v7, v10, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/adsmogo/controller/service/UpdateService;->f:Landroid/app/NotificationManager;

    sget v7, Lcom/adsmogo/controller/service/UpdateService;->e:I

    iget-object v10, p0, Lcom/adsmogo/controller/service/UpdateService;->g:Landroid/app/Notification;

    invoke-virtual {v6, v7, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v4

    move-object v12, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v12, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v12

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/adsmogo/controller/service/UpdateService;->i:Landroid/content/Intent;

    if-nez p1, :cond_0

    const-string v0, "\u542f\u52a8\u4e0b\u8f7d\u670d\u52a1\u5931\u8d25"

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/adsmogo/controller/service/UpdateService;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/adsmogo/controller/service/UpdateService;->e:I

    const-string v0, "mogo_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->a:Ljava/lang/String;

    const-string v0, "mogo_link"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->b:Ljava/lang/String;

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "MOGO/download/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->c:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adsmogo/controller/service/UpdateService;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/adsmogo/controller/service/UpdateService;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->d:Ljava/io/File;

    :cond_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/adsmogo/controller/service/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->f:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/app/Notification;

    const v3, 0x1080081

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/adsmogo/controller/service/UpdateService;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v2, p0, Lcom/adsmogo/controller/service/UpdateService;->g:Landroid/app/Notification;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->h:Landroid/content/Intent;

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->h:Landroid/content/Intent;

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->j:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->g:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/controller/service/UpdateService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0%"

    iget-object v3, p0, Lcom/adsmogo/controller/service/UpdateService;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->g:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/adsmogo/controller/service/UpdateService;->f:Landroid/app/NotificationManager;

    sget v1, Lcom/adsmogo/controller/service/UpdateService;->e:I

    iget-object v2, p0, Lcom/adsmogo/controller/service/UpdateService;->g:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsmogo/controller/service/c;

    invoke-direct {v1, p0}, Lcom/adsmogo/controller/service/c;-><init>(Lcom/adsmogo/controller/service/UpdateService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
