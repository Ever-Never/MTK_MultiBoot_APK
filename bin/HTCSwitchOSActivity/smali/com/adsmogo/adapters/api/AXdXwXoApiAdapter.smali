.class public Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# static fields
.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# instance fields
.field a:Lcom/adsmogo/adview/AdsMogoLayout;

.field private b:Landroid/webkit/WebView;

.field private c:I

.field private d:I

.field private e:D

.field private f:Ljava/lang/String;

.field private g:Landroid/webkit/WebView;

.field private h:Lcom/adsmogo/model/obj/Adwo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, ""

    sput-object v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->i:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->j:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->k:Ljava/lang/String;

    const-string v0, "Adwo API Loaded"

    const-string v1, "Version:100"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->getLoadedMap()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x2731

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

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Create AdwoApiAdapter"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Lcom/adsmogo/model/obj/Adwo;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;Ljava/lang/String;)V
    .locals 24

    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v4, 0x7530

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v4, 0x7530

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    const-string v3, "http://a-ad.adwo.com:18080/adserver"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "AdsMOGO SDK"

    const-string v4, "adwo request Fail at URl err:http://www.admarket.mobi/ftad/apiadreq"

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://a-ad.adwo.com:18080/adserver"

    invoke-direct {v8, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_a

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, "AdsMOGO SDK"

    const-string v4, "adwo request Fail at json is null"

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, v3, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/adsmogo/adapters/api/t;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/adsmogo/adapters/api/t;-><init>(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;B)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adwo request Fail :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, v3, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v12

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->IsCanUseSdCard()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "1"

    :goto_3
    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "2"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "1"

    :goto_4
    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v15}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getMccInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getMncInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->getLanguageCountry()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getLatitudeAndlongitude()Ljava/lang/String;

    move-result-object v19

    const-string v20, "android"

    invoke-static/range {v20 .. v20}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "pid"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "pit"

    const-string v23, "6"

    invoke-direct/range {v21 .. v23}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v21, Lorg/apache/http/message/BasicNameValuePair;

    const-string v22, "muip"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v21, "muid"

    move-object/from16 v0, v21

    invoke-direct {v9, v0, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "aid"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "s"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "ua"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->f:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "sd"

    invoke-direct {v9, v10, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "net"

    invoke-direct {v4, v9, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "osv"

    invoke-direct {v4, v5, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "manu"

    invoke-direct {v4, v5, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "bn"

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mcc_mnc"

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ads"

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->i:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->j:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->k:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v5, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, ""

    sput-object v4, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->i:Ljava/lang/String;

    const-string v4, ""

    sput-object v4, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->j:Ljava/lang/String;

    const-string v4, ""

    sput-object v4, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->k:Ljava/lang/String;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "l"

    move-object/from16 v0, v18

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "loc"

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "os"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getWidthAndHeight(Landroid/content/Context;)[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    aget v3, v3, v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "w"

    invoke-direct {v5, v9, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "h"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v3, v6

    goto/16 :goto_1

    :cond_5
    const-string v4, "0"

    goto/16 :goto_3

    :cond_6
    const-string v5, "0"

    goto/16 :goto_4

    :cond_7
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "resultcode"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v3, "ad"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adwo analysis json Fail :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(ZLandroid/view/ViewGroup;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :cond_8
    :try_start_3
    const-string v4, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adwo fail at:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(ZLandroid/view/ViewGroup;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :cond_9
    :try_start_4
    const-string v3, "AdsMOGO SDK"

    const-string v4, "adwo fail at adwo is null"

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_a
    const-string v4, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adwo request Fail at StatusCode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(ZLandroid/view/ViewGroup;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "|"

    const-string v3, "%7C"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "+"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adwo load URL err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/adsmogo/model/obj/Adwo;

    invoke-direct {v1}, Lcom/adsmogo/model/obj/Adwo;-><init>()V

    iput-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    const-string v2, "actiontype"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/Adwo;->setActiontype(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    const-string v2, "adclickinfo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/Adwo;->setAdclickinfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    const-string v2, "adid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/Adwo;->setAdid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    const-string v2, "adtype"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/Adwo;->setAdtype(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    const-string v2, "adurl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/Adwo;->setAdurl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    const-string v2, "chargeurl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/Adwo;->setChargeurl(Ljava/lang/String;)V

    const-string v1, "showbeaconurl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    invoke-virtual {v1, v4}, Lcom/adsmogo/model/obj/Adwo;->setShowbeaconurl([Ljava/lang/String;)V

    const-string v1, "showbeaconurl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    :goto_1
    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    invoke-virtual {v0, v3}, Lcom/adsmogo/model/obj/Adwo;->setBeaconurl([Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adwo analysisAdsJson err :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Adwo;->getAdid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->i:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->j:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x21

    iget v2, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->c:I

    iget v3, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->d:I

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b:Landroid/webkit/WebView;

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

.method static synthetic c(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adwo click adsmogolayot is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adwo click activity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    if-nez v1, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adwo click adwo is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Adwo;->getChargeurl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Adwo;->getActiontype()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adwo click actiontype is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/Adwo;->getAdclickinfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    sput-object v3, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "link"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->h:Lcom/adsmogo/model/obj/Adwo;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Adwo;->getBeaconurl()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-instance v2, Lcom/adsmogo/adapters/api/s;

    invoke-direct {v2, p0, v1, v0}, Lcom/adsmogo/adapters/api/s;-><init>(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;I[Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/adsmogo/adapters/api/s;->start()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_7
    const-string v3, "3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".apk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "mogo_title"

    const-string v4, "APK"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mogo_link"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "link"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_8
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "link"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_9
    const-string v3, "8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Can\'t call"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    const-string v3, "9"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v1, "[|]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v1, v1, v4

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lt v2, v5, :cond_0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "geo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Can\'t open map"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_b
    const-string v3, "10"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :try_start_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "query"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Can\'t search"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    const-string v3, "12"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :try_start_7
    const-string v1, "[|]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lt v2, v5, :cond_6

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "smsto:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "sms_body"

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Cannot send a message"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_d
    const-string v3, "13"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v1, "[|]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    :try_start_8
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mailto:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_1

    :catch_8
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Can\'t send email"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    const-string v3, "14"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :try_start_9
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_1

    :catch_9
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onclick open activity err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_f
    const-string v3, "15"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_a
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "audio/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_1

    :catch_a
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onclick open activity err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->g:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public handle()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->e:D

    const/16 v1, 0x32

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->e:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    iput v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->d:I

    const/16 v1, 0x140

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->e:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    iput v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->c:I

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/v;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/adsmogo/adapters/api/v;-><init>(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;Lcom/adsmogo/model/obj/Ration;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->g:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
