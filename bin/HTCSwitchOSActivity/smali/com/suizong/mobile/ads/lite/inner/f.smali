.class public abstract Lcom/suizong/mobile/ads/lite/inner/f;
.super Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public run()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/suizong/mobile/ads/lite/inner/f;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/suizong/mobile/ads/lite/inner/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/suizong/mobile/ads/lite/inner/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
