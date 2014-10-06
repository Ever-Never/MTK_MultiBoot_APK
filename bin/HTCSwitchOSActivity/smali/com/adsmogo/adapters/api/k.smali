.class final Lcom/adsmogo/adapters/api/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/k;-><init>(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adsmogo/model/obj/Ration;->testmodel:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_1
    const-string v4, "http://adfonic.net/ad/%s?r.id=%s&r.ip=%s&h.user-agent=%s&s.test=%s&t.format=html"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    invoke-virtual {v7}, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v7

    iget-object v7, v7, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object v3, v5, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x4

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_2
    :try_start_1
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<!--.*-->"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v2, "adfonic return is null"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;ZLandroid/view/ViewGroup;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    invoke-static {v2, v8, v1}, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;ZLandroid/view/ViewGroup;)V

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adfonic request err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    :try_start_2
    const-string v0, "0"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adfonic err"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    invoke-static {v0, v8, v1}, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;ZLandroid/view/ViewGroup;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    iget-object v2, v2, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v2, v2, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/adsmogo/adapters/api/j;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    invoke-direct {v3, v4, v0}, Lcom/adsmogo/adapters/api/j;-><init>(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adfonic StatusCode is"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/k;->a:Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;->a(Lcom/adsmogo/adapters/api/AXdXfXoXnXiXcAdapter;ZLandroid/view/ViewGroup;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
