.class Lcn/domob/android/ads/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/v$a;,
        Lcn/domob/android/ads/v$b;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/J; = null

.field private static b:Ljava/lang/String; = null

.field private static final g:I = 0x5

.field private static final i:I = 0x2710


# instance fields
.field private c:Lcn/domob/android/ads/v$b;

.field private d:Lcn/domob/android/ads/v$a;

.field private e:Landroid/content/Context;

.field private f:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/v;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/v;->a:Lcn/domob/android/ads/J;

    .line 24
    const-string v0, "https://api.domob.cn/d"

    sput-object v0, Lcn/domob/android/ads/v;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcn/domob/android/ads/v$b;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/v$b;-><init>(Lcn/domob/android/ads/v;)V

    iput-object v0, p0, Lcn/domob/android/ads/v;->c:Lcn/domob/android/ads/v$b;

    .line 27
    new-instance v0, Lcn/domob/android/ads/v$a;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/v$a;-><init>(Lcn/domob/android/ads/v;)V

    iput-object v0, p0, Lcn/domob/android/ads/v;->d:Lcn/domob/android/ads/v$a;

    .line 29
    iput v2, p0, Lcn/domob/android/ads/v;->f:I

    .line 32
    iput-boolean v2, p0, Lcn/domob/android/ads/v;->h:Z

    .line 36
    iput-object p1, p0, Lcn/domob/android/ads/v;->e:Landroid/content/Context;

    .line 39
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/domob/android/ads/v;->c:Lcn/domob/android/ads/v$b;

    aput-object v3, v0, v2

    .line 41
    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/v;->d:Lcn/domob/android/ads/v$a;

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 49
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    sget-object v2, Lcn/domob/android/ads/v;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILcn/domob/android/ads/i;)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x5

    .line 57
    iput p2, p0, Lcn/domob/android/ads/v;->f:I

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 64
    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcn/domob/android/ads/v;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 65
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 69
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 70
    const-string v1, "connection"

    const-string v6, "close"

    invoke-virtual {v0, v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 72
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 73
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v6

    .line 74
    if-nez v6, :cond_4

    .line 75
    :try_start_2
    sget-object v1, Lcn/domob/android/ads/v;->a:Lcn/domob/android/ads/J;

    const-string v7, " urlCon.getOutputStream() return null"

    invoke-virtual {v1, v7}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 76
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 135
    :cond_0
    if-eqz v6, :cond_1

    .line 136
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 138
    :cond_1
    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 141
    :cond_2
    if-eqz v3, :cond_3

    .line 142
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_16

    :cond_3
    :goto_0
    move-object v0, v1

    .line 147
    :goto_1
    return-object v0

    .line 78
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V

    .line 79
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 80
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 81
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8

    move-result-object v5

    .line 82
    :try_start_5
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_9

    .line 84
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_2

    .line 105
    :catch_0
    move-exception v1

    move-object v3, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v6

    .line 106
    :goto_3
    :try_start_7
    sget-object v6, Lcn/domob/android/ads/v;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v6, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 107
    sget-object v1, Lcn/domob/android/ads/v;->a:Lcn/domob/android/ads/J;

    iget-object v6, p0, Lcn/domob/android/ads/v;->e:Landroid/content/Context;

    const-string v7, "Https Get MalformedURLException"

    invoke-virtual {v1, v6, v7}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 131
    if-eqz v5, :cond_5

    .line 132
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 135
    :cond_5
    if-eqz v4, :cond_6

    .line 136
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 138
    :cond_6
    if-eqz v3, :cond_7

    .line 139
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 141
    :cond_7
    if-eqz v2, :cond_8

    .line 142
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_10

    .line 147
    :cond_8
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_9
    :try_start_9
    sget-object v1, Lcn/domob/android/ads/v;->a:Lcn/domob/android/ads/J;

    const-string v3, "inf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget v1, p0, Lcn/domob/android/ads/v;->f:I

    if-ge v1, v9, :cond_1d

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1d

    .line 91
    iget v1, p0, Lcn/domob/android/ads/v;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/domob/android/ads/v;->f:I

    .line 92
    sget-object v1, Lcn/domob/android/ads/v;->a:Lcn/domob/android/ads/J;

    const-string v3, "inf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ResponseCode is -1 retry to connect times="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcn/domob/android/ads/v;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget v1, p0, Lcn/domob/android/ads/v;->f:I

    invoke-direct {p0, p1, v1, p3}, Lcn/domob/android/ads/v;->a(Ljava/lang/String;ILcn/domob/android/ads/i;)Ljava/lang/String;

    move-result-object v3

    .line 95
    if-eqz v3, :cond_a

    .line 96
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a

    move-object v2, v1

    .line 98
    :cond_a
    :try_start_a
    iget v1, p0, Lcn/domob/android/ads/v;->f:I

    if-ne v1, v9, :cond_b

    iget-boolean v1, p0, Lcn/domob/android/ads/v;->h:Z

    if-nez v1, :cond_b

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/domob/android/ads/v;->h:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b

    :cond_b
    move-object v1, v2

    .line 131
    :goto_5
    if-eqz v0, :cond_c

    .line 132
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 135
    :cond_c
    if-eqz v6, :cond_d

    .line 136
    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 138
    :cond_d
    if-eqz v5, :cond_e

    .line 139
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 141
    :cond_e
    if-eqz v4, :cond_f

    .line 142
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    :cond_f
    move-object v0, v1

    .line 145
    goto/16 :goto_4

    .line 144
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 146
    goto/16 :goto_4

    .line 108
    :catch_2
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 110
    :goto_6
    :try_start_c
    iget v1, p0, Lcn/domob/android/ads/v;->f:I

    if-ge v1, v9, :cond_14

    .line 111
    iget v0, p0, Lcn/domob/android/ads/v;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/domob/android/ads/v;->f:I

    .line 112
    sget-object v0, Lcn/domob/android/ads/v;->a:Lcn/domob/android/ads/J;

    const-string v1, "inf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect get an IOException retry to connecttimes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcn/domob/android/ads/v;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcn/domob/android/ads/v;->f:I

    invoke-direct {p0, p1, v0, p3}, Lcn/domob/android/ads/v;->a(Ljava/lang/String;ILcn/domob/android/ads/i;)Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_1c

    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 118
    :goto_7
    iget v1, p0, Lcn/domob/android/ads/v;->f:I

    if-ne v1, v9, :cond_10

    iget-boolean v1, p0, Lcn/domob/android/ads/v;->h:Z

    if-nez v1, :cond_10

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/domob/android/ads/v;->h:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 131
    :cond_10
    :goto_8
    if-eqz v3, :cond_11

    .line 132
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 135
    :cond_11
    if-eqz v6, :cond_12

    .line 136
    :try_start_d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 138
    :cond_12
    if-eqz v5, :cond_13

    .line 139
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 141
    :cond_13
    if-eqz v4, :cond_8

    .line 142
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_4

    .line 144
    :catch_3
    move-exception v1

    goto/16 :goto_4

    .line 125
    :cond_14
    :try_start_e
    sget-object v1, Lcn/domob/android/ads/v;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 126
    sget-object v1, Lcn/domob/android/ads/v;->a:Lcn/domob/android/ads/J;

    iget-object v7, p0, Lcn/domob/android/ads/v;->e:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Https Get IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_8

    .line 128
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v0, v2

    .line 129
    :goto_9
    sget-object v2, Lcn/domob/android/ads/v;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 131
    if-eqz v3, :cond_15

    .line 132
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 135
    :cond_15
    if-eqz v6, :cond_16

    .line 136
    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 138
    :cond_16
    if-eqz v5, :cond_17

    .line 139
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 141
    :cond_17
    if-eqz v4, :cond_8

    .line 142
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_4

    .line 144
    :catch_5
    move-exception v1

    goto/16 :goto_4

    .line 131
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_a
    if-eqz v3, :cond_18

    .line 132
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 135
    :cond_18
    if-eqz v6, :cond_19

    .line 136
    :try_start_10
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 138
    :cond_19
    if-eqz v5, :cond_1a

    .line 139
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 141
    :cond_1a
    if-eqz v4, :cond_1b

    .line 142
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 145
    :cond_1b
    :goto_b
    throw v0

    .line 144
    :catch_6
    move-exception v1

    goto :goto_b

    .line 131
    :catchall_1
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_a

    :catchall_2
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_a

    :catchall_3
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_a

    :catchall_4
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v6, v4

    move-object v4, v2

    move-object v10, v3

    move-object v3, v5

    move-object v5, v10

    goto :goto_a

    :catchall_6
    move-exception v0

    goto :goto_a

    .line 128
    :catch_7
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v2

    goto :goto_9

    :catch_8
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v2

    goto :goto_9

    :catch_9
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v2

    goto :goto_9

    :catch_a
    move-exception v1

    move-object v3, v0

    move-object v0, v2

    goto :goto_9

    :catch_b
    move-exception v1

    move-object v3, v0

    move-object v0, v2

    goto :goto_9

    .line 108
    :catch_c
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_6

    :catch_d
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_6

    :catch_e
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_6

    :catch_f
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_6

    .line 144
    :catch_10
    move-exception v1

    goto/16 :goto_4

    .line 105
    :catch_11
    move-exception v0

    move-object v1, v0

    move-object v4, v3

    move-object v5, v3

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_3

    :catch_12
    move-exception v1

    move-object v4, v3

    move-object v5, v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_3

    :catch_13
    move-exception v1

    move-object v4, v6

    move-object v5, v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_3

    :catch_14
    move-exception v1

    move-object v4, v6

    move-object v10, v3

    move-object v3, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v10

    goto/16 :goto_3

    :catch_15
    move-exception v1

    move-object v3, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v6

    goto/16 :goto_3

    .line 144
    :catch_16
    move-exception v0

    goto/16 :goto_0

    :cond_1c
    move-object v0, v2

    goto/16 :goto_7

    :cond_1d
    move-object v1, v2

    goto/16 :goto_5
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcn/domob/android/ads/i;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcn/domob/android/ads/v;->a(Ljava/lang/String;ILcn/domob/android/ads/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
