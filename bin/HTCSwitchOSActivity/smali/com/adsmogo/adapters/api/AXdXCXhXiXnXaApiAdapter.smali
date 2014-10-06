.class public Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/adsmogo/adview/AdsMogoLayout;

.field private c:Ljava/lang/String;

.field private d:Lcom/adsmogo/model/obj/Adchina;

.field private e:Landroid/webkit/WebView;

.field private f:D

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "AdChinaApi Loaded"

    const-string v1, "Version:100"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->getLoadedMap()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x2725

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

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->c:Ljava/lang/String;

    const-string v0, "AdsMOGO SDK"

    const-string v1, "start AdChinaApiAdapter"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)V
    .locals 13

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget-object v2, v0, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "120"

    const-string v5, "0"

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v6, ""

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getWidthAndHeight(Landroid/content/Context;)[I

    move-result-object v1

    const-string v0, ""

    array-length v10, v1

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    aget v10, v1, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "x"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v10, 0x1

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "1.0.0,"

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "android "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a:Landroid/app/Activity;

    invoke-static {v10}, Lcom/adsmogo/util/GetUserInfo;->getLineNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v10}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",,,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getLatitudeAndlongitude()Ljava/lang/String;

    move-result-object v10

    const-string v1, ""

    const-string v0, ""

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    const/4 v0, 0x0

    aget-object v1, v10, v0

    const/4 v0, 0x1

    aget-object v0, v10, v0

    :cond_1
    const-string v10, "http://amob.acs86.com/a.htm?pv=1&sp=%s,0,0,0,0,1,1,10&stt=4&cb=%s&mpid=%s&ut=%s&muid=%s&ip=%s&ua=%s&g=4&bn=%s&ma=%s&lat=%s&lon=%s"

    const/16 v11, 0xb

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v2, 0x1

    aput-object v3, v11, v2

    const/4 v2, 0x2

    aput-object v4, v11, v2

    const/4 v2, 0x3

    aput-object v5, v11, v2

    const/4 v2, 0x4

    aput-object v6, v11, v2

    const/4 v2, 0x5

    aput-object v7, v11, v2

    const/4 v2, 0x6

    aput-object v8, v11, v2

    const/4 v2, 0x7

    aput-object v9, v11, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->i:Ljava/lang/String;

    aput-object v3, v11, v2

    const/16 v2, 0x9

    aput-object v1, v11, v2

    const/16 v1, 0xa

    aput-object v0, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adChina url is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    :goto_0
    return-void

    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adChina return is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a(ZLandroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adchina request err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "json>>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->c(Ljava/lang/String;)Lcom/adsmogo/model/obj/Adchina;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d:Lcom/adsmogo/model/obj/Adchina;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d:Lcom/adsmogo/model/obj/Adchina;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_4
    const-string v0, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style>"

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d:Lcom/adsmogo/model/obj/Adchina;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Adchina;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "img"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<a href=\'%s\'><img width=\'320\' height=\'48\' src=\'%s\'></img></a>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d:Lcom/adsmogo/model/obj/Adchina;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Adchina;->getCu()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d:Lcom/adsmogo/model/obj/Adchina;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Adchina;->getImg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/adapters/api/g;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/adapters/api/g;-><init>(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<a href=\'%s\'><div style=\'width:320px;height:48px;\'><p style=\'line-height:48px;text-align:center\'>%s</p></div></a>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d:Lcom/adsmogo/model/obj/Adchina;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Adchina;->getCu()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d:Lcom/adsmogo/model/obj/Adchina;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Adchina;->getTxt()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v0, "AdsMOGO SDK"

    const-string v1, "adChina request  err:StatusCode is not 200"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a(ZLandroid/view/ViewGroup;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x15

    iget v2, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->g:I

    iget v3, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->h:I

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Lcom/adsmogo/adview/AdsMogoLayout;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    const/16 v1, 0x7530

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adchina load URL ok"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adchina load URL err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Lcom/adsmogo/model/obj/Adchina;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d:Lcom/adsmogo/model/obj/Adchina;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/adsmogo/model/obj/Adchina;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "adchina is null"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "AdsMOGO SDK"

    const-string v2, "adchina xml is null"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adchina xml not have ad root info-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/adsmogo/model/obj/Adchina;

    invoke-direct {v1}, Lcom/adsmogo/model/obj/Adchina;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v2, v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/Adchina;->setType(Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/Adchina;->setCu(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "rbu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/Adchina;->setRbu(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "itu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/Adchina;->setItu(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ctu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/Adchina;->setCtu(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/Adchina;->setTxt(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "img"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/Adchina;->setImg(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method static synthetic d(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
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

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/Activity;

    if-eqz v6, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e:Landroid/webkit/WebView;

    new-instance v2, Lcom/adsmogo/adapters/api/i;

    invoke-direct {v2, p0, v7}, Lcom/adsmogo/adapters/api/i;-><init>(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e:Landroid/webkit/WebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-direct {v0, v6}, Lcom/adsmogo/adview/ShowFullScreenDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v7}, Lcom/adsmogo/adview/ShowFullScreenDialog;->showFullAdDialog(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->e:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 0

    return-void
.end method

.method public handle()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->f:D

    const/16 v0, 0x30

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->f:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->h:I

    const/16 v0, 0x140

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->f:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->g:I

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a:Landroid/app/Activity;

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/adsmogo/adapters/api/h;-><init>(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;B)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0
.end method
