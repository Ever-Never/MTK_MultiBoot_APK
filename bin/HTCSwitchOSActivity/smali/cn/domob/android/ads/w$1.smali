.class Lcn/domob/android/ads/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/w;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/w;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/w;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcn/domob/android/ads/w$1;->a:Lcn/domob/android/ads/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 84
    iget-object v0, p0, Lcn/domob/android/ads/w$1;->a:Lcn/domob/android/ads/w;

    invoke-static {v0}, Lcn/domob/android/ads/w;->a(Lcn/domob/android/ads/w;)Lcn/domob/android/ads/DomobInterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/domob/android/ads/w$1;->a:Lcn/domob/android/ads/w;

    invoke-static {v0}, Lcn/domob/android/ads/w;->a(Lcn/domob/android/ads/w;)Lcn/domob/android/ads/DomobInterstitialAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdPresent()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/w$1;->a:Lcn/domob/android/ads/w;

    iget-object v0, v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    const-string v1, "s"

    const-string v2, "s"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 89
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 93
    iget-object v0, p0, Lcn/domob/android/ads/w$1;->a:Lcn/domob/android/ads/w;

    iget-object v0, v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    const-string v1, "m"

    const-string v2, "s"

    iget-object v3, p0, Lcn/domob/android/ads/w$1;->a:Lcn/domob/android/ads/w;

    iget-object v3, v3, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v3}, Lcn/domob/android/ads/i;->e()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 95
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lcn/domob/android/ads/w$1;->a:Lcn/domob/android/ads/w;

    iget-object v0, v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    const-string v1, "f"

    const-string v2, "s"

    iget-object v3, p0, Lcn/domob/android/ads/w$1;->a:Lcn/domob/android/ads/w;

    iget-object v3, v3, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v3}, Lcn/domob/android/ads/i;->e()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 101
    iget-object v0, p0, Lcn/domob/android/ads/w$1;->a:Lcn/domob/android/ads/w;

    invoke-static {v0}, Lcn/domob/android/ads/w;->a(Lcn/domob/android/ads/w;)Lcn/domob/android/ads/DomobInterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/domob/android/ads/w$1;->a:Lcn/domob/android/ads/w;

    invoke-static {v0}, Lcn/domob/android/ads/w;->a(Lcn/domob/android/ads/w;)Lcn/domob/android/ads/DomobInterstitialAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdDismiss()V

    .line 104
    :cond_0
    return-void
.end method
