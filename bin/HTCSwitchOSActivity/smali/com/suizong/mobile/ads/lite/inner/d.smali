.class public final Lcom/suizong/mobile/ads/lite/inner/d;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/suizong/mobile/ads/lite/SZEventListener;


# direct methods
.method public constructor <init>(Lcom/suizong/mobile/ads/lite/SZEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/suizong/mobile/ads/lite/inner/d;->a:Lcom/suizong/mobile/ads/lite/SZEventListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/suizong/mobile/ads/lite/inner/d;->a:Lcom/suizong/mobile/ads/lite/SZEventListener;

    invoke-static {v0}, Lcom/suizong/mobile/ads/lite/SZEventListener;->a(Lcom/suizong/mobile/ads/lite/SZEventListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mobile_Ad_SDK"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
