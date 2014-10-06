.class public Lcom/adsmogo/adapters/api/APIAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# static fields
.field public static final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static l:Landroid/webkit/WebView;

.field private static m:Ljava/lang/String;


# instance fields
.field a:Lcom/adsmogo/model/obj/APIAD;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private g:D

.field private h:D

.field private i:D

.field private j:Landroid/webkit/WebView;

.field private k:Lcom/adsmogo/adview/AdsMogoLayout;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "http://api.adsmogo.net/ad.mh?appid=%s&width=%s&height=%s&imei=%s&mac=%s&v=%s&imsi=%s&net=%s&mno=%s&manu=%s&device=%s&os=%s&screen_w=%s&screen_h=%s&la=%s&ua=%s&cell=%s&lac=%s&sd=%s&desity=%s&pkg=%s&pn=%s&androidid=%s"

    sput-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->e:Ljava/lang/String;

    const-string v0, "http://api.adsmogo.net/Event.mh?type=%s&appid=%s&sessionid=%s"

    sput-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->f:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->m:Ljava/lang/String;

    const-string v0, "API API Loaded"

    const-string v1, "Version:101"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->getLoadedMap()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x2752

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V

    const-string v0, "1.0.1"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->n:Z

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/APIAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Landroid/webkit/WebView;)V
    .locals 0

    sput-object p0, Lcom/adsmogo/adapters/api/APIAdapter;->l:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/APIAdapter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sput-object p0, Lcom/adsmogo/adview/AdsMogoWebView;->adapter:Lcom/adsmogo/adapters/AdsMogoAdapter;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "link"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/adsmogo/adview/AdsMogoWebView;->adapter:Lcom/adsmogo/adapters/AdsMogoAdapter;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/APIAdapter;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/APIAdapter;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "API request Fail at json is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v5}, Lcom/adsmogo/adapters/api/APIAdapter;->a(ZLandroid/view/ViewGroup;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/adsmogo/model/obj/APIAD;

    invoke-direct {v1}, Lcom/adsmogo/model/obj/APIAD;-><init>()V

    iput-object v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    const-string v2, "sid"

    invoke-static {v0, v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/APIAD;->setSid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    const-string v2, "ad_text"

    invoke-static {v0, v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/APIAD;->setAdText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    const-string v2, "ad_img"

    invoke-static {v0, v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/APIAD;->setAdImg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    const-string v2, "link_url"

    invoke-static {v0, v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/APIAD;->setLinkUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    const-string v2, "apk"

    invoke-static {v0, v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/APIAD;->setApk(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    const-string v2, "ad_type"

    invoke-static {v0, v2}, Lcom/adsmogo/adapters/api/APIAdapter;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/APIAD;->setAdType(I)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    const-string v2, "link_type"

    invoke-static {v0, v2}, Lcom/adsmogo/adapters/api/APIAdapter;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/APIAD;->setLinkType(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API analysis json Fail :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v5}, Lcom/adsmogo/adapters/api/APIAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/APIAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/adsmogo/adapters/api/APIAdapter;->m:Ljava/lang/String;

    return-void
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x42

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/APIAdapter;->i:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/APIAdapter;->h:D

    double-to-int v3, v3

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/APIAdapter;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Serving API type: banner"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsmogo/adapters/api/APIAdapter;->j:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->j:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->j:Landroid/webkit/WebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->j:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/e;

    invoke-direct {v1, p0, v6}, Lcom/adsmogo/adapters/api/e;-><init>(Lcom/adsmogo/adapters/api/APIAdapter;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-boolean v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->n:Z

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/APIAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    sget-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adsmogo/adapters/api/a;

    const-string v2, "2"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/APIAdapter;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v4, v4, Lcom/adsmogo/model/obj/APIAD;->sid:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/adsmogo/adapters/api/a;-><init>(Lcom/adsmogo/adapters/api/APIAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->j:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->j:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget v0, v0, Lcom/adsmogo/model/obj/APIAD;->linkType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adsmogo/adapters/api/a;

    const-string v2, "2"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/APIAdapter;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v4, v4, Lcom/adsmogo/model/obj/APIAD;->sid:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/adsmogo/adapters/api/a;-><init>(Lcom/adsmogo/adapters/api/APIAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/APIAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public finish()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "API Finished"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->l:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    sget-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    sput-object v2, Lcom/adsmogo/adapters/api/APIAdapter;->l:Landroid/webkit/WebView;

    :cond_0
    iput-object v2, p0, Lcom/adsmogo/adapters/api/APIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    return-void
.end method

.method public handle()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->k:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->k:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->k:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->g:D

    const/16 v1, 0x32

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/APIAdapter;->g:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->h:D

    const/16 v1, 0x140

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/APIAdapter;->g:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->i:D

    iget-object v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->k:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v1}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/APIAdapter;->k:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/adapters/api/c;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/adapters/api/c;-><init>(Lcom/adsmogo/adapters/api/APIAdapter;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/adsmogo/adapters/api/APIAdapter;->k:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/d;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/APIAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/adsmogo/adapters/api/d;-><init>(Lcom/adsmogo/adapters/api/APIAdapter;Lcom/adsmogo/adapters/api/APIAdapter;Lcom/adsmogo/model/obj/Ration;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/APIAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onPageComplete()V
    .locals 0

    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->onPageComplete()V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/APIAdapter;->a()V

    return-void
.end method
