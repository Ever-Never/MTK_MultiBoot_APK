.class Lcn/domob/android/ads/c$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/c;

.field private b:I


# direct methods
.method constructor <init>(Lcn/domob/android/ads/c;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcn/domob/android/ads/c$c;->a:Lcn/domob/android/ads/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/ads/c$c;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    :goto_0
    iget v0, p0, Lcn/domob/android/ads/c$c;->b:I

    iget-object v1, p0, Lcn/domob/android/ads/c$c;->a:Lcn/domob/android/ads/c;

    invoke-static {v1}, Lcn/domob/android/ads/c;->d(Lcn/domob/android/ads/c;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/c$c;->a:Lcn/domob/android/ads/c;

    invoke-static {v0}, Lcn/domob/android/ads/c;->e(Lcn/domob/android/ads/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 114
    iget v0, p0, Lcn/domob/android/ads/c$c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/domob/android/ads/c$c;->b:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-static {}, Lcn/domob/android/ads/c;->b()Lcn/domob/android/ads/J;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    :cond_0
    iget v0, p0, Lcn/domob/android/ads/c$c;->b:I

    iget-object v1, p0, Lcn/domob/android/ads/c$c;->a:Lcn/domob/android/ads/c;

    invoke-static {v1}, Lcn/domob/android/ads/c;->d(Lcn/domob/android/ads/c;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/c$c;->a:Lcn/domob/android/ads/c;

    invoke-static {v0}, Lcn/domob/android/ads/c;->e(Lcn/domob/android/ads/c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcn/domob/android/ads/c$c;->a:Lcn/domob/android/ads/c;

    invoke-static {v0}, Lcn/domob/android/ads/c;->a(Lcn/domob/android/ads/c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-static {}, Lcn/domob/android/ads/c;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "WebView \u52a0\u8f7d\u8d85\u65f6"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcn/domob/android/ads/c$c;->a:Lcn/domob/android/ads/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/c;->b(Lcn/domob/android/ads/c;Z)Z

    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/c$c;->a:Lcn/domob/android/ads/c;

    invoke-static {v0}, Lcn/domob/android/ads/c;->f(Lcn/domob/android/ads/c;)V

    .line 125
    iget-object v0, p0, Lcn/domob/android/ads/c$c;->a:Lcn/domob/android/ads/c;

    invoke-static {v0}, Lcn/domob/android/ads/c;->g(Lcn/domob/android/ads/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcn/domob/android/ads/c$c;->a:Lcn/domob/android/ads/c;

    invoke-virtual {v0}, Lcn/domob/android/ads/c;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/c$c$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/c$c$1;-><init>(Lcn/domob/android/ads/c$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    :cond_1
    return-void
.end method
