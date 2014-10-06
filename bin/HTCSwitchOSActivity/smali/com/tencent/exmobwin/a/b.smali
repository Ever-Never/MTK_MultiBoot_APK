.class public Lcom/tencent/exmobwin/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/exmobwin/b/a;
.implements Lcom/tencent/exmobwin/b/e;


# static fields
.field private static final B:I = 0x1000

.field public static final a:I = 0x1

.field public static final b:I = 0xb

.field public static final c:I = 0x0

.field public static final d:I = -0x1

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x0

.field public static final i:I = -0x1

.field private static final r:Ljava/lang/String; = "DownloadManager"

.field private static final s:[B

.field private static x:Z


# instance fields
.field private A:Lcom/tencent/exmobwin/b/h;

.field private C:Z

.field private t:Ljava/util/List;

.field private u:Ljava/util/HashMap;

.field private v:Ljava/util/HashMap;

.field private w:Ljava/util/HashMap;

.field private y:Lcom/tencent/exmobwin/c/f;

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [B

    sput-object v0, Lcom/tencent/exmobwin/a/b;->s:[B

    sput-boolean v1, Lcom/tencent/exmobwin/a/b;->x:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/HashMap;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/exmobwin/a/b;->t:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/exmobwin/a/b;->u:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/tencent/exmobwin/a/b;->v:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/tencent/exmobwin/a/b;->y:Lcom/tencent/exmobwin/c/f;

    iput-object v1, p0, Lcom/tencent/exmobwin/a/b;->z:Landroid/content/Context;

    iput-object v1, p0, Lcom/tencent/exmobwin/a/b;->A:Lcom/tencent/exmobwin/b/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/exmobwin/a/b;->C:Z

    iput-object p1, p0, Lcom/tencent/exmobwin/a/b;->z:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/tencent/exmobwin/a/b;->C:Z

    new-instance v0, Lcom/tencent/exmobwin/b/h;

    invoke-direct {v0, p1}, Lcom/tencent/exmobwin/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/exmobwin/a/b;->A:Lcom/tencent/exmobwin/b/h;

    new-instance v0, Lcom/tencent/exmobwin/c/f;

    invoke-direct {v0, p1, p2}, Lcom/tencent/exmobwin/c/f;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/tencent/exmobwin/a/b;->y:Lcom/tencent/exmobwin/c/f;

    iput-object p3, p0, Lcom/tencent/exmobwin/a/b;->v:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->A:Lcom/tencent/exmobwin/b/h;

    invoke-virtual {v0, p0}, Lcom/tencent/exmobwin/b/h;->a(Lcom/tencent/exmobwin/b/a;)V

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->A:Lcom/tencent/exmobwin/b/h;

    invoke-virtual {v0}, Lcom/tencent/exmobwin/b/h;->c()V

    return-void
.end method

.method private a(I)V
    .locals 4

    sget-object v1, Lcom/tencent/exmobwin/a/b;->s:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->t:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->t:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->v:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->v:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/exmobwin/a/b;->a()V

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/tencent/exmobwin/a/b;->v:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/exmobwin/a/d;

    invoke-virtual {v0}, Lcom/tencent/exmobwin/a/d;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 10

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/tencent/exmobwin/a/e;->a()Lcom/tencent/exmobwin/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/exmobwin/a/e;->e()V

    sget-boolean v0, Lcom/tencent/exmobwin/b/h;->c:Z

    if-nez v0, :cond_1

    const-string v0, "sendDownloadReport"

    const-string v1, "network is disabled!"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->u:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/exmobwin/c/b;

    iget-object v1, p0, Lcom/tencent/exmobwin/a/b;->z:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/exmobwin/c/b;-><init>(Landroid/content/Context;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "basicVersion"

    invoke-static {}, Lcom/tencent/exmobwin/a/e;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uuid"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imei"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "netType"

    iget-object v5, p0, Lcom/tencent/exmobwin/a/b;->z:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/exmobwin/b/h;->a(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mac"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "plugins"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "center_level1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/exmobwin/a/h;->b([B)[B

    move-result-object v4

    const-string v1, "http://adv.app.qq.com/mobwin_plugin/packageDown"

    new-instance v0, Lcom/tencent/exmobwin/b/b;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v6, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/exmobwin/b/b;-><init>(Ljava/lang/String;ZI[BLcom/tencent/exmobwin/b/e;Landroid/os/Handler;)V

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/exmobwin/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/exmobwin/a/b;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/exmobwin/b/h;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/b/b;->a(Lcom/tencent/exmobwin/b/b;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/exmobwin/c/c;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->m()I

    move-result v8

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v8

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pluginVersion"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pluginMd5"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "downUrl"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->l()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->k()J

    move-result-wide v0

    sub-long v0, v8, v0

    cmp-long v8, v0, v2

    if-gez v8, :cond_3

    move-wide v0, v2

    :cond_3
    const-string v8, "downTime"

    invoke-virtual {v7, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public a(ILcom/tencent/exmobwin/b/b;)V
    .locals 5

    if-nez p2, :cond_1

    const-string v0, "DownloadManager"

    const-string v1, "httpTask is null"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/tencent/exmobwin/b/b;->i:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p2, Lcom/tencent/exmobwin/b/b;->m:Lcom/tencent/exmobwin/c/c;

    if-eqz v0, :cond_0

    iget-object v1, p2, Lcom/tencent/exmobwin/b/b;->m:Lcom/tencent/exmobwin/c/c;

    invoke-virtual {v1}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/tencent/exmobwin/c/c;->e(I)V

    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dealhttperror type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reportCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/exmobwin/a/b;->u:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/exmobwin/a/b;->u:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0, v1}, Lcom/tencent/exmobwin/a/b;->a(I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "DownloadManager"

    const-string v1, "Download report failed!"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/tencent/exmobwin/c/c;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->A:Lcom/tencent/exmobwin/b/h;

    invoke-virtual {v0}, Lcom/tencent/exmobwin/b/h;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/exmobwin/a/b;->x:Z

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/tencent/exmobwin/a/b;->x:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/exmobwin/c/c;->a(J)V

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v8

    sget-object v1, Lcom/tencent/exmobwin/a/b;->s:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->t:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->t:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/tencent/exmobwin/b/b;

    const/4 v3, 0x2

    move-object v5, p1

    move-object v6, p0

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/exmobwin/b/b;-><init>(Ljava/lang/String;ZI[BLcom/tencent/exmobwin/c/c;Lcom/tencent/exmobwin/b/e;Landroid/os/Handler;)V

    const-string v1, "RANGE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/exmobwin/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/exmobwin/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/exmobwin/a/b;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/exmobwin/b/h;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/b/b;->a(Lcom/tencent/exmobwin/b/b;I)V

    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start download type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lorg/apache/http/HttpResponse;Lcom/tencent/exmobwin/b/b;)V
    .locals 23

    move-object/from16 v0, p2

    iget v2, v0, Lcom/tencent/exmobwin/b/b;->i:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x3

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/tencent/exmobwin/b/b;->f:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/tencent/exmobwin/b/c;

    invoke-direct {v2}, Lcom/tencent/exmobwin/b/c;-><init>()V

    throw v2

    :cond_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/tencent/exmobwin/b/b;->m:Lcom/tencent/exmobwin/c/c;

    if-nez v13, :cond_2

    new-instance v2, Lcom/tencent/exmobwin/b/c;

    invoke-direct {v2}, Lcom/tencent/exmobwin/b/c;-><init>()V

    throw v2

    :cond_2
    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/exmobwin/a/b;->z:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/exmobwin/a/b;->C:Z

    invoke-static {v2, v3}, Lcom/tencent/exmobwin/d/a;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->f()I

    move-result v9

    if-nez v9, :cond_4

    const-string v2, "Content-Length"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/tencent/exmobwin/d/a;->a(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v2, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Path: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/exmobwin/b/c;

    invoke-direct {v2}, Lcom/tencent/exmobwin/b/c;-><init>()V

    throw v2

    :cond_3
    invoke-virtual {v13, v2}, Lcom/tencent/exmobwin/c/c;->b(I)V

    :cond_4
    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->a()I

    move-result v8

    sget-object v2, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/tencent/exmobwin/b/b;->f:Z

    if-eqz v3, :cond_5

    new-instance v2, Lcom/tencent/exmobwin/b/c;

    invoke-direct {v2}, Lcom/tencent/exmobwin/b/c;-><init>()V

    throw v2

    :cond_5
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v7

    if-nez v7, :cond_8

    :try_start_1
    new-instance v3, Lcom/tencent/exmobwin/b/g;

    invoke-direct {v3}, Lcom/tencent/exmobwin/b/g;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-object/from16 v19, v3

    move-object v3, v4

    move-object/from16 v4, v19

    move-wide/from16 v20, v10

    move-wide/from16 v9, v20

    :goto_1
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    invoke-virtual {v13, v2}, Lcom/tencent/exmobwin/c/c;->c(Ljava/lang/String;)V

    invoke-virtual {v13, v9, v10}, Lcom/tencent/exmobwin/c/c;->b(J)V

    invoke-virtual {v13, v7}, Lcom/tencent/exmobwin/c/c;->a(I)V

    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->b()I

    move-result v2

    if-ge v7, v2, :cond_f

    invoke-virtual {v13, v8}, Lcom/tencent/exmobwin/c/c;->d(I)V

    invoke-virtual {v13, v12}, Lcom/tencent/exmobwin/c/c;->e(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/exmobwin/a/b;->b(Lcom/tencent/exmobwin/c/c;)V

    :goto_2
    throw v4

    :cond_8
    :try_start_2
    invoke-static/range {v16 .. v16}, Lcom/tencent/exmobwin/d/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Lcom/tencent/exmobwin/b/c;

    invoke-direct {v3}, Lcom/tencent/exmobwin/b/c;-><init>()V

    throw v3

    :cond_9
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v3, "rws"

    invoke-direct {v4, v5, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v8, :cond_a

    :try_start_4
    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->b()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_a
    const/16 v3, 0x1000

    new-array v3, v3, [B

    int-to-long v0, v8

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v9, 0x1

    move v6, v8

    :goto_3
    const/4 v8, 0x0

    const/16 v17, 0x1000

    :try_start_5
    move/from16 v0, v17

    invoke-virtual {v7, v3, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_d

    const-string v3, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v17, "Adtype"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v17, " downloadTime: "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->k()J

    move-result-wide v17

    sub-long v17, v10, v17

    move-wide/from16 v0, v17

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v17, " ms"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    :cond_c
    invoke-virtual {v13, v2}, Lcom/tencent/exmobwin/c/c;->c(Ljava/lang/String;)V

    invoke-virtual {v13, v10, v11}, Lcom/tencent/exmobwin/c/c;->b(J)V

    invoke-virtual {v13, v6}, Lcom/tencent/exmobwin/c/c;->a(I)V

    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->b()I

    move-result v2

    if-ge v6, v2, :cond_14

    invoke-virtual {v13, v9}, Lcom/tencent/exmobwin/c/c;->d(I)V

    invoke-virtual {v13, v12}, Lcom/tencent/exmobwin/c/c;->e(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/exmobwin/a/b;->b(Lcom/tencent/exmobwin/c/c;)V

    goto/16 :goto_0

    :cond_d
    :try_start_6
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/tencent/exmobwin/b/b;->f:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    new-instance v3, Lcom/tencent/exmobwin/b/c;

    invoke-direct {v3}, Lcom/tencent/exmobwin/b/c;-><init>()V

    throw v3

    :catchall_1
    move-exception v3

    move v8, v9

    move-object/from16 v19, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v19

    move/from16 v20, v6

    move-object v6, v7

    move/from16 v7, v20

    move-wide/from16 v21, v10

    move-wide/from16 v9, v21

    goto/16 :goto_1

    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-wide v10

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "interruptHttpTasks remove type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interruptHttpTasks size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-static {v3}, Lcom/tencent/exmobwin/d/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " thisMd5: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " md5: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v13, v2}, Lcom/tencent/exmobwin/c/c;->d(I)V

    invoke-virtual {v13, v3}, Lcom/tencent/exmobwin/c/c;->e(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/exmobwin/a/b;->b(Lcom/tencent/exmobwin/c/c;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/tencent/exmobwin/a/b;->a(I)V

    goto/16 :goto_2

    :cond_12
    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/exmobwin/a/b;->z:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/tencent/exmobwin/a/b;->C:Z

    invoke-static {v5, v6}, Lcom/tencent/exmobwin/d/a;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/tencent/exmobwin/d/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_13

    invoke-virtual {v13, v2}, Lcom/tencent/exmobwin/c/c;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_4

    :cond_13
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/tencent/exmobwin/c/c;->d(Ljava/lang/String;)V

    const/4 v2, 0x2

    goto :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "interruptHttpTasks remove type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " interruptHttpTasks size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-static {v5}, Lcom/tencent/exmobwin/d/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_16
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "type: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " thisMd5: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " md5: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/tencent/exmobwin/c/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v13, v2}, Lcom/tencent/exmobwin/c/c;->d(I)V

    invoke-virtual {v13, v3}, Lcom/tencent/exmobwin/c/c;->e(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tencent/exmobwin/a/b;->b(Lcom/tencent/exmobwin/c/c;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/tencent/exmobwin/a/b;->a(I)V

    goto/16 :goto_0

    :cond_17
    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/exmobwin/a/b;->z:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/tencent/exmobwin/a/b;->C:Z

    invoke-static {v4, v5}, Lcom/tencent/exmobwin/d/a;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/tencent/exmobwin/d/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    invoke-virtual {v13, v2}, Lcom/tencent/exmobwin/c/c;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_5

    :cond_18
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/tencent/exmobwin/c/c;->d(Ljava/lang/String;)V

    const/4 v2, 0x2

    goto :goto_5

    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/exmobwin/d/a;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/tencent/exmobwin/a/h;->c([B)[B

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_7
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "DownloadManager"

    const-string v3, "Download report failed!"

    invoke-static {v2, v3}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_3
    :try_start_8
    const-string v2, "DownloadManager"

    const-string v3, "Download report succeed!"

    invoke-static {v2, v3}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    move v7, v8

    move v8, v9

    move-object/from16 v19, v6

    move-object v6, v5

    move-object/from16 v5, v19

    move-object/from16 v20, v3

    move-object v3, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v10

    move-wide/from16 v9, v21

    goto/16 :goto_1

    :catchall_3
    move-exception v3

    move-object v4, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-wide/from16 v19, v10

    move-wide/from16 v9, v19

    goto/16 :goto_1

    :catchall_4
    move-exception v3

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-object/from16 v19, v3

    move-object v3, v5

    move-object v5, v4

    move-object/from16 v4, v19

    move-wide/from16 v20, v10

    move-wide/from16 v9, v20

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    sget-boolean v0, Lcom/tencent/exmobwin/a/b;->x:Z

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    sput-boolean v7, Lcom/tencent/exmobwin/a/b;->x:Z

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/exmobwin/b/b;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/tencent/exmobwin/b/b;->m:Lcom/tencent/exmobwin/c/c;

    if-eqz v3, :cond_0

    sget-object v4, Lcom/tencent/exmobwin/a/b;->s:[B

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v5, p0, Lcom/tencent/exmobwin/a/b;->t:Ljava/util/List;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/tencent/exmobwin/a/b;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, v0, Lcom/tencent/exmobwin/b/b;->f:Z

    const/4 v4, 0x0

    iput v4, v0, Lcom/tencent/exmobwin/b/b;->e:I

    const-string v4, "RANGE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/exmobwin/c/c;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/tencent/exmobwin/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-virtual {v0, v4, v5}, Lcom/tencent/exmobwin/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/exmobwin/a/b;->z:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/exmobwin/b/h;->a(Landroid/content/Context;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/tencent/exmobwin/b/b;->a(Lcom/tencent/exmobwin/b/b;I)V

    const-string v0, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "continue download type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " name:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/tencent/exmobwin/c/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " offset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/tencent/exmobwin/c/c;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    sget-boolean v0, Lcom/tencent/exmobwin/a/b;->x:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    sput-boolean v5, Lcom/tencent/exmobwin/a/b;->x:Z

    goto/16 :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/exmobwin/b/b;

    if-eqz v0, :cond_0

    iput-boolean v7, v0, Lcom/tencent/exmobwin/b/b;->f:Z

    iget-object v0, v0, Lcom/tencent/exmobwin/b/b;->m:Lcom/tencent/exmobwin/c/c;

    if-eqz v0, :cond_0

    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "interrupt download type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/c;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "DownloadManager"

    const-string v1, "Download manager destroy!"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->u:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v3, p0, Lcom/tencent/exmobwin/a/b;->u:Ljava/util/HashMap;

    :cond_2
    sget-object v1, Lcom/tencent/exmobwin/a/b;->s:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->t:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/exmobwin/a/b;->t:Ljava/util/List;

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->v:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->v:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v3, p0, Lcom/tencent/exmobwin/a/b;->v:Ljava/util/HashMap;

    :cond_4
    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->A:Lcom/tencent/exmobwin/b/h;

    invoke-virtual {v0}, Lcom/tencent/exmobwin/b/h;->f()V

    iput-object v3, p0, Lcom/tencent/exmobwin/a/b;->z:Landroid/content/Context;

    return-void

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/exmobwin/a/b;->w:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/exmobwin/b/b;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/exmobwin/b/b;->f:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/tencent/exmobwin/c/c;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->u:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->u:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->y:Lcom/tencent/exmobwin/c/f;

    if-nez v0, :cond_1

    const-string v0, "DownloadManager"

    const-string v1, "dbService is null!!"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/exmobwin/a/b;->y:Lcom/tencent/exmobwin/c/f;

    invoke-virtual {v0, p1}, Lcom/tencent/exmobwin/c/f;->c(Lcom/tencent/exmobwin/c/c;)V

    goto :goto_0
.end method
