.class public Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# instance fields
.field a:Lcom/adsmogo/adview/AdsMogoLayout;

.field private b:D

.field private c:I

.field private d:I

.field private e:Landroid/webkit/WebView;

.field private f:Landroid/webkit/WebView;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Adfonic API Loaded"

    const-string v1, "Version:100"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->getLoadedMap()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x2756

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

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x46

    iget v2, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->c:I

    iget v3, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->d:I

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_1
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
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;}</style>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->f:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->f:Landroid/webkit/WebView;

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->f:Landroid/webkit/WebView;

    new-instance v3, Lcom/adsmogo/adapters/api/l;

    invoke-direct {v3, p0, v4}, Lcom/adsmogo/adapters/api/l;-><init>(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;B)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->f:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->f:Landroid/webkit/WebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    goto :goto_0
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 0

    return-void
.end method

.method public handle()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->b:D

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->e:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->g:Ljava/lang/String;

    :cond_2
    const/16 v0, 0x32

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->b:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->d:I

    const/16 v0, 0x140

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->b:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->c:I

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/k;

    invoke-direct {v1, p0, v5}, Lcom/adsmogo/adapters/api/k;-><init>(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;B)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v5, v0}, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0
.end method
