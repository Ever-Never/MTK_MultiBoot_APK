.class Lcn/domob/android/ads/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

.field final synthetic b:Lcn/domob/android/ads/i;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcn/domob/android/ads/i$2;->b:Lcn/domob/android/ads/i;

    iput-object p2, p0, Lcn/domob/android/ads/i$2;->a:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Lcn/domob/android/ads/i$2;->b:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->e()Lcn/domob/android/ads/DomobAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcn/domob/android/ads/i$2;->b:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->e()Lcn/domob/android/ads/DomobAdListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i$2;->b:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdListener;->onFailedToReceiveFreshAd(Lcn/domob/android/ads/DomobAdView;)V

    .line 809
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/i$2;->b:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcn/domob/android/ads/i$2;->b:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i$2;->b:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    iget-object v2, p0, Lcn/domob/android/ads/i$2;->a:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 812
    :cond_1
    return-void
.end method
