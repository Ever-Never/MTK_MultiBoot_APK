.class public Lcom/tencent/exmobwin/b/b;
.super Ljava/lang/Object;


# static fields
.field public static final b:I = 0x186a0

.field public static final c:I = 0x186a0

.field public static final d:I = 0x1000

.field public static final g:I = 0x2

.field private static final n:Ljava/lang/String; = "HttpTask"


# instance fields
.field public a:Lcom/tencent/exmobwin/b/e;

.field public e:I

.field public f:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Landroid/os/Handler;

.field k:Lorg/apache/http/client/methods/HttpPost;

.field l:Lorg/apache/http/client/methods/HttpGet;

.field public m:Lcom/tencent/exmobwin/c/c;

.field private o:Z

.field private p:[B

.field private q:Ljava/util/Map;

.field private r:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI[BLcom/tencent/exmobwin/b/e;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    iput v2, p0, Lcom/tencent/exmobwin/b/b;->e:I

    iput-boolean v2, p0, Lcom/tencent/exmobwin/b/b;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/b/b;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/exmobwin/b/b;->o:Z

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->p:[B

    iput v2, p0, Lcom/tencent/exmobwin/b/b;->i:I

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->j:Landroid/os/Handler;

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->k:Lorg/apache/http/client/methods/HttpPost;

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->l:Lorg/apache/http/client/methods/HttpGet;

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->m:Lcom/tencent/exmobwin/c/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/exmobwin/b/b;->q:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->r:Ljava/net/URI;

    iput-object p1, p0, Lcom/tencent/exmobwin/b/b;->h:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/tencent/exmobwin/b/b;->o:Z

    iput p3, p0, Lcom/tencent/exmobwin/b/b;->i:I

    iput-object p4, p0, Lcom/tencent/exmobwin/b/b;->p:[B

    iput-object p5, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    iput-object p6, p0, Lcom/tencent/exmobwin/b/b;->j:Landroid/os/Handler;

    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/exmobwin/b/b;->r:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ZI[BLcom/tencent/exmobwin/c/c;Lcom/tencent/exmobwin/b/e;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    iput v2, p0, Lcom/tencent/exmobwin/b/b;->e:I

    iput-boolean v2, p0, Lcom/tencent/exmobwin/b/b;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/b/b;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/exmobwin/b/b;->o:Z

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->p:[B

    iput v2, p0, Lcom/tencent/exmobwin/b/b;->i:I

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->j:Landroid/os/Handler;

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->k:Lorg/apache/http/client/methods/HttpPost;

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->l:Lorg/apache/http/client/methods/HttpGet;

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->m:Lcom/tencent/exmobwin/c/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/exmobwin/b/b;->q:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/exmobwin/b/b;->r:Ljava/net/URI;

    iput-object p1, p0, Lcom/tencent/exmobwin/b/b;->h:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/tencent/exmobwin/b/b;->o:Z

    iput-object p5, p0, Lcom/tencent/exmobwin/b/b;->m:Lcom/tencent/exmobwin/c/c;

    iput p3, p0, Lcom/tencent/exmobwin/b/b;->i:I

    iput-object p4, p0, Lcom/tencent/exmobwin/b/b;->p:[B

    iput-object p6, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    iput-object p7, p0, Lcom/tencent/exmobwin/b/b;->j:Landroid/os/Handler;

    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/exmobwin/b/b;->r:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/tencent/exmobwin/b/b;I)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/exmobwin/b/f;

    invoke-direct {v0, p0, p1}, Lcom/tencent/exmobwin/b/f;-><init>(Lcom/tencent/exmobwin/b/b;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private a(Ljava/net/URI;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(I)Lorg/apache/http/client/HttpClient;
    .locals 5

    const v1, 0x186a0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sget-object v0, Lcom/tencent/exmobwin/b/h;->b:Ljava/lang/String;

    const-string v2, "cmwap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "3gwap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "uniwap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.172"

    const/16 v3, 0x50

    const-string v4, "http"

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(I)V
    .locals 12

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/exmobwin/b/b;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->r:Ljava/net/URI;

    invoke-direct {p0, v0}, Lcom/tencent/exmobwin/b/b;->a(Ljava/net/URI;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    const/16 v1, 0x14

    invoke-interface {v0, v1, p0}, Lcom/tencent/exmobwin/b/e;->a(ILcom/tencent/exmobwin/b/b;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/exmobwin/b/b;->b(I)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Lcom/tencent/exmobwin/b/g; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/tencent/exmobwin/b/c; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/exmobwin/b/b;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/tencent/exmobwin/b/g; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/tencent/exmobwin/b/c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_3
    if-eqz v3, :cond_0

    goto :goto_0

    :cond_4
    :try_start_2
    iget-boolean v0, p0, Lcom/tencent/exmobwin/b/b;->o:Z

    if-eqz v0, :cond_8

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    iput-object v0, p0, Lcom/tencent/exmobwin/b/b;->k:Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->k:Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->r:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->p:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->p:[B

    array-length v0, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->k:Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v5, p0, Lcom/tencent/exmobwin/b/b;->p:[B

    invoke-direct {v1, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_6
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-boolean v1, p0, Lcom/tencent/exmobwin/b/b;->o:Z

    if-eqz v1, :cond_f

    const-string v1, "HttpTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "httpSend "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "URL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/exmobwin/b/b;->k:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->k:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v4, v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v7, "HttpTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ConnAndReqTime: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v5

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/exmobwin/b/b;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/tencent/exmobwin/b/g; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/tencent/exmobwin/b/c; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_10

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_7
    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_8
    :try_start_3
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v0, p0, Lcom/tencent/exmobwin/b/b;->l:Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->l:Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->r:Ljava/net/URI;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/tencent/exmobwin/b/g; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/tencent/exmobwin/b/c; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    move-object v3, v4

    :goto_4
    :try_start_4
    invoke-virtual {v1}, Lcom/tencent/exmobwin/b/g;->printStackTrace()V

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/tencent/exmobwin/b/b;->e:I

    if-lt v1, v10, :cond_9

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    const/16 v4, 0x1e

    invoke-interface {v1, v4, p0}, Lcom/tencent/exmobwin/b/e;->a(ILcom/tencent/exmobwin/b/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_9
    if-eqz v3, :cond_1e

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v1, v2

    :goto_5
    if-eqz v0, :cond_a

    move-object v0, v2

    :cond_a
    :goto_6
    iget v3, p0, Lcom/tencent/exmobwin/b/b;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/exmobwin/b/b;->e:I

    move-object v3, v0

    :goto_7
    iget v0, p0, Lcom/tencent/exmobwin/b/b;->e:I

    const/4 v4, 0x2

    if-lt v0, v4, :cond_2

    goto/16 :goto_0

    :cond_b
    :try_start_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/tencent/exmobwin/b/b;->o:Z

    if-eqz v1, :cond_d

    iget-object v6, p0, Lcom/tencent/exmobwin/b/b;->k:Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->q:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/tencent/exmobwin/b/g; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/tencent/exmobwin/b/c; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v0, v3

    :goto_8
    :try_start_6
    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    const/16 v2, 0x28

    invoke-interface {v1, v2, p0}, Lcom/tencent/exmobwin/b/e;->a(ILcom/tencent/exmobwin/b/b;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_c

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_c
    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_d
    :try_start_7
    iget-object v6, p0, Lcom/tencent/exmobwin/b/b;->l:Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->q:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/tencent/exmobwin/b/g; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/tencent/exmobwin/b/c; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_9
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/tencent/exmobwin/b/b;->e:I

    if-lt v1, v10, :cond_e

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    const/16 v3, 0xa

    invoke-interface {v1, v3, p0}, Lcom/tencent/exmobwin/b/e;->a(ILcom/tencent/exmobwin/b/b;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_e
    if-eqz v4, :cond_1c

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v1, v2

    :goto_a
    if-eqz v0, :cond_a

    move-object v0, v2

    goto :goto_6

    :cond_f
    :try_start_9
    const-string v1, "HttpTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "httpSend "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "URL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/exmobwin/b/b;->l:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->l:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v4, v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    goto/16 :goto_3

    :cond_10
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_16

    const/16 v1, 0xce

    if-eq v0, v1, :cond_16

    iget-boolean v1, p0, Lcom/tencent/exmobwin/b/b;->o:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->k:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :goto_b
    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    invoke-interface {v1, v0, p0}, Lcom/tencent/exmobwin/b/e;->a(ILcom/tencent/exmobwin/b/b;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/tencent/exmobwin/b/g; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/tencent/exmobwin/b/c; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    :cond_11
    if-eqz v4, :cond_12

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_12
    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_13
    :try_start_a
    iget-object v1, p0, Lcom/tencent/exmobwin/b/b;->l:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lcom/tencent/exmobwin/b/g; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/tencent/exmobwin/b/c; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_b

    :catchall_0
    move-exception v0

    :goto_c
    if-eqz v4, :cond_14

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_14
    if-eqz v3, :cond_15

    :cond_15
    throw v0

    :cond_16
    :try_start_b
    iget-boolean v0, p0, Lcom/tencent/exmobwin/b/b;->f:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/tencent/exmobwin/b/g; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/tencent/exmobwin/b/c; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    if-eqz v0, :cond_18

    if-eqz v4, :cond_17

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_17
    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_18
    :try_start_c
    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->a:Lcom/tencent/exmobwin/b/e;

    invoke-interface {v0, v3, p0}, Lcom/tencent/exmobwin/b/e;->a(Lorg/apache/http/HttpResponse;Lcom/tencent/exmobwin/b/b;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lcom/tencent/exmobwin/b/g; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/tencent/exmobwin/b/c; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    :cond_19
    if-eqz v4, :cond_1a

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1a
    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_1b
    if-eqz v4, :cond_1d

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v1, v2

    :goto_d
    if-eqz v0, :cond_a

    move-object v0, v2

    goto/16 :goto_6

    :catchall_1
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_c

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v4, v1

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move-object v0, v3

    move-object v4, v1

    goto/16 :goto_8

    :catch_5
    move-exception v0

    move-object v11, v0

    move-object v0, v3

    move-object v3, v1

    move-object v1, v11

    goto/16 :goto_4

    :cond_1c
    move-object v1, v4

    goto/16 :goto_a

    :cond_1d
    move-object v1, v4

    goto :goto_d

    :cond_1e
    move-object v1, v3

    goto/16 :goto_5

    :cond_1f
    move-object v3, v2

    move-object v1, v2

    goto/16 :goto_7
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/b/b;->q:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
