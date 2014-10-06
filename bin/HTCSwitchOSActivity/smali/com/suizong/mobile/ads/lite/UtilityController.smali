.class public Lcom/suizong/mobile/ads/lite/UtilityController;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/suizong/mobile/ads/lite/SZEventListener;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/suizong/mobile/ads/lite/SZEventListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const-string v0, "http://down.sina.cn/weibo"

    iput-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    iput-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->d:Ljava/lang/String;

    return-void
.end method

.method final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/suizong/mobile/ads/lite/inner/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    invoke-virtual {v0, p1, p2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public callSuizong(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    const-string v0, "asc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static/range {v0 .. v6}, Lcom/suizong/mobile/ads/lite/inner/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    const-string v0, "adsc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/suizong/mobile/ads/lite/inner/g;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method

.method public displayInWeiboMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/a;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/a;-><init>(FF)V

    move-object v3, v0

    :goto_0
    iget-object v5, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string v7, "http://weibo.cn/dpool/ttt/maps.php?xy=%s,%s&amp;size=320x320&amp;offset=%s"

    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    if-eqz v3, :cond_1

    iget v0, v3, Lcom/suizong/mobile/ads/lite/inner/a;->a:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    iget v0, v3, Lcom/suizong/mobile/ads/lite/inner/a;->b:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/suizong/mobile/ads/lite/inner/a;->a()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v3, v8

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v5, v0, v1, v6}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    invoke-virtual {v0, v9, v4}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_0
.end method

.method public downloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/suizong/mobile/ads/lite/SZEventListener;->downloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public html5AdOnClick()V
    .locals 1

    const-string v0, "html5AdOnClick"

    invoke-static {v0}, Lcom/suizong/mobile/ads/lite/inner/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized html5AdOnStartDragging()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized html5AdOnStopDragging()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->a:Z

    return v0
.end method

.method public makeCall(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    invoke-virtual {v0, p1}, Lcom/suizong/mobile/ads/lite/SZEventListener;->makeCall(Ljava/lang/String;)V

    return-void
.end method

.method public notifyServer(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "/click?"

    const-string v1, "/action?"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/suizong/mobile/ads/lite/inner/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/suizong/mobile/ads/lite/inner/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public openExternal(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    invoke-virtual {v0, p1}, Lcom/suizong/mobile/ads/lite/SZEventListener;->openExternalBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public openInWeiboBrowser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "http://www.suizong.com"

    :cond_1
    iget-object v1, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public openInner(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    invoke-virtual {v0, p1}, Lcom/suizong/mobile/ads/lite/SZEventListener;->openInnerBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public openQrcodeScanner(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sinaweibo://qrcode"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "extparam"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public postNewWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p4}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p5}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/a;

    invoke-static {p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/a;-><init>(FF)V

    :cond_0
    iget-object v1, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p6 .. p6}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p7 .. p7}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_1

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sinaweibo://sendweibo"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "content"

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "poiid"

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "poiname"

    invoke-virtual {v8, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v2, "longitude"

    iget v3, v0, Lcom/suizong/mobile/ads/lite/inner/a;->a:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "latitude"

    iget v0, v0, Lcom/suizong/mobile/ads/lite/inner/a;->b:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "pageid"

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "extparam"

    invoke-virtual {v8, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/suizong/mobile/ads/lite/SZEventListener;->sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    invoke-virtual {v0, p1, p2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public viewNearbyPeople(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/a;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/suizong/mobile/ads/lite/inner/a;-><init>(FF)V

    :goto_0
    iget-object v2, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sinaweibo://nearbypeople"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    const-string v6, "longitude"

    iget v7, v0, Lcom/suizong/mobile/ads/lite/inner/a;->a:F

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "latitude"

    iget v7, v0, Lcom/suizong/mobile/ads/lite/inner/a;->b:F

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "offset"

    invoke-virtual {v0}, Lcom/suizong/mobile/ads/lite/inner/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "extparam"

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public viewNearbyWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/a;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/suizong/mobile/ads/lite/inner/a;-><init>(FF)V

    :goto_0
    iget-object v2, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sinaweibo://nearbyweibo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    const-string v6, "longitude"

    iget v7, v0, Lcom/suizong/mobile/ads/lite/inner/a;->a:F

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "latitude"

    iget v7, v0, Lcom/suizong/mobile/ads/lite/inner/a;->b:F

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "offset"

    invoke-virtual {v0}, Lcom/suizong/mobile/ads/lite/inner/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "extparam"

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public viewPageDetailInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sinaweibo://pagedetailinfo"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "pageid"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardid"

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    invoke-virtual {v6, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extparam"

    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public viewPageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sinaweibo://pageinfo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "pageid"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extparam"

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public viewPagePhotoList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_3

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sinaweibo://pagephotolist"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "pageid"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardid"

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "page"

    const-string v2, "1"

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "count"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extparam"

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public viewPageProductList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_3

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sinaweibo://pageproductlist"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "pageid"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardid"

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "page"

    const-string v2, "1"

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "count"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extparam"

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public viewPageUserList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_3

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sinaweibo://pageuserlist"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "pageid"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardid"

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "page"

    const-string v2, "1"

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "count"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extparam"

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public viewPageWeiboList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "pageId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "cardId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_3

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "count\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sinaweibo://pageweibolist"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "pageid"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cardid"

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "page"

    const-string v2, "1"

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "count"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extparam"

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public viewUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "uid\u548cnick\u5fc5\u987b\u81f3\u5c11\u6709\u4e00\u4e2a\u4e0d\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sinaweibo://userinfo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "uid"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nick"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extparam"

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public viewUsertrends(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/suizong/mobile/ads/lite/UtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "context\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/suizong/mobile/ads/lite/UtilityController;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/suizong/mobile/ads/lite/inner/b;

    const-string v1, "uid\u548cnick\u5fc5\u987b\u81f3\u5c11\u6709\u4e00\u4e2a\u4e0d\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sinaweibo://usertrends"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "uid"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extparam"

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/suizong/mobile/ads/lite/inner/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->b:Lcom/suizong/mobile/ads/lite/SZEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/SZEventListener;->launchWeiboApp(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public weiboDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/suizong/mobile/ads/lite/UtilityController;->e:Ljava/lang/String;

    return-void
.end method
