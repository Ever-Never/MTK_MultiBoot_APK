.class final Lcom/adsmogo/adapters/api/I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

.field private b:Lcom/adsmogo/model/obj/Ration;

.field private synthetic c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/I;->a:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    iput-object p3, p0, Lcom/adsmogo/adapters/api/I;->b:Lcom/adsmogo/model/obj/Ration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->a:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Request LmMob adMogoLayout=null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Request LmMob activity=null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getLmMobUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/adsmogo/adapters/api/I;->b:Lcom/adsmogo/model/obj/Ration;

    iget-object v8, v8, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    :try_start_1
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v4, 0x7530

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v4, 0x7530

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    invoke-static {v3, v1}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    if-eqz v1, :cond_0

    const-string v1, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style>"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    iget-object v3, v3, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/LmMob;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<a href=\'%s\'><div style=\'width:320px;height:50px;\'><p style=\'line-height:50px;text-align:center\'>%s</p></div></a>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    invoke-virtual {v6}, Lcom/adsmogo/model/obj/LmMob;->getClickUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    invoke-virtual {v6}, Lcom/adsmogo/model/obj/LmMob;->getShowText()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/adsmogo/adapters/api/H;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    invoke-direct {v3, v4, v1}, Lcom/adsmogo/adapters/api/H;-><init>(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    invoke-static {v1, v9, v2}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;ZLandroid/view/ViewGroup;)V

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LmMob request err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LmMob parse JSON or Stringformat err :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    invoke-static {v1, v9, v2}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;ZLandroid/view/ViewGroup;)V

    move-object v1, v2

    goto/16 :goto_1

    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    iget-object v3, v3, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/LmMob;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<a href=\'%s\'><img width=\'320\' height=\'50\' src=\'%s\'></img></a>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    invoke-virtual {v6}, Lcom/adsmogo/model/obj/LmMob;->getClickUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a:Lcom/adsmogo/model/obj/LmMob;

    invoke-virtual {v6}, Lcom/adsmogo/model/obj/LmMob;->getShowImg()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_5
    const-string v0, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LmMob request StatusCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->c:Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;->a(Lcom/adsmogo/adapters/api/LXmXMXoXbAPIAdapter;ZLandroid/view/ViewGroup;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
