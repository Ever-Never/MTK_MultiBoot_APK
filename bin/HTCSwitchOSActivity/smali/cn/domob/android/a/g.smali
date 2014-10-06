.class public Lcn/domob/android/a/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/ads/J; = null

.field private static final b:I = 0x2800

.field private static final l:I = 0x9c40

.field private static final m:I = 0xea60

.field private static final n:I = 0x1e


# instance fields
.field private c:Ljava/net/URL;

.field private d:Ljava/io/File;

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:J

.field private j:Lcn/domob/android/a/f$a;

.field private k:Lcn/domob/android/a/d;

.field private o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/a/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljava/io/File;JJLcn/domob/android/a/f$a;Lcn/domob/android/a/d;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/a/g;->h:Z

    .line 32
    iput-wide v1, p0, Lcn/domob/android/a/g;->i:J

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/a/g;->o:Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcn/domob/android/a/g;->c:Ljava/net/URL;

    .line 52
    iput-object p2, p0, Lcn/domob/android/a/g;->d:Ljava/io/File;

    .line 54
    iput-wide p3, p0, Lcn/domob/android/a/g;->e:J

    .line 56
    iput-wide p3, p0, Lcn/domob/android/a/g;->g:J

    .line 58
    iput-wide p5, p0, Lcn/domob/android/a/g;->f:J

    .line 60
    iput-object p7, p0, Lcn/domob/android/a/g;->j:Lcn/domob/android/a/f$a;

    .line 62
    iput-object p8, p0, Lcn/domob/android/a/g;->k:Lcn/domob/android/a/d;

    .line 64
    iput-wide p3, p0, Lcn/domob/android/a/g;->i:J

    .line 66
    iput-object p9, p0, Lcn/domob/android/a/g;->o:Landroid/content/Context;

    .line 68
    cmp-long v0, p3, p5

    if-lez v0, :cond_0

    cmp-long v0, p5, v1

    if-lez v0, :cond_0

    .line 69
    sget-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    const-string v1, "Start postition is larger than end position, set finished to true"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/a/g;->h:Z

    .line 73
    :cond_0
    sget-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download st:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcn/domob/android/a/g;->h:Z

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcn/domob/android/a/g;->i:J

    return-wide v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v0, 0x2800

    const-wide/16 v6, 0x0

    .line 80
    .line 84
    new-array v1, v0, [B

    .line 90
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/a/g;->o:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/a/e;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    sget-object v2, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    const-string v3, "Proxy exists"

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcn/domob/android/a/g;->c:Ljava/net/URL;

    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 99
    :goto_0
    const v2, 0x9c40

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 100
    const v2, 0xea60

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 104
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/domob/android/a/g;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/domob/android/a/g;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcn/domob/android/a/g;->d:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcn/domob/android/a/g;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    sget-object v3, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download in rom change chmod "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/android/a/g;->d:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/a/g;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 113
    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xce

    if-ne v3, v4, :cond_2

    .line 116
    sget-object v3, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    const-string v4, "support range parameter,continue to download"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-wide v3, p0, Lcn/domob/android/a/g;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 128
    :goto_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 131
    :goto_2
    iget-wide v4, p0, Lcn/domob/android/a/g;->g:J

    iget-wide v6, p0, Lcn/domob/android/a/g;->f:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    .line 133
    iget-object v0, p0, Lcn/domob/android/a/g;->j:Lcn/domob/android/a/f$a;

    iget-boolean v0, v0, Lcn/domob/android/a/f$a;->a:Z

    if-eqz v0, :cond_4

    .line 188
    :goto_3
    return-void

    .line 96
    :cond_1
    sget-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    const-string v2, "Proxy is null"

    invoke-virtual {v0, p0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcn/domob/android/a/g;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto/16 :goto_0

    .line 120
    :cond_2
    iget-wide v3, p0, Lcn/domob/android/a/g;->e:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_3

    .line 121
    sget-object v3, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    const-string v4, "don\'t support range parameter,download from beginning"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    :cond_3
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 124
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcn/domob/android/a/g;->i:J

    .line 125
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcn/domob/android/a/g;->g:J
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    sget-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    const-string v1, "download SocketTimeoutException "

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcn/domob/android/a/g;->k:Lcn/domob/android/a/d;

    const-string v1, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u7f51\u7edc\u51fa\u73b0\u5f02\u5e38"

    invoke-interface {v0, v1}, Lcn/domob/android/a/d;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 137
    :cond_4
    const/4 v0, 0x0

    const/16 v4, 0x2800

    :try_start_1
    invoke-virtual {v3, v1, v0, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 139
    const/4 v4, -0x1

    if-ne v0, v4, :cond_6

    .line 165
    :cond_5
    sget-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total downloadsize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcn/domob/android/a/g;->i:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/a/g;->h:Z

    .line 170
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 172
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    .line 177
    :catch_1
    move-exception v0

    .line 178
    sget-object v1, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcn/domob/android/a/g;->k:Lcn/domob/android/a/d;

    const-string v1, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e38"

    invoke-interface {v0, v1}, Lcn/domob/android/a/d;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 145
    :cond_6
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 147
    iget-wide v4, p0, Lcn/domob/android/a/g;->g:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/domob/android/a/g;->g:J

    .line 149
    iget-wide v4, p0, Lcn/domob/android/a/g;->g:J

    iget-wide v6, p0, Lcn/domob/android/a/g;->f:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    .line 150
    iget-wide v4, p0, Lcn/domob/android/a/g;->i:J

    int-to-long v6, v0

    iget-wide v8, p0, Lcn/domob/android/a/g;->g:J

    iget-wide v10, p0, Lcn/domob/android/a/g;->f:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/domob/android/a/g;->i:J
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 158
    :goto_4
    const-wide/16 v4, 0x1e

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 159
    :catch_2
    move-exception v0

    .line 160
    :try_start_4
    sget-object v4, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v4, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 161
    iget-object v0, p0, Lcn/domob/android/a/g;->k:Lcn/domob/android/a/d;

    const-string v4, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e38"

    invoke-interface {v0, v4}, Lcn/domob/android/a/d;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 182
    :catch_3
    move-exception v0

    .line 183
    sget-object v1, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/J;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcn/domob/android/a/g;->k:Lcn/domob/android/a/d;

    const-string v2, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e38"

    invoke-interface {v1, v2}, Lcn/domob/android/a/d;->a(Ljava/lang/String;)V

    .line 185
    sget-object v1, Lcn/domob/android/a/g;->a:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 152
    :cond_7
    :try_start_5
    iget-wide v4, p0, Lcn/domob/android/a/g;->i:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/domob/android/a/g;->i:J
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4
.end method
