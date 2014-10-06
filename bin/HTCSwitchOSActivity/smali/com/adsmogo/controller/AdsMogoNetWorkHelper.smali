.class public Lcom/adsmogo/controller/AdsMogoNetWorkHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->a:I

    iput p1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->a:I

    return-void
.end method


# virtual methods
.method public executeGetType(Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 3

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iget v1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->a:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget v1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->a:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Exception in ExecuteGetType"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executePostType(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;
    .locals 4

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iget v1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->a:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget v1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->a:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Exception in ExecuteGetType"

    invoke-static {v2, v3, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getContentByGetType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getContentByGetType(Lorg/apache/http/client/methods/HttpGet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentByGetType(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getContentByGetType(Lorg/apache/http/client/methods/HttpGet;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContentByGetType(Lorg/apache/http/client/methods/HttpGet;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->executeGetType(Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    const-string v2, "AdsMOGO SDK"

    const-string v3, "HttpGet StatusCode is  200 "

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    :try_start_2
    const-string v0, "AdsMOGO SDK"

    const-string v2, "HttpGet StatusCode is not 200 "

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in getContentByGetType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "httpClient shutdown :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getContentByPostType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getContentByPostType(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentByPostType(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/adsmogo/controller/f;

    invoke-direct {v0, p0, p2}, Lcom/adsmogo/controller/f;-><init>(Lcom/adsmogo/controller/AdsMogoNetWorkHelper;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/entity/EntityTemplate;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {p0, v2}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getContentByPostType(Lorg/apache/http/client/methods/HttpPost;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContentByPostType(Lorg/apache/http/client/methods/HttpPost;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->executePostType(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    const-string v2, "AdsMOGO SDK"

    const-string v3, "HttpPost StatusCode is  200 "

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    iput-object v1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "AdsMOGO SDK"

    const-string v2, "HttpPost StatusCode is not 200 "

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in getContentByPostType(HttpPost httpPost) "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getStatusCodeByGetType(Ljava/lang/String;)I
    .locals 1

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getStatusCodeByGetType(Lorg/apache/http/client/methods/HttpGet;)I

    move-result v0

    return v0
.end method

.method public getStatusCodeByGetType(Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 4

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getStatusCodeByGetType(Lorg/apache/http/client/methods/HttpGet;)I

    move-result v0

    return v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStatusCodeByGetType(Lorg/apache/http/client/methods/HttpGet;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->executeGetType(Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->b:Lorg/apache/http/client/HttpClient;

    :cond_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
