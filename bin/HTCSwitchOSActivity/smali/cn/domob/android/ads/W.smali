.class Lcn/domob/android/ads/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/V;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/V;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcn/domob/android/ads/W;->a:Lcn/domob/android/ads/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcn/domob/android/ads/W;->a:Lcn/domob/android/ads/V;

    invoke-virtual {v0}, Lcn/domob/android/ads/V;->e()Z

    move-result v0

    .line 62
    iget-object v1, p0, Lcn/domob/android/ads/W;->a:Lcn/domob/android/ads/V;

    invoke-static {v1}, Lcn/domob/android/ads/V;->a(Lcn/domob/android/ads/V;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 63
    iget-object v1, p0, Lcn/domob/android/ads/W;->a:Lcn/domob/android/ads/V;

    invoke-static {v1, v0}, Lcn/domob/android/ads/V;->a(Lcn/domob/android/ads/V;Z)Z

    .line 64
    iget-object v0, p0, Lcn/domob/android/ads/W;->a:Lcn/domob/android/ads/V;

    invoke-static {v0}, Lcn/domob/android/ads/V;->b(Lcn/domob/android/ads/V;)Lcn/domob/android/ads/ac;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/W;->a:Lcn/domob/android/ads/V;

    invoke-static {v1}, Lcn/domob/android/ads/V;->a(Lcn/domob/android/ads/V;)Z

    move-result v1

    invoke-static {v1}, Lcn/domob/android/ads/ad;->a(Z)Lcn/domob/android/ads/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/ac;->a(Lcn/domob/android/ads/Z;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/W;->a:Lcn/domob/android/ads/V;

    invoke-static {v0}, Lcn/domob/android/ads/V;->c(Lcn/domob/android/ads/V;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    return-void
.end method
