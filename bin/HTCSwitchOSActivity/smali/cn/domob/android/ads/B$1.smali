.class Lcn/domob/android/ads/B$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/B;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/B;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/B;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/DomobSplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/DomobSplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/DomobSplashAdListener;->onSplashPresent()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    iget-object v0, v0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    const-string v1, "s"

    const-string v2, "s"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 137
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    iget-object v0, v0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    const-string v1, "m"

    const-string v2, "s"

    iget-object v3, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    iget-object v3, v3, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v3}, Lcn/domob/android/ads/i;->e()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 143
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 148
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    iget-object v0, v0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    const-string v1, "f"

    const-string v2, "s"

    iget-object v3, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    iget-object v3, v3, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v3}, Lcn/domob/android/ads/i;->e()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 150
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/DomobSplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/DomobSplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/DomobSplashAdListener;->onSplashDismiss()V

    .line 153
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/B;->o()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Request another Ad when current cached Ad is shown."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcn/domob/android/ads/B;->o()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Delete old cached ad response."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcn/domob/android/ads/g;

    invoke-direct {v0}, Lcn/domob/android/ads/g;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    iget-object v1, v1, Lcn/domob/android/ads/B;->c:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-static {v2}, Lcn/domob/android/ads/B;->b(Lcn/domob/android/ads/B;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcn/domob/android/ads/g;

    invoke-direct {v0}, Lcn/domob/android/ads/g;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    iget-object v1, v1, Lcn/domob/android/ads/B;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->c(Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/B;->setOnAdListener(Lcn/domob/android/ads/DomobAdListener;)V

    .line 162
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/B;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 163
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/B;

    invoke-virtual {v0}, Lcn/domob/android/ads/B;->requestRefreshAd()V

    .line 164
    return-void
.end method
