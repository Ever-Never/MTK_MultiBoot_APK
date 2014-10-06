.class public final Lcom/suizong/mobile/ads/lite/inner/e;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/suizong/mobile/ads/lite/inner/e;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mobplate"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mobplate"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(I)Z

    move-result v0

    return v0
.end method

.method private static a(I)Z
    .locals 1

    sget v0, Lcom/suizong/mobile/ads/lite/inner/e;->a:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mobplate"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mobplate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [Info ] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
