.class Lcn/domob/android/ads/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/p$b;,
        Lcn/domob/android/ads/p$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "GET"

.field static final b:Ljava/lang/String; = "POST"

.field static final c:I = 0x4e20

.field private static d:Lcn/domob/android/ads/J; = null

.field private static o:Lcn/domob/android/ads/p$b; = null

.field private static final u:I = 0x1000

.field private static final v:Ljava/lang/String; = "ctwap"


# instance fields
.field private e:Ljava/net/HttpURLConnection;

.field private f:Landroid/content/Context;

.field private g:Ljava/net/URL;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/net/Proxy;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lcn/domob/android/ads/p$a;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/p$a;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 80
    const-string v5, "GET"

    const/16 v7, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/p$a;)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/p$a;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 92
    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/p$a;)V

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/p$a;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcn/domob/android/ads/p$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcn/domob/android/ads/p;->f:Landroid/content/Context;

    .line 112
    iput-object p3, p0, Lcn/domob/android/ads/p;->i:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lcn/domob/android/ads/p;->j:Ljava/util/HashMap;

    .line 114
    iput-object p5, p0, Lcn/domob/android/ads/p;->h:Ljava/lang/String;

    .line 115
    iput-object p6, p0, Lcn/domob/android/ads/p;->l:Ljava/lang/String;

    .line 116
    iput p7, p0, Lcn/domob/android/ads/p;->m:I

    .line 117
    iput-object p8, p0, Lcn/domob/android/ads/p;->n:Lcn/domob/android/ads/p$a;

    .line 120
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/p;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "GET"

    iput-object v0, p0, Lcn/domob/android/ads/p;->h:Ljava/lang/String;

    .line 124
    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcn/domob/android/ads/p;->h:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p6, :cond_3

    .line 127
    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 128
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/p;->g:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/p;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcn/domob/android/ads/p;->p:Ljava/lang/String;

    .line 149
    :cond_1
    return-void

    .line 130
    :cond_2
    :try_start_1
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/p;->g:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    sget-object v0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Failed to init connector."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_3
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/p;->g:Ljava/net/URL;

    goto :goto_0

    .line 137
    :cond_4
    sget-object v0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    const-string v1, "Request URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected static a(Lcn/domob/android/ads/p$b;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    sput-object p0, Lcn/domob/android/ads/p;->o:Lcn/domob/android/ads/p$b;

    .line 153
    return-void
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 193
    sget-object v0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProxy -- proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcn/domob/android/ads/p;->k:Ljava/net/Proxy;

    .line 195
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcn/domob/android/ads/p;->q:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcn/domob/android/ads/p;->q:Ljava/lang/String;

    .line 203
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    const-string v1, "Do HTTP connection."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 219
    return-void
.end method

.method protected c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 226
    .line 230
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/p;->g:Ljava/net/URL;

    if-eqz v0, :cond_f

    .line 231
    sget-object v0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection URL = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/ads/p;->g:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 234
    iget-object v0, p0, Lcn/domob/android/ads/p;->k:Ljava/net/Proxy;

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcn/domob/android/ads/p;->g:Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/android/ads/p;->k:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    .line 240
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_f

    .line 241
    iget-object v0, p0, Lcn/domob/android/ads/p;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/p;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/domob/android/ads/p;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 247
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/android/ads/p;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 248
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/android/ads/p;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 250
    iget-object v0, p0, Lcn/domob/android/ads/p;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    .line 251
    iget-object v0, p0, Lcn/domob/android/ads/p;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcn/domob/android/ads/p;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 253
    if-eqz v1, :cond_1

    .line 254
    iget-object v4, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 312
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 313
    :goto_2
    :try_start_1
    sget-object v3, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    const-string v4, "Error happened in connection."

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    sget-object v3, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 317
    if-eqz v2, :cond_2

    .line 318
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 325
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 326
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 332
    :cond_3
    :goto_4
    return-void

    .line 237
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcn/domob/android/ads/p;->g:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 317
    :goto_5
    if-eqz v3, :cond_5

    .line 318
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 325
    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    .line 326
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 330
    :cond_6
    :goto_7
    throw v0

    .line 259
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcn/domob/android/ads/p;->h:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/domob/android/ads/p;->l:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 260
    sget-object v0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    const-string v1, "DomobConnector do HTTP POST."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 263
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    iget-object v3, p0, Lcn/domob/android/ads/p;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    iget-object v3, p0, Lcn/domob/android/ads/p;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 267
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x1000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 269
    if-eqz v1, :cond_8

    .line 270
    iget-object v3, p0, Lcn/domob/android/ads/p;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 272
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 273
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 284
    :cond_8
    :goto_8
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/p;->r:I

    .line 287
    :goto_9
    iget v0, p0, Lcn/domob/android/ads/p;->r:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcn/domob/android/ads/p;->r:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_b

    .line 288
    :cond_9
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    .line 290
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 291
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/p;->r:I

    goto :goto_9

    .line 278
    :cond_a
    sget-object v0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    const-string v1, "DomobConnector do HTTP GET."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_8

    .line 294
    :cond_b
    iget v0, p0, Lcn/domob/android/ads/p;->r:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcn/domob/android/ads/p;->r:I

    const/16 v1, 0x130

    if-gt v0, v1, :cond_e

    .line 295
    sget-object v0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL after connection/redirection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 297
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 298
    const/16 v0, 0x1000

    :try_start_8
    new-array v0, v0, [B

    .line 300
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 301
    :goto_a
    :try_start_9
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_c

    .line 302
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 312
    :catch_1
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2

    .line 305
    :cond_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/p;->t:[B

    .line 306
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/p;->t:[B

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/p;->s:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object v2, v3

    .line 309
    :goto_b
    :try_start_a
    iget-object v0, p0, Lcn/domob/android/ads/p;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    move-object v0, v2

    move-object v2, v1

    .line 317
    :goto_c
    if-eqz v0, :cond_d

    .line 318
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 325
    :cond_d
    :goto_d
    if-eqz v2, :cond_3

    .line 326
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_4

    .line 328
    :catch_2
    move-exception v0

    .line 329
    sget-object v1, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 320
    :catch_3
    move-exception v0

    .line 321
    sget-object v1, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 320
    :catch_4
    move-exception v0

    .line 321
    sget-object v2, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 328
    :catch_5
    move-exception v0

    .line 329
    sget-object v1, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 320
    :catch_6
    move-exception v1

    .line 321
    sget-object v3, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 328
    :catch_7
    move-exception v1

    .line 329
    sget-object v2, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 316
    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_5

    .line 312
    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :cond_e
    move-object v1, v2

    goto :goto_b

    :cond_f
    move-object v0, v2

    goto :goto_c
.end method

.method protected d()[B
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcn/domob/android/ads/p;->t:[B

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcn/domob/android/ads/p;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcn/domob/android/ads/p;->r:I

    return v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcn/domob/android/ads/p;->l:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcn/domob/android/ads/p;->c()V

    .line 355
    iget-object v0, p0, Lcn/domob/android/ads/p;->n:Lcn/domob/android/ads/p$a;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcn/domob/android/ads/p;->n:Lcn/domob/android/ads/p$a;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/p$a;->a(Lcn/domob/android/ads/p;)V

    .line 358
    :cond_0
    sget-object v0, Lcn/domob/android/ads/p;->o:Lcn/domob/android/ads/p$b;

    if-eqz v0, :cond_1

    .line 359
    sget-object v0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/J;

    const-string v1, "Call test listener"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcn/domob/android/ads/p;->o:Lcn/domob/android/ads/p$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/p$b;->a(Lcn/domob/android/ads/p;)V

    .line 363
    :cond_1
    return-void
.end method
