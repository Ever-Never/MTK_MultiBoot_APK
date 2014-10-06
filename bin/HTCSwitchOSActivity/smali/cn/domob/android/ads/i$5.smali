.class Lcn/domob/android/ads/i$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/ac$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
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
    .line 974
    iput-object p1, p0, Lcn/domob/android/ads/i$5;->a:Lcn/domob/android/ads/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcn/domob/android/ads/i$5;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcn/domob/android/ads/i$5;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i$5;->a:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V

    .line 980
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcn/domob/android/ads/i$5;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcn/domob/android/ads/i$5;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i$5;->a:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V

    .line 987
    :cond_0
    return-void
.end method
