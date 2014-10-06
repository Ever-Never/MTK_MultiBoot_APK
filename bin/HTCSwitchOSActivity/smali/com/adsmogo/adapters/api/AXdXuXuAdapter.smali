.class public Lcom/adsmogo/adapters/api/AXdXuXuAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# instance fields
.field public a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/adsmogo/adview/AdsMogoLayout;

.field private e:I

.field private f:I

.field private g:D

.field private h:Lcom/adsmogo/model/obj/Aduu;

.field private i:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Aduu API Loaded"

    const-string v1, "Version:100"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->getLoadedMap()Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x274c

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

    const-string v0, "http://api.adcome.cn/v1/adlist"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b:Ljava/lang/String;

    const-string v0, "http://api.adcome.cn/v1/evt"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mogo_num_testpu6epdl67abqp73z"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/util/AdsMogoUtilTool;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "00"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "sourceid"

    const-string v7, "mogo_num_test"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "token"

    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "uuid"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "evttime"

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "reqid"

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Aduu;->getReqid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "evttype"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nettype"

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getAduuNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "adid"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/Aduu;->getAdid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V
    .locals 12

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aduu request Fail at URl err:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b:Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v1, v0, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_13

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url>>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "aduu return is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aduu request Fail :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "mogo_ban_androidk64ib0ly8sjh7ke0"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/util/AdsMogoUtilTool;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "00"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "sourceid"

    const-string v11, "mogo_ban_android"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "AdsMOGO SDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, ">>token>>"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "token"

    invoke-direct {v9, v10, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "uuid"

    invoke-direct {v5, v9, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "timestamp"

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "count"

    const-string v6, "1"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "adpos"

    const-string v6, "adsmogo"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-direct {v4, v5, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imsi"

    invoke-direct {v4, v5, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "brand"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "platform"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "android-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nettype"

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getAduuNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "macaddr"

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getWidthAndHeight(Landroid/content/Context;)[I

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v0, v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "screen"

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appid"

    iget-object v5, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto/16 :goto_1

    :cond_4
    const-string v0, "0S0"

    goto :goto_2

    :cond_5
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "msg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    if-eqz v0, :cond_12

    const-string v0, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style>"

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Aduu;->getShowtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<a href=\'www.baidu.com\'><div style=\'width:320px;height:50px;background-image:url(%s);background-repeat :repeat-x\';><img style=\'width:44px;height:44px;float:left;padding:3px\' src=\'%s\'></img> <p style=\'line-height:50px;color:#000;\'>%s</p></div></a>"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Aduu;->getBg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Aduu;->getIcon()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Aduu;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/adapters/api/m;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/adapters/api/m;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_6
    :try_start_3
    new-instance v0, Lcom/adsmogo/model/obj/Aduu;

    invoke-direct {v0}, Lcom/adsmogo/model/obj/Aduu;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v2, "reqid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Aduu;->setReqid(Ljava/lang/String;)V

    const-string v0, "ads"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "showtype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v2, v1}, Lcom/adsmogo/model/obj/Aduu;->setShowtype(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "adid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsmogo/model/obj/Aduu;->setAdid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "feecode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsmogo/model/obj/Aduu;->setFeecode(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "feetype"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsmogo/model/obj/Aduu;->setFeetype(Ljava/lang/String;)V

    const-string v2, "clicktype"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "AdsMOGO SDK"

    const-string v1, "return Ads is not support"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "analysisJson err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    :cond_7
    :try_start_5
    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "clicktype"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsmogo/model/obj/Aduu;->setClicktype(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "clickcontent"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsmogo/model/obj/Aduu;->setClickcontent(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/Aduu;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v2, "subtext"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/Aduu;->setSubtext(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v2, "icon"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/Aduu;->setIcon(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v2, "bg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/Aduu;->setBg(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v2, "pic"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/Aduu;->setPic(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v2, "pic"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/Aduu;->setPic(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/Aduu;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    const-string v2, "subtext"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/obj/Aduu;->setSubtext(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    const-string v0, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "AdsMOGO SDK"

    const-string v1, "return ads is not support"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    goto/16 :goto_3

    :cond_c
    const-string v0, "AdsMOGO SDK"

    const-string v1, "return ads  not support"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    goto/16 :goto_3

    :cond_d
    const-string v0, "AdsMOGO SDK"

    const-string v1, "return ads is 0"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :cond_e
    :try_start_6
    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Aduu;->getShowtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<a href=\'www.baidu.com\'><img style=\'width:320px;height:50px;\' src=\'%s\'></img></a>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Aduu;->getPic()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_f
    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Aduu;->getShowtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<a href=\'www.baidu.com\'><div style=\'width:320px;height:50px; background-color:#FFF\'><p style=\'line-height:50px;color:#000;\'>%s</p></div></a>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Aduu;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_11
    const-string v0, "AdsMOGO SDK"

    const-string v1, "html is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "AdsMOGO SDK"

    const-string v1, "aduu is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_13
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aduu request Fail at StatusCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x3c

    iget v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e:I

    iget v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->f:I

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/adview/AdsMogoLayout;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    return-object v0
.end method

.method static synthetic d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic e(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:Landroid/webkit/WebView;

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:Landroid/webkit/WebView;

    new-instance v2, Lcom/adsmogo/adapters/api/p;

    invoke-direct {v2, p0, v3}, Lcom/adsmogo/adapters/api/p;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:Landroid/webkit/WebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:Lcom/adsmogo/model/obj/Aduu;

    :cond_0
    return-void
.end method

.method public handle()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->g:D

    :cond_2
    const/16 v0, 0x32

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->g:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->f:I

    const/16 v0, 0x140

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->g:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e:I

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/o;

    invoke-direct {v1, p0, v5}, Lcom/adsmogo/adapters/api/o;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;B)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v5, v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0
.end method
