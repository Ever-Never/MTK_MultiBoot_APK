.class public Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# static fields
.field private static a:Lcom/adsmogo/model/obj/CaseeAD;


# instance fields
.field private b:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Casee API Loaded"

    const-string v1, "Version:100"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->getLoadedMap()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x2729

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

.method static synthetic a()Lcom/adsmogo/model/obj/CaseeAD;
    .locals 1

    sget-object v0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a:Lcom/adsmogo/model/obj/CaseeAD;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adview/AdsMogoLayout;Ljava/lang/String;)Lcom/adsmogo/model/obj/CaseeAD;
    .locals 1

    invoke-static {p0, p1}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->b(Lcom/adsmogo/adview/AdsMogoLayout;Ljava/lang/String;)Lcom/adsmogo/model/obj/CaseeAD;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/adsmogo/model/obj/CaseeAD;
    .locals 8

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ad is null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/adsmogo/model/obj/CaseeAD;

    const-string v1, "adid"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adurl"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adname"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "ulogo"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/adsmogo/model/obj/CaseeAD;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/adsmogo/model/obj/CaseeAD;->getuLogo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/adsmogo/model/obj/CaseeAD;->getuLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v0, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Lcom/adsmogo/model/obj/CaseeAD;->setuLogoDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Get CaseeAD By Json Fail"

    invoke-static {v2, v3, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/model/obj/CaseeAD;)V
    .locals 0

    sput-object p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a:Lcom/adsmogo/model/obj/CaseeAD;

    return-void
.end method

.method private static b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v0, "src"

    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Unable to fetchImage(): "

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)Lcom/adsmogo/controller/listener/AdsMogoCoreListener;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    return-object v0
.end method

.method private static b(Lcom/adsmogo/adview/AdsMogoLayout;Ljava/lang/String;)Lcom/adsmogo/model/obj/CaseeAD;
    .locals 7

    const/4 v1, 0x0

    const-string v2, "getAd"

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "%s?_m=%s&appid=%s&imei=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "http://wap.casee.cn/mo/Mogo.ad"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object p1, v4, v2

    const/4 v2, 0x3

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "{}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v0, "AdsMOGO SDK"

    const-string v2, "CaseeAD json is null"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-static {v0}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a(Ljava/lang/String;)Lcom/adsmogo/model/obj/CaseeAD;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    const-string v3, "getCaseeAD SocketException"

    invoke-static {v2, v3, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    const-string v3, "getCaseeAD"

    invoke-static {v2, v3, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)V
    .locals 8

    const/4 v7, -0x2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "will display CaseeAD"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v1

    const/16 v3, 0x32

    invoke-static {v3, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v3

    int-to-double v3, v3

    const/16 v5, 0x140

    invoke-static {v5, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-double v1, v1

    const-string v5, "AdsMOGO SDK"

    const-string v6, "CaseeAD type: banner"

    invoke-static {v5, v6}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a:Lcom/adsmogo/model/obj/CaseeAD;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a:Lcom/adsmogo/model/obj/CaseeAD;

    invoke-virtual {v5}, Lcom/adsmogo/model/obj/CaseeAD;->getuLogoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->b:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a:Lcom/adsmogo/model/obj/CaseeAD;

    invoke-virtual {v6}, Lcom/adsmogo/model/obj/CaseeAD;->getuLogoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    double-to-int v1, v1

    double-to-int v2, v3

    invoke-direct {v6, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    iget v2, v2, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-interface {v0, v1, v2, v7, v7}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_0
.end method


# virtual methods
.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a:Lcom/adsmogo/model/obj/CaseeAD;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a:Lcom/adsmogo/model/obj/CaseeAD;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/CaseeAD;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "AdsMOGO SDK"

    const-string v1, "adMogoLayout or caseeAD or caseeAD lost"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "link"

    sget-object v4, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a:Lcom/adsmogo/model/obj/CaseeAD;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/CaseeAD;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a:Lcom/adsmogo/model/obj/CaseeAD;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/CaseeAD;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    return-void
.end method

.method public handle()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/z;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/adsmogo/adapters/api/z;-><init>(Lcom/adsmogo/model/obj/Ration;Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method
