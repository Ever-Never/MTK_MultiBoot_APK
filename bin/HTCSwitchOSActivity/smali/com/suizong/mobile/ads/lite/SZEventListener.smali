.class public abstract Lcom/suizong/mobile/ads/lite/SZEventListener;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/suizong/mobile/ads/lite/UtilityController;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/suizong/mobile/ads/lite/UtilityController;

    invoke-direct {v0, p1, p0}, Lcom/suizong/mobile/ads/lite/UtilityController;-><init>(Landroid/content/Context;Lcom/suizong/mobile/ads/lite/SZEventListener;)V

    iput-object v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->a:Lcom/suizong/mobile/ads/lite/UtilityController;

    iput-object p1, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->b:Landroid/webkit/WebView;

    iput-boolean v2, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->d:Z

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->b:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/suizong/mobile/ads/lite/inner/g;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->a:Lcom/suizong/mobile/ads/lite/UtilityController;

    const-string v2, "ORMMAUtilityControllerBridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lcom/suizong/mobile/ads/lite/inner/d;

    invoke-direct {v1, p0}, Lcom/suizong/mobile/ads/lite/inner/d;-><init>(Lcom/suizong/mobile/ads/lite/SZEventListener;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
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

.method public static synthetic a(Lcom/suizong/mobile/ads/lite/SZEventListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Your app didn\'t shutdown safely. Because your app didn\'t call the \'destroy()\' method and some resource didn\'t release. Please fix this bug."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public completeAction()V
    .locals 1

    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->a:Lcom/suizong/mobile/ads/lite/UtilityController;

    invoke-virtual {v0}, Lcom/suizong/mobile/ads/lite/UtilityController;->b()V

    return-void
.end method

.method public destroy()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->c:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/suizong/mobile/ads/lite/inner/g;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->a:Lcom/suizong/mobile/ads/lite/UtilityController;

    invoke-virtual {v0}, Lcom/suizong/mobile/ads/lite/UtilityController;->a()V

    iput-object v3, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->a:Lcom/suizong/mobile/ads/lite/UtilityController;

    iput-object v3, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->b:Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->c:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->d:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public abstract downloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract launchApp(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract launchWeiboApp(ZLjava/lang/String;)V
.end method

.method public abstract makeCall(Ljava/lang/String;)V
.end method

.method public abstract openExternalBrowser(Ljava/lang/String;)V
.end method

.method public abstract openInnerBrowser(Ljava/lang/String;)V
.end method

.method public abstract sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendSMS(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public sendShowlog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://sapi.suizong.com/libra-node-ads-frontend/show?sid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&adid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/suizong/mobile/ads/lite/SZEventListener;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/suizong/mobile/ads/lite/inner/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/suizong/mobile/ads/lite/inner/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
