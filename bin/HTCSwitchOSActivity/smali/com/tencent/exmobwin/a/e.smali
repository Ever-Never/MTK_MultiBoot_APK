.class public Lcom/tencent/exmobwin/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/exmobwin/b/e;


# static fields
.field public static final a:Ljava/lang/String; = "http://adv.app.qq.com/mobwin_plugin/"

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0xa

.field private static final f:Ljava/lang/String; = "PluginManager"

.field private static final g:Ljava/lang/Object; = null

.field private static h:Lcom/tencent/exmobwin/a/e; = null

.field private static final i:Ljava/lang/String; = "2.0"

.field private static final r:Ljava/lang/String; = "2.0"

.field private static final u:I = 0x1

.field private static final v:I = -0x1

.field private static final w:I = 0x0

.field private static final x:I = 0x1

.field private static final y:I = 0x2


# instance fields
.field private A:I

.field private B:Lcom/tencent/exmobwin/c/f;

.field private C:Lcom/tencent/exmobwin/a/b;

.field private D:Z

.field public e:Z

.field private final s:J

.field private t:Landroid/content/Context;

.field private z:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/exmobwin/a/e;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/exmobwin/a/e;->h:Lcom/tencent/exmobwin/a/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1499700

    iput-wide v0, p0, Lcom/tencent/exmobwin/a/e;->s:J

    iput-object v3, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/exmobwin/a/e;->z:Ljava/util/HashMap;

    iput v2, p0, Lcom/tencent/exmobwin/a/e;->A:I

    iput-object v3, p0, Lcom/tencent/exmobwin/a/e;->B:Lcom/tencent/exmobwin/c/f;

    iput-object v3, p0, Lcom/tencent/exmobwin/a/e;->C:Lcom/tencent/exmobwin/a/b;

    iput-boolean v2, p0, Lcom/tencent/exmobwin/a/e;->e:Z

    iput-boolean v2, p0, Lcom/tencent/exmobwin/a/e;->D:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/exmobwin/a/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/tencent/exmobwin/a/e;
    .locals 2

    sget-object v0, Lcom/tencent/exmobwin/a/e;->h:Lcom/tencent/exmobwin/a/e;

    if-nez v0, :cond_1

    sget-object v1, Lcom/tencent/exmobwin/a/e;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/exmobwin/a/e;->h:Lcom/tencent/exmobwin/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/exmobwin/a/e;

    invoke-direct {v0}, Lcom/tencent/exmobwin/a/e;-><init>()V

    sput-object v0, Lcom/tencent/exmobwin/a/e;->h:Lcom/tencent/exmobwin/a/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/exmobwin/a/e;->h:Lcom/tencent/exmobwin/a/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ZI)Lcom/tencent/exmobwin/c/a;
    .locals 5

    new-instance v1, Lcom/tencent/exmobwin/c/a;

    invoke-direct {v1}, Lcom/tencent/exmobwin/c/a;-><init>()V

    invoke-virtual {v1, p2}, Lcom/tencent/exmobwin/c/a;->a(I)V

    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/exmobwin/d/a;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".jar"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/tencent/exmobwin/d/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/exmobwin/c/a;->b(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private b(Z)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/tencent/exmobwin/a/e;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/exmobwin/a/e;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/exmobwin/a/a;

    invoke-direct {v2, p0, v0}, Lcom/tencent/exmobwin/a/a;-><init>(Lcom/tencent/exmobwin/a/e;Ljava/util/ArrayList;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0"

    return-object v0
.end method

.method private f()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/exmobwin/d/a;->b()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/exmobwin/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "lock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v3, 0x1499700

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const-string v1, "PluginManager"

    const-string v2, "lock\u6587\u4ef6\u751f\u547d\u6ca1\u5230\u534a\u5929\uff0c\u6709\u5176\u4ed6\u5e94\u7528\u5728\u7ba1\u7406\u63d2\u4ef6\uff0c\u672c\u5e94\u7528\u4e0d\u505a\u5904\u7406"

    invoke-static {v1, v2}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "PluginManager"

    const-string v2, "lock\u6587\u4ef6\u751f\u547d\u8d85\u8fc7\u65f6\u95f4\u9650\u5236\uff0c\u5220\u9664"

    invoke-static {v1, v2}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/exmobwin/d/a;->d()V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    invoke-static {}, Lcom/tencent/exmobwin/d/a;->c()V

    iput-boolean v1, p0, Lcom/tencent/exmobwin/a/e;->D:Z

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/exmobwin/d/a;->d()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/exmobwin/a/e;->A:I

    iget v2, p0, Lcom/tencent/exmobwin/a/e;->A:I

    if-eqz v2, :cond_0

    const-string v2, "plugins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "downUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pluginMd5"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pluginVersion"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v4, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v7, Lcom/tencent/exmobwin/c/c;

    invoke-direct {v7}, Lcom/tencent/exmobwin/c/c;-><init>()V

    invoke-virtual {v7, v3}, Lcom/tencent/exmobwin/c/c;->c(I)V

    invoke-virtual {v7, v4}, Lcom/tencent/exmobwin/c/c;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/tencent/exmobwin/c/c;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/tencent/exmobwin/c/c;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)Ljava/util/ArrayList;
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->B:Lcom/tencent/exmobwin/c/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/tencent/exmobwin/a/e;->B:Lcom/tencent/exmobwin/c/f;

    invoke-virtual {v3, v0}, Lcom/tencent/exmobwin/c/f;->b(I)Lcom/tencent/exmobwin/c/c;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, v0}, Lcom/tencent/exmobwin/c/c;->c(I)V

    :cond_2
    invoke-virtual {v3}, Lcom/tencent/exmobwin/c/c;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/tencent/exmobwin/a/e;->a(ZI)Lcom/tencent/exmobwin/c/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->C:Lcom/tencent/exmobwin/a/b;

    invoke-virtual {v0, v3}, Lcom/tencent/exmobwin/a/b;->a(Lcom/tencent/exmobwin/c/c;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/exmobwin/d/a;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Lcom/tencent/exmobwin/c/c;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".jar"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/tencent/exmobwin/d/a;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/exmobwin/d/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {v3, v4}, Lcom/tencent/exmobwin/c/c;->d(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/tencent/exmobwin/c/c;->d(I)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->B:Lcom/tencent/exmobwin/c/f;

    invoke-virtual {v0, v3}, Lcom/tencent/exmobwin/c/f;->c(Lcom/tencent/exmobwin/c/c;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {v0}, Lcom/tencent/exmobwin/d/a;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/tencent/exmobwin/c/c;->d(I)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/tencent/exmobwin/a/e;->a(ZI)Lcom/tencent/exmobwin/c/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 9

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/exmobwin/c/b;

    iget-object v2, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/exmobwin/c/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "imei"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "uuid"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mac"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "basicVersion"

    const-string v4, "2.0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "hasSdCard"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/b;->d()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "netType"

    iget-object v3, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/exmobwin/b/h;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-lt v3, v5, :cond_1

    const-string v0, "plugins"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/exmobwin/c/a;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "type"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/a;->c()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "pluginMd5"

    invoke-virtual {v0}, Lcom/tencent/exmobwin/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(ILcom/tencent/exmobwin/b/b;)V
    .locals 3

    iget v0, p2, Lcom/tencent/exmobwin/b/b;->i:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Check jar is failed! errorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;[I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "PluginManager"

    const-string v3, "initialized!"

    invoke-static {v2, v3}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/tencent/exmobwin/a/e;->e:Z

    iput-object p1, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/exmobwin/a/e;->z:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v3, p2

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    new-instance v1, Lcom/tencent/exmobwin/c/f;

    invoke-direct {v1, p1, v0}, Lcom/tencent/exmobwin/c/f;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/tencent/exmobwin/a/e;->B:Lcom/tencent/exmobwin/c/f;

    new-instance v1, Lcom/tencent/exmobwin/a/b;

    iget-object v2, p0, Lcom/tencent/exmobwin/a/e;->z:Ljava/util/HashMap;

    invoke-direct {v1, p1, v0, v2}, Lcom/tencent/exmobwin/a/b;-><init>(Landroid/content/Context;ZLjava/util/HashMap;)V

    iput-object v1, p0, Lcom/tencent/exmobwin/a/e;->C:Lcom/tencent/exmobwin/a/b;

    invoke-direct {p0, v0}, Lcom/tencent/exmobwin/a/e;->b(Z)V

    return-void

    :cond_0
    aget v4, p2, v2

    packed-switch v4, :pswitch_data_0

    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/tencent/exmobwin/a/e;->z:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Lcom/tencent/exmobwin/banner/a;->a()Lcom/tencent/exmobwin/banner/a;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->z:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/exmobwin/a/i;

    invoke-direct {v1, p0}, Lcom/tencent/exmobwin/a/i;-><init>(Lcom/tencent/exmobwin/a/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    if-eqz p4, :cond_2

    invoke-static {}, Lcom/tencent/exmobwin/banner/a;->a()Lcom/tencent/exmobwin/banner/a;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/tencent/exmobwin/banner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/exmobwin/banner/a;->a()Lcom/tencent/exmobwin/banner/a;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/exmobwin/banner/a;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lorg/apache/http/HttpResponse;Lcom/tencent/exmobwin/b/b;)V
    .locals 5

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/exmobwin/d/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/tencent/exmobwin/a/h;->c([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p2, Lcom/tencent/exmobwin/b/b;->i:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "center_level1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Check response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/exmobwin/a/e;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget v0, p0, Lcom/tencent/exmobwin/a/e;->A:I

    packed-switch v0, :pswitch_data_1

    :cond_2
    :pswitch_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/exmobwin/c/c;

    iget-object v4, p0, Lcom/tencent/exmobwin/a/e;->C:Lcom/tencent/exmobwin/a/b;

    invoke-virtual {v4, v0}, Lcom/tencent/exmobwin/a/b;->a(Lcom/tencent/exmobwin/c/c;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b()Lcom/tencent/exmobwin/a/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->C:Lcom/tencent/exmobwin/a/b;

    return-object v0
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "PluginManager"

    const-string v1, "PluginManager destroy!"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->z:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v2, p0, Lcom/tencent/exmobwin/a/e;->z:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->C:Lcom/tencent/exmobwin/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->C:Lcom/tencent/exmobwin/a/b;

    invoke-virtual {v0}, Lcom/tencent/exmobwin/a/b;->b()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/exmobwin/d/a;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/exmobwin/a/e;->e:Z

    sput-object v2, Lcom/tencent/exmobwin/a/e;->h:Lcom/tencent/exmobwin/a/e;

    iput-object v2, p0, Lcom/tencent/exmobwin/a/e;->t:Landroid/content/Context;

    iput-object v2, p0, Lcom/tencent/exmobwin/a/e;->C:Lcom/tencent/exmobwin/a/b;

    iput-object v2, p0, Lcom/tencent/exmobwin/a/e;->B:Lcom/tencent/exmobwin/c/f;

    invoke-virtual {p0}, Lcom/tencent/exmobwin/a/e;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/exmobwin/a/e;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "PluginManager"

    const-string v1, "\u5220\u9664lock\u6587\u4ef6"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/exmobwin/d/a;->d()V

    :cond_0
    return-void
.end method
