.class final Lcom/adsmogo/adapters/api/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

.field private b:Lcom/adsmogo/model/obj/Ration;

.field private synthetic c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/T;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/T;->a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    iput-object p3, p0, Lcom/adsmogo/adapters/api/T;->b:Lcom/adsmogo/model/obj/Ration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/T;->a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Request Smaato adMogoLayout=null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/T;->b:Lcom/adsmogo/model/obj/Ration;

    iget-object v3, v3, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "AdSpaceId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PublisherId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/T;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;ZLandroid/view/ViewGroup;)V

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Smaato key is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/T;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    invoke-static {v1, v9, v10}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;ZLandroid/view/ViewGroup;)V

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Smaato parse JSON or Stringformat err :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/adsmogo/adapters/api/T;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    iget-object v5, v5, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v2, v7, v3

    const/4 v2, 0x2

    aput-object v4, v7, v2

    const/4 v2, 0x3

    aput-object v5, v7, v2

    const/4 v2, 0x4

    aput-object v1, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/T;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;ZLandroid/view/ViewGroup;)V

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Smaato url isnull"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/T;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    invoke-static {v1, v9, v10}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;ZLandroid/view/ViewGroup;)V

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Smaato request err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    :try_start_3
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v1, "User-Agent"

    iget-object v4, p0, Lcom/adsmogo/adapters/api/T;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    iget-object v4, v4, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>>html>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "smaato"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/T;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "</a>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/T;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v2, Lcom/adsmogo/adapters/api/S;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/T;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/T;->a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    invoke-direct {v2, v3, v4, v1}, Lcom/adsmogo/adapters/api/S;-><init>(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/adsmogo/adapters/api/T;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;ZLandroid/view/ViewGroup;)V

    const-string v0, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smaato StatusCode is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
