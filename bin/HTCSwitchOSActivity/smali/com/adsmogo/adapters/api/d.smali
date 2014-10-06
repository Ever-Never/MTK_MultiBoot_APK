.class final Lcom/adsmogo/adapters/api/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adapters/api/APIAdapter;

.field private synthetic b:Lcom/adsmogo/adapters/api/APIAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/APIAdapter;Lcom/adsmogo/adapters/api/APIAdapter;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/d;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/d;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v2, :cond_1

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Request API adMogoLayout=null"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, v2, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-nez v3, :cond_2

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Request API activity=null"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getOperators(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v0, v5, Lcom/adsmogo/adapters/api/APIAdapter;->c:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getCell(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getLac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getScreenSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[*]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v6, "320"

    const-string v5, "480"

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->IsCanUseSdCard()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "1"

    move-object v9, v7

    :goto_1
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getLineNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    array-length v7, v8

    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v7, v0, :cond_7

    const/4 v5, 0x0

    aget-object v6, v8, v5

    const/4 v5, 0x1

    aget-object v5, v8, v5

    move-object v7, v5

    move-object v8, v6

    :goto_2
    iget-object v5, v2, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v5}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    move-object/from16 v0, v25

    iput-object v0, v5, Lcom/adsmogo/adapters/api/APIAdapter;->b:Ljava/lang/String;

    const-string v5, ""

    const-string v6, "location"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v6, "gps"

    invoke-virtual {v3, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v6, "network"

    invoke-virtual {v3, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_4
    :try_start_2
    invoke-static {}, Lcom/adsmogo/adapters/api/APIAdapter;->b()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x17

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object v25, v6, v26

    const/16 v25, 0x1

    const-string v26, "320"

    aput-object v26, v6, v25

    const/16 v25, 0x2

    const-string v26, "50"

    aput-object v26, v6, v25

    const/16 v25, 0x3

    aput-object v14, v6, v25

    const/4 v14, 0x4

    aput-object v13, v6, v14

    const/4 v13, 0x5

    aput-object v17, v6, v13

    const/4 v13, 0x6

    aput-object v15, v6, v13

    const/4 v13, 0x7

    aput-object v18, v6, v13

    const/16 v13, 0x8

    aput-object v16, v6, v13

    const/16 v13, 0x9

    aput-object v12, v6, v13

    const/16 v12, 0xa

    aput-object v11, v6, v12

    const/16 v11, 0xb

    aput-object v10, v6, v11

    const/16 v10, 0xc

    aput-object v8, v6, v10

    const/16 v8, 0xd

    aput-object v7, v6, v8

    const/16 v7, 0xe

    aput-object v3, v6, v7

    const/16 v3, 0xf

    invoke-static {}, Lcom/adsmogo/adapters/api/APIAdapter;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/16 v3, 0x10

    aput-object v19, v6, v3

    const/16 v3, 0x11

    aput-object v20, v6, v3

    const/16 v3, 0x12

    aput-object v9, v6, v3

    const/16 v3, 0x13

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    const/16 v3, 0x14

    aput-object v22, v6, v3

    const/16 v3, 0x15

    aput-object v23, v6, v3

    const/16 v3, 0x16

    aput-object v24, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    :goto_5
    :try_start_3
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v5, 0x7530

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v5, 0x7530

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;)V

    const-string v4, "[?]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v6, " "

    const-string v7, "%20"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "A8tFVImbBuvsmBw3wdqs8E6jsRQsSPkQDf34"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adsmogo/util/AdsMogoUtilTool;->convertToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v3, "MOGO_API_AUTHKEY"

    const-string v7, "mogo_sdk"

    invoke-virtual {v6, v3, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MOGO_API_SIGNATURE"

    invoke-virtual {v6, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_5

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "json"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v4, v3}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v3, v3, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    if-eqz v3, :cond_0

    const-string v3, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style>"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v4, v4, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/APIAD;->getAdType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_6
    :pswitch_0
    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/adsmogo/adapters/api/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-direct {v4, v5, v3}, Lcom/adsmogo/adapters/api/b;-><init>(Lcom/adsmogo/adapters/api/APIAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;ZLandroid/view/ViewGroup;)V

    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "API request err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_4
    const-string v7, "0"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v9, v7

    goto/16 :goto_1

    :catch_1
    move-exception v3

    :cond_4
    move-object v3, v5

    goto/16 :goto_4

    :catch_2
    move-exception v3

    const-string v5, "AdsMOGO SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "API parse JSON or Stringformat err :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;ZLandroid/view/ViewGroup;)V

    move-object v3, v4

    goto/16 :goto_5

    :pswitch_1
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<a href=\'%s\'><img width=\'320\' height=\'50\' src=\'%s\'></img></a>"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v7, v7, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v7, v7, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v7, v7, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v7, v7, Lcom/adsmogo/model/obj/APIAD;->adImg:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<a href=\'%s\'><div style=\'width:320px;height:50px;\'><img style=\'width:45px;height:45px;float:left;padding:2px\' src=\'%s\'></img> <p style=\'line-height:50px;color:#000;\'>%s</p></div></a>"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v7, v7, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v7, v7, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v7, v7, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v7, v7, Lcom/adsmogo/model/obj/APIAD;->adImg:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v7, v7, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v7, v7, Lcom/adsmogo/model/obj/APIAD;->adText:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<div style=\'width:320px;height:50px;\'>%s</div>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v7, v7, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v7, v7, Lcom/adsmogo/model/obj/APIAD;->adText:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<a href=\'%s\'><div style=\'width:320px;height:50px;\'><p style=\'line-height:50px;text-align:center\'>%s</p></div></a>"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v7, v7, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v7, v7, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v7, v7, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v7, v7, Lcom/adsmogo/model/obj/APIAD;->adText:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :cond_5
    const-string v2, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "API request StatusCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/d;->b:Lcom/adsmogo/adapters/api/APIAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;ZLandroid/view/ViewGroup;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_6
    move-object v3, v6

    goto/16 :goto_3

    :cond_7
    move-object v7, v5

    move-object v8, v6

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
