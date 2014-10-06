.class Lcn/domob/android/ads/i$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/i;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;)V
    .locals 0
    .parameter

    .prologue
    .line 1121
    iput-object p1, p0, Lcn/domob/android/ads/i$6;->a:Lcn/domob/android/ads/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcn/domob/android/ads/i$6;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->e()Lcn/domob/android/ads/DomobAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcn/domob/android/ads/i$6;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->e()Lcn/domob/android/ads/DomobAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/DomobAdListener;->onLandingPageOpening()V

    .line 1128
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/i$6;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcn/domob/android/ads/i$6;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i$6;->a:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V

    .line 1131
    :cond_1
    return-void
.end method
