.class final Lcom/adsmogo/adapters/api/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/model/obj/Ration;

.field private b:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

.field private synthetic c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/ae;->b:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    iput-object p3, p0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/model/obj/Ration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/ae;->b:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v2, :cond_1

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Request  weiQian adMogoLayout=null"

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

    const-string v3, "Request  weiQian activity=null"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    const-string v5, ""

    const-string v7, ""

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/model/obj/Ration;

    iget-object v8, v8, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "AppID"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "PublisherID"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v9, v4

    move-object v10, v5

    :goto_1
    :try_start_1
    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adsmogo/encryption/SHA1;->SHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getMccInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getMncInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    const-string v5, ""

    const-string v4, ""

    iget-object v7, v2, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v7}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getLatitudeAndlongitude()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    array-length v8, v7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_e

    const/4 v4, 0x0

    aget-object v5, v7, v4

    const/4 v4, 0x1

    aget-object v4, v7, v4

    move-object v7, v4

    move-object v8, v5

    :goto_2
    const-string v4, ""

    invoke-static {v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getWidthAndHeight(Landroid/content/Context;)[I

    move-result-object v5

    if-eqz v5, :cond_d

    array-length v0, v5

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v17, 0x1

    aget v17, v5, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "x"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v17, 0x0

    aget v5, v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_3
    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v17, "2"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "1"

    :goto_4
    sget-object v17, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    :try_start_2
    invoke-static {}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->b()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0xd

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v11, v21, v22

    const/4 v11, 0x1

    aput-object v9, v21, v11

    const/4 v9, 0x2

    aput-object v10, v21, v9

    const/4 v9, 0x3

    aput-object v12, v21, v9

    const/4 v9, 0x4

    aput-object v13, v21, v9

    const/4 v9, 0x5

    aput-object v16, v21, v9

    const/4 v9, 0x6

    aput-object v5, v21, v9

    const/4 v5, 0x7

    aput-object v4, v21, v5

    const/16 v4, 0x8

    aput-object v17, v21, v4

    const/16 v4, 0x9

    aput-object v18, v21, v4

    const/16 v4, 0xa

    aput-object v19, v21, v4

    const/16 v4, 0xb

    aput-object v3, v21, v4

    const/16 v3, 0xc

    const-string v4, "1.2.6"

    aput-object v4, v21, v3

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    :goto_5
    :try_start_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&mcc="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&mnc="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&lat="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&lng="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v4}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->b(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&ua="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v4}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->b(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    :cond_7
    :try_start_4
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

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v6, "AdsMOGO SDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "url>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_c

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v2, "AdsMOGO SDK"

    const-string v3, "WeiQian return is null"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;ZLandroid/view/ViewGroup;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;ZLandroid/view/ViewGroup;)V

    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WeiQian request err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;ZLandroid/view/ViewGroup;)V

    const-string v8, "AdsMOGO SDK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "WeiQian parse JSON or Stringformat err :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v7

    move-object v10, v5

    goto/16 :goto_1

    :cond_8
    :try_start_5
    const-string v4, "2"

    goto/16 :goto_4

    :catch_2
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v9}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;ZLandroid/view/ViewGroup;)V

    const-string v4, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "WeiQian URL Stringformat err :"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v3, v6

    goto/16 :goto_5

    :catch_3
    move-exception v2

    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "weiqian api url err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_9
    :try_start_6
    const-string v4, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "json>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ok"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v5, v4}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Lorg/json/JSONObject;)Lcom/adsmogo/model/obj/WeiQian;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Lcom/adsmogo/model/obj/WeiQian;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->c(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)Lcom/adsmogo/model/obj/WeiQian;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v2, v2, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v3, Lcom/adsmogo/adapters/api/ad;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/ae;->b:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    invoke-direct {v3, v4, v5}, Lcom/adsmogo/adapters/api/ad;-><init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;)V

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    goto/16 :goto_0

    :cond_a
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Weiqian ads is null"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "message"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WeiQian request err :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "AdsMOGO SDK"

    const-string v3, "WeiQian request  err:StatusCode is not 200"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/ae;->c:Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;->a(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;ZLandroid/view/ViewGroup;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :cond_d
    move-object v5, v4

    goto/16 :goto_3

    :cond_e
    move-object v7, v4

    move-object v8, v5

    goto/16 :goto_2
.end method
