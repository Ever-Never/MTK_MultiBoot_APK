.class public Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# static fields
.field private static a:Ljava/lang/String;

.field private static g:Landroid/webkit/WebView;


# instance fields
.field private b:D

.field private c:D

.field private d:D

.field private e:Landroid/webkit/WebView;

.field private f:Lcom/adsmogo/model/obj/WeiQian;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "http://s2s.adwaken.cn:8090/wqs2s/getad?dev=%s&key=%s&as=%s&pf=Android&pkg=%s&sw=320&sh=48&exm=true&IP=%s&ac=%s&sr=%s&ct=%s&mf=%s&md=%s&imei=%s&imsi=%s&sv=%s"

    sput-object v0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a:Ljava/lang/String;

    const-string v0, "WeiQian API Loaded"

    const-string v1, "Version:100"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->getLoadedMap()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x2748

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->h:Ljava/lang/String;

    const-string v0, "AdsMOGO SDK"

    const-string v1, "WeiQianAPIAdapter start"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Lorg/json/JSONObject;)Lcom/adsmogo/model/obj/WeiQian;
    .locals 1

    invoke-static {p1}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lorg/json/JSONObject;)Lcom/adsmogo/model/obj/WeiQian;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/adsmogo/model/obj/WeiQian;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/adsmogo/model/obj/WeiQian;

    invoke-direct {v0}, Lcom/adsmogo/model/obj/WeiQian;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "ads"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v1, "type"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/model/obj/WeiQian;->setType(Ljava/lang/String;)V

    const-string v4, "text"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "headline"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/model/obj/WeiQian;->setHeadline(Ljava/lang/String;)V

    const-string v1, "body"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/model/obj/WeiQian;->setBody(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :try_start_2
    const-string v1, "clickUrl"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    :try_start_3
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v1}, Lcom/adsmogo/model/obj/WeiQian;->setClickUrl(Ljava/lang/String;)V

    :cond_3
    const-string v1, "url"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/model/obj/WeiQian;->setUrl(Ljava/lang/String;)V

    const-string v1, "beacons"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "view"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/WeiQian;->setBeaconsViewUrl(Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v1, ""

    goto :goto_1

    :cond_5
    const-string v6, "click"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/WeiQian;->setBeaconsClickUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_4
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Lcom/adsmogo/model/obj/WeiQian;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->f:Lcom/adsmogo/model/obj/WeiQian;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x38

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->d:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->c:D

    double-to-int v3, v3

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->h:Ljava/lang/String;

    return-object v0
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

.method static synthetic c(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/model/obj/WeiQian;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->f:Lcom/adsmogo/model/obj/WeiQian;

    return-object v0
.end method

.method static synthetic d(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/controller/listener/AdsMogoCoreListener;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->e:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->f:Lcom/adsmogo/model/obj/WeiQian;

    if-nez v0, :cond_2

    invoke-direct {p0, v6, v1}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->f:Lcom/adsmogo/model/obj/WeiQian;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/WeiQian;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v6, v1}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_4
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style><a href=\'www.baidu.com\'><div style=\'width:320dpx;height:48dpx; \'><img style=\'width:42dpx;height:42dpx;float:left;padding:3px;\' src=\'%s\'><div style=\'height:48dpx;\' ><p>%s</p><p>%s</p></div></div></a>"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->f:Lcom/adsmogo/model/obj/WeiQian;

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/WeiQian;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->f:Lcom/adsmogo/model/obj/WeiQian;

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/WeiQian;->getHeadline()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->f:Lcom/adsmogo/model/obj/WeiQian;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/WeiQian;->getBody()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->e:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/ag;

    invoke-direct {v1, p0, v6}, Lcom/adsmogo/adapters/api/ag;-><init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    :cond_5
    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} </style><a href=\'www.baidu.com\'><div style=\'width:320dpx;height:48dpx;\'><img width=\'320\' height=\'48\' src=\'%s\'></img></div></a>"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->f:Lcom/adsmogo/model/obj/WeiQian;

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/WeiQian;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->e:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->f:Lcom/adsmogo/model/obj/WeiQian;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/WeiQian;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->e:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 0

    return-void
.end method

.method public handle()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

    sput-object v2, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->g:Landroid/webkit/WebView;

    if-nez v1, :cond_2

    const-string v2, ""

    :goto_1
    invoke-static {v2}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->b:D

    const/16 v1, 0x30

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->b:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->c:D

    const/16 v1, 0x140

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->b:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->d:D

    iget-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v1}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/ae;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/adsmogo/adapters/api/ae;-><init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Lcom/adsmogo/model/obj/Ration;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->g:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
