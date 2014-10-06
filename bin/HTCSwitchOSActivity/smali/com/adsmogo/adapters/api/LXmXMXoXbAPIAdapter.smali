.class public Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field a:Lcom/adsmogo/model/obj/LmMob;

.field private c:D

.field private d:D

.field private e:D

.field private f:Landroid/webkit/WebView;

.field private g:Lcom/adsmogo/adview/AdsMogoLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "http://adserving.imMob.cn/queryad?adu=%s&uid=%s&at=1&ua=%s&sh=48&sw=320&ip=%s&mod=3&rf=2&pv=2.1&gmo=+8"

    sput-object v0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->b:Ljava/lang/String;

    const-string v0, "LmMob API Loaded"

    const-string v1, "Version:100"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->getLoadedMap()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x273e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "LmMob request Fail at json is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v5}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/adsmogo/model/obj/LmMob;

    invoke-direct {v1}, Lcom/adsmogo/model/obj/LmMob;-><init>()V

    iput-object v1, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/LmMob;->setType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/LmMob;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    const-string v2, "showText"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/LmMob;->setShowText(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    const-string v2, "clickUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/LmMob;->setClickUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LmMob analysis json Fail :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v5}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/LmMob;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    const-string v2, "showImg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/LmMob;->setShowImg(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x2e

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->e:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->d:D

    double-to-int v3, v3

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

    const-string v3, "Serving LmMob type: banner"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->f:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->f:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->f:Landroid/webkit/WebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/J;

    invoke-direct {v1, p0, v6}, Lcom/adsmogo/adapters/api/J;-><init>(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->f:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "LmMob Finished"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    return-void
.end method

.method public handle()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->g:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->g:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->g:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->c:D

    const/16 v0, 0x32

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->c:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->d:D

    const/16 v0, 0x140

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->c:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->e:D

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->g:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->g:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/I;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/adsmogo/adapters/api/I;-><init>(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;Lcom/adsmogo/model/obj/Ration;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0
.end method
