.class public final Lcom/baidu/mobads/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mobads/a/d;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/baidu/mobads/a/d;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0}, Lcom/baidu/mobads/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0, p1}, Lcom/baidu/mobads/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/baidu/mobads/a/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs a([Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/baidu/mobads/a/d;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    const-string v0, "_b_sdk.log"

    invoke-static {v0}, Lcom/baidu/mobads/a/b;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/baidu/mobads/a/d;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/baidu/mobads/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Log.debug"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1

    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0}, Lcom/baidu/mobads/a/d;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0}, Lcom/baidu/mobads/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0, p1}, Lcom/baidu/mobads/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs b([Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/baidu/mobads/a/d;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0}, Lcom/baidu/mobads/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0, p1}, Lcom/baidu/mobads/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Mobads Proxy"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/baidu/mobads/a/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs c([Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/baidu/mobads/a/d;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static d([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p0, v1

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
