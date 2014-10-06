.class public Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# static fields
.field private static b:Ljava/lang/String;

.field private static f:Landroid/webkit/WebView;


# instance fields
.field a:Ljava/lang/String;

.field private c:D

.field private d:D

.field private e:D

.field private g:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "http://soma.smaato.net/oapi/reqAd.jsp?adspace=%s&pub=%s&beacon=true&devip=%s&device=%s&dimension=xxlarge&client=somaapi-401&format=img&response=HTML&ownid=%s"

    sput-object v0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->b:Ljava/lang/String;

    const-string v0, "Smaato API Loaded"

    const-string v1, "Version:100"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->getLoadedMap()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x2733

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x23

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->e:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->d:D

    double-to-int v3, v3

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
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


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Serving Smaato type: banner"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->g:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    const-string v0, "width=\"300\""

    const-string v1, "width=\"320\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->g:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<style> *{margin: 0px; padding: 0px;}</style>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->g:Landroid/webkit/WebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/U;

    invoke-direct {v1, p0, v4}, Lcom/adsmogo/adapters/api/U;-><init>(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->g:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->g:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Smaato Finished"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sput-object v2, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->f:Landroid/webkit/WebView;

    :cond_0
    iput-object v2, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    return-void
.end method

.method public handle()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->f:Landroid/webkit/WebView;

    if-nez v1, :cond_2

    const-string v2, ""

    :goto_1
    iput-object v2, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->c:D

    const/16 v1, 0x32

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->c:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->d:D

    const/16 v1, 0x140

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->c:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->e:D

    iget-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v1}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/T;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/adsmogo/adapters/api/T;-><init>(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Lcom/adsmogo/model/obj/Ration;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
