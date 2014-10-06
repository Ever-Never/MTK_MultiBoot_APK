.class abstract Lcn/domob/android/ads/c;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/c$c;,
        Lcn/domob/android/ads/c$b;,
        Lcn/domob/android/ads/c$a;
    }
.end annotation


# static fields
.field protected static final d:I = -0x1

.field private static e:Lcn/domob/android/ads/J; = null

.field private static final k:I = 0x14


# instance fields
.field protected a:Lcn/domob/android/ads/c$a;

.field protected b:Lcn/domob/android/ads/c$b;

.field protected c:Lcn/domob/android/ads/b;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 39
    iput-boolean v0, p0, Lcn/domob/android/ads/c;->g:Z

    .line 40
    iput-boolean v0, p0, Lcn/domob/android/ads/c;->h:Z

    .line 41
    iput-boolean v0, p0, Lcn/domob/android/ads/c;->i:Z

    .line 42
    iput-boolean v0, p0, Lcn/domob/android/ads/c;->j:Z

    .line 50
    invoke-direct {p0}, Lcn/domob/android/ads/c;->c()V

    .line 51
    invoke-virtual {p0}, Lcn/domob/android/ads/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcn/domob/android/ads/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcn/domob/android/ads/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 54
    const/16 v0, 0x14

    iput v0, p0, Lcn/domob/android/ads/c;->f:I

    .line 56
    if-eq p2, v1, :cond_0

    .line 57
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    const-string v1, "Init DomobWebView with custom background color."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p2}, Lcn/domob/android/ads/c;->setBackgroundColor(I)V

    .line 61
    :cond_0
    new-instance v0, Lcn/domob/android/ads/c$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/c$1;-><init>(Lcn/domob/android/ads/c;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-boolean v0, p0, Lcn/domob/android/ads/c;->h:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcn/domob/android/ads/c;->i:Z

    return p1
.end method

.method static synthetic b()Lcn/domob/android/ads/J;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 331
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 332
    if-nez v1, :cond_1

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    return-object v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    sget-object v1, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    .line 335
    const-string v0, ""

    goto :goto_0

    .line 338
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/domob/android/ads/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 347
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 349
    :goto_1
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 350
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 352
    :catch_1
    move-exception v0

    .line 353
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 357
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 358
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 360
    :catch_2
    move-exception v1

    goto :goto_0

    .line 343
    :catch_3
    move-exception v0

    .line 344
    const-string v0, ""

    goto :goto_0

    .line 356
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 357
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 358
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 360
    :catch_4
    move-exception v1

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    .line 356
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 357
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 358
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 361
    :cond_3
    :goto_2
    throw v0

    .line 360
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method static synthetic b(Lcn/domob/android/ads/c;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/domob/android/ads/c;->e()V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcn/domob/android/ads/c;->h:Z

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/c;->setHorizontalScrollBarEnabled(Z)V

    .line 100
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/c;->setHorizontalScrollbarOverlay(Z)V

    .line 101
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/c;->setVerticalScrollBarEnabled(Z)V

    .line 102
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/c;->setVerticalScrollbarOverlay(Z)V

    .line 103
    invoke-virtual {p0}, Lcn/domob/android/ads/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 104
    return-void
.end method

.method static synthetic c(Lcn/domob/android/ads/c;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/domob/android/ads/c;->d()V

    return-void
.end method

.method static synthetic d(Lcn/domob/android/ads/c;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcn/domob/android/ads/c;->f:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcn/domob/android/ads/c;->b:Lcn/domob/android/ads/c$b;

    if-eqz v0, :cond_0

    .line 140
    iget-boolean v0, p0, Lcn/domob/android/ads/c;->j:Z

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/c;->j:Z

    .line 142
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    const-string v1, "WebView finish callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcn/domob/android/ads/c;->b:Lcn/domob/android/ads/c$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/c$b;->a(Lcn/domob/android/ads/c;)V

    .line 146
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcn/domob/android/ads/c;->b:Lcn/domob/android/ads/c$b;

    if-eqz v0, :cond_0

    .line 150
    iget-boolean v0, p0, Lcn/domob/android/ads/c;->j:Z

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/c;->j:Z

    .line 152
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    const-string v1, "WebView failed callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcn/domob/android/ads/c;->b:Lcn/domob/android/ads/c$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/c$b;->b(Lcn/domob/android/ads/c;)V

    .line 156
    :cond_0
    return-void
.end method

.method static synthetic e(Lcn/domob/android/ads/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-boolean v0, p0, Lcn/domob/android/ads/c;->i:Z

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcn/domob/android/ads/c;->b:Lcn/domob/android/ads/c$b;

    if-eqz v0, :cond_0

    .line 160
    iget-boolean v0, p0, Lcn/domob/android/ads/c;->j:Z

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/c;->j:Z

    .line 162
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    const-string v1, "WebView timeout callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcn/domob/android/ads/c;->b:Lcn/domob/android/ads/c$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/c$b;->c(Lcn/domob/android/ads/c;)V

    .line 166
    :cond_0
    return-void
.end method

.method static synthetic f(Lcn/domob/android/ads/c;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/domob/android/ads/c;->f()V

    return-void
.end method

.method static synthetic g(Lcn/domob/android/ads/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-boolean v0, p0, Lcn/domob/android/ads/c;->g:Z

    return v0
.end method


# virtual methods
.method protected a()Lcn/domob/android/ads/b;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcn/domob/android/ads/c;->c:Lcn/domob/android/ads/b;

    return-object v0
.end method

.method protected a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 308
    if-eqz p2, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_1

    .line 309
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 310
    sget-object v3, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert js file :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcn/domob/android/ads/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    sget-object v3, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JS file path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<script src=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"></script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTML data after replace:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 319
    :cond_1
    return-object p1
.end method

.method protected a(I)V
    .locals 3
    .parameter

    .prologue
    .line 192
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView\'s timeout is set as :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 193
    iput p1, p0, Lcn/domob/android/ads/c;->f:I

    .line 194
    return-void
.end method

.method protected a(Lcn/domob/android/ads/c$a;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/c$a;

    .line 212
    return-void
.end method

.method protected a(Lcn/domob/android/ads/c$b;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcn/domob/android/ads/c;->b:Lcn/domob/android/ads/c$b;

    .line 221
    return-void
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 174
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 175
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    const-string v2, "BaseWebView instance executes js: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcn/domob/android/ads/c;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/ads/c$2;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/ads/c$2;-><init>(Lcn/domob/android/ads/c;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    const-string v3, "Load WebView with url = %s and data = %s."

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcn/domob/android/ads/c$c;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/c$c;-><init>(Lcn/domob/android/ads/c;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/c$c;->start()V

    .line 235
    invoke-static {p1}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 236
    :goto_0
    invoke-static {p2}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 238
    :goto_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 239
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/c;->loadUrl(Ljava/lang/String;)V

    .line 248
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 235
    goto :goto_0

    :cond_1
    move v3, v2

    .line 236
    goto :goto_1

    .line 240
    :cond_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    .line 241
    const-string v0, "text/html"

    const-string v1, "UTF-8"

    invoke-virtual {p0, p2, v0, v1}, Lcn/domob/android/ads/c;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 242
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 245
    :cond_4
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    const-string v3, "Error happened when loading WebView with URL = %s and data = %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-boolean p1, p0, Lcn/domob/android/ads/c;->g:Z

    .line 203
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    const/4 v1, 0x0

    .line 282
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    const-string v2, "loadData() is called with data = %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    .line 283
    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 288
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    const-string v1, "loadDataWithBaseURL() is called with baseURL = %s and data = %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 290
    invoke-static {p2}, Lcn/domob/android/ads/F;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcn/domob/android/ads/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 292
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    const-string v1, "Data is null or empty while calling \'loadDataWithBaseURL\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 253
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 256
    :cond_0
    sget-object v0, Lcn/domob/android/ads/c;->e:Lcn/domob/android/ads/J;

    const-string v1, "loadUrl() is called with url = %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcn/domob/android/ads/p;

    invoke-virtual {p0}, Lcn/domob/android/ads/c;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/domob/android/ads/c$3;

    invoke-direct {v2, p0, p1}, Lcn/domob/android/ads/c$3;-><init>(Lcn/domob/android/ads/c;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/domob/android/ads/p;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/p$a;)V

    .line 276
    invoke-virtual {v0}, Lcn/domob/android/ads/p;->b()V

    goto :goto_0
.end method
