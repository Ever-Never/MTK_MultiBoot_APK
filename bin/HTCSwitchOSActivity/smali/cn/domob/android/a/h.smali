.class Lcn/domob/android/a/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String; = null

.field static b:Ljava/lang/String; = null

.field protected static final c:Ljava/lang/String; = ".temp"

.field static final d:I = 0x200000

.field static final e:I = 0x500000

.field private static f:Lcn/domob/android/ads/J; = null

.field private static final i:Ljava/lang/String; = "/DomobAppDownload/"


# instance fields
.field private g:Lcn/domob/android/a/i;

.field private h:Landroid/content/Context;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/a/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/a/h;->f:Lcn/domob/android/ads/J;

    .line 22
    const-string v0, "sd\u5361"

    sput-object v0, Lcn/domob/android/a/h;->a:Ljava/lang/String;

    .line 23
    const-string v0, "\u5185\u5b58\u5361"

    sput-object v0, Lcn/domob/android/a/h;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/a/i;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    iput-object v0, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    .line 19
    iput-object v0, p0, Lcn/domob/android/a/h;->h:Landroid/content/Context;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/a/h;->j:J

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/a/h;->k:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    .line 26
    const-string v0, ".apk"

    iput-object v0, p0, Lcn/domob/android/a/h;->m:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/a/h;->n:Z

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/a/h;->o:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    .line 38
    iput-object p1, p0, Lcn/domob/android/a/h;->h:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcn/domob/android/a/h;->o:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/a/h;->k:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcn/domob/android/a/h;->h:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/a/e;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 54
    :goto_0
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 56
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_1

    .line 63
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 64
    int-to-long v0, v0

    :goto_1
    return-wide v0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 60
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcn/domob/android/a/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-direct {p0}, Lcn/domob/android/a/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 208
    const/4 v1, 0x0

    .line 209
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    iget-object v1, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    invoke-interface {v1, p1}, Lcn/domob/android/a/i;->a(Ljava/lang/String;)V

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    sget-object v1, Lcn/domob/android/a/h;->f:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u3000download size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "softSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcn/domob/android/a/h;->j:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iput-boolean v0, p0, Lcn/domob/android/a/h;->n:Z

    .line 224
    iget-object v1, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/domob/android/a/i;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private c()Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 91
    const-string v0, ""

    .line 93
    const-wide/16 v3, 0x0

    .line 96
    :try_start_0
    iget-object v2, p0, Lcn/domob/android/a/h;->o:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/domob/android/a/h;->a(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcn/domob/android/a/h;->j:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-static {}, Lcn/domob/android/a/h;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    .line 110
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v5, v2

    .line 112
    mul-long/2addr v3, v5

    .line 114
    sget-object v2, Lcn/domob/android/a/h;->f:Lcn/domob/android/ads/J;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sd availaSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "softsize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lcn/domob/android/a/h;->j:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-wide v5, p0, Lcn/domob/android/a/h;->j:J

    const-wide/32 v8, 0x200000

    add-long/2addr v5, v8

    cmp-long v2, v3, v5

    if-lez v2, :cond_3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DomobAppDownload/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Lcn/domob/android/a/h;->c(Ljava/lang/String;)Z

    move v2, v1

    .line 127
    :goto_0
    if-nez v2, :cond_1

    .line 129
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 130
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v5, v0

    .line 132
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v8, v0

    .line 133
    mul-long/2addr v5, v8

    .line 134
    sget-object v0, Lcn/domob/android/a/h;->f:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rom"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-wide v8, p0, Lcn/domob/android/a/h;->j:J

    const-wide/32 v10, 0x500000

    add-long/2addr v8, v10

    cmp-long v0, v5, v8

    if-gez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    iget-wide v1, p0, Lcn/domob/android/a/h;->j:J

    invoke-interface/range {v0 .. v6}, Lcn/domob/android/a/i;->a(JJJ)V

    move v0, v7

    .line 166
    :goto_1
    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    iget-object v0, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    const-string v1, "\u8fde\u63a5\u4e0b\u8f7d\u5730\u5740\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/android/a/i;->d(Ljava/lang/String;)V

    move v0, v7

    .line 99
    goto :goto_1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/a/h;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DomobAppDownload/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0}, Lcn/domob/android/a/h;->c(Ljava/lang/String;)Z

    .line 143
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 148
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 150
    if-nez v2, :cond_2

    .line 165
    :cond_1
    :goto_2
    iget-object v2, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/domob/android/a/h;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".temp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcn/domob/android/a/i;->c(Ljava/lang/String;)V

    move v0, v1

    .line 166
    goto :goto_1

    .line 153
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    invoke-interface {v2}, Lcn/domob/android/a/i;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v7

    .line 154
    goto :goto_1

    .line 157
    :catch_1
    move-exception v2

    .line 158
    sget-object v3, Lcn/domob/android/a/h;->f:Lcn/domob/android/ads/J;

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 159
    :catch_2
    move-exception v2

    .line 160
    sget-object v3, Lcn/domob/android/a/h;->f:Lcn/domob/android/ads/J;

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move v2, v7

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 239
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 172
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DomobAppDownload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/a/h;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    .line 175
    sget-object v1, Lcn/domob/android/a/h;->f:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/domob/android/a/h;->b(Ljava/lang/String;)Z

    move-result v1

    .line 177
    if-eqz v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/a/h;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DomobAppDownload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/a/h;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/domob/android/a/h;->b(Ljava/lang/String;)Z

    move-result v1

    .line 184
    if-nez v1, :cond_0

    .line 187
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()Z
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 193
    sget-object v1, Lcn/domob/android/a/h;->f:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app is download:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcn/domob/android/a/h;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not complete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/domob/android/a/h;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcn/domob/android/a/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-boolean v1, p0, Lcn/domob/android/a/h;->n:Z

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object v0

    .line 199
    :cond_1
    iget-object v0, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcn/domob/android/a/h;->b()V

    .line 88
    return-void
.end method
