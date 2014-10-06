.class public Lcn/domob/android/ads/D;
.super Lcn/domob/android/ads/H;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/D$a;
    }
.end annotation


# static fields
.field private static e:Lcn/domob/android/ads/J; = null

.field private static final i:Ljava/lang/String; = "domobBridge"


# instance fields
.field private f:I

.field private g:I

.field private h:Lcn/domob/android/ads/D$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/D;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcn/domob/android/ads/b;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/H;-><init>(Landroid/content/Context;Ljava/lang/String;ILcn/domob/android/ads/b;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/ads/D;->f:I

    .line 27
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/D;[BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/D;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/domob/android/ads/D;->getContext()Landroid/content/Context;

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

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 139
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 129
    goto :goto_0

    .line 140
    :catch_1
    move-exception v1

    .line 141
    sget-object v2, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 134
    :catch_2
    move-exception v0

    .line 135
    :try_start_3
    sget-object v2, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    move-object v0, v1

    .line 142
    goto :goto_0

    .line 140
    :catch_3
    move-exception v0

    .line 141
    sget-object v2, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 142
    :goto_2
    throw v0

    .line 140
    :catch_4
    move-exception v1

    .line 141
    sget-object v2, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic c()Lcn/domob/android/ads/J;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcn/domob/android/ads/D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/domob/android/ads/F;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "domob.js"

    aput-object v3, v1, v2

    .line 33
    invoke-super {p0, v0, v1}, Lcn/domob/android/ads/H;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcn/domob/android/ads/p;)V
    .locals 4
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1}, Lcn/domob/android/ads/p;->f()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcn/domob/android/ads/p;->a()Ljava/lang/String;

    move-result-object v0

    .line 96
    sget-object v1, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download finish:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/domob/android/ads/D$1;

    invoke-direct {v2, p0, p1, v0}, Lcn/domob/android/ads/D$1;-><init>(Lcn/domob/android/ads/D;Lcn/domob/android/ads/p;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 120
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/D$a;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput p3, p0, Lcn/domob/android/ads/D;->f:I

    .line 38
    iput-object p4, p0, Lcn/domob/android/ads/D;->h:Lcn/domob/android/ads/D$a;

    .line 39
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/D;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcn/domob/android/ads/D;->g:I

    iget v1, p0, Lcn/domob/android/ads/D;->f:I

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcn/domob/android/ads/D;->h:Lcn/domob/android/ads/D$a;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/domob/android/ads/D;->h:Lcn/domob/android/ads/D$a;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/D$a;->a(Lcn/domob/android/ads/H;)V

    .line 47
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    :try_start_0
    new-instance v0, Lcn/domob/android/ads/g;

    invoke-direct {v0}, Lcn/domob/android/ads/g;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcn/domob/android/ads/D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p2}, Lcn/domob/android/ads/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    sget-object v1, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    const-string v2, "There is no pair in DB: %s : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcn/domob/android/ads/D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcn/domob/android/ads/g;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/domob/android/ads/g;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    invoke-virtual {p0}, Lcn/domob/android/ads/D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/domob/android/ads/g;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    sget-object v1, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    const-string v2, "Get image %s local location = %s from DB."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 62
    const-string v1, "%s.assetReady(\'%s\', \'%s\')"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "domobBridge"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/D;->a(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcn/domob/android/ads/D;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/domob/android/ads/D;->g:I

    .line 66
    iget v0, p0, Lcn/domob/android/ads/D;->g:I

    iget v1, p0, Lcn/domob/android/ads/D;->f:I

    if-ne v0, v1, :cond_2

    .line 67
    iget-object v0, p0, Lcn/domob/android/ads/D;->h:Lcn/domob/android/ads/D$a;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcn/domob/android/ads/D;->h:Lcn/domob/android/ads/D$a;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/D$a;->a(Lcn/domob/android/ads/H;)V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    sget-object v0, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    const-string v1, "Total resources number=%d and replaced number=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcn/domob/android/ads/D;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcn/domob/android/ads/D;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    sget-object v1, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :cond_3
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    const-string v1, "Alias %s is in DB but the local location is not available. Need to download."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 83
    :goto_1
    sget-object v0, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    const-string v1, "Alias %s is about to be downloaded."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcn/domob/android/ads/p;

    invoke-virtual {p0}, Lcn/domob/android/ads/D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcn/domob/android/ads/p;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/p$a;)V

    .line 85
    invoke-virtual {v0, p2}, Lcn/domob/android/ads/p;->a(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcn/domob/android/ads/p;->b()V

    goto :goto_0

    .line 80
    :cond_4
    sget-object v0, Lcn/domob/android/ads/D;->e:Lcn/domob/android/ads/J;

    const-string v1, "Alias %s is not in DB. Download and insert."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 12
    invoke-super {p0, p1, p2, p3}, Lcn/domob/android/ads/H;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 12
    invoke-super/range {p0 .. p5}, Lcn/domob/android/ads/H;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic loadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcn/domob/android/ads/H;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
