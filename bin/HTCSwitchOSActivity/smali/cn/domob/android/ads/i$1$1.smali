.class Lcn/domob/android/ads/i$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/i$1;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i$1;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcn/domob/android/ads/i$1$1;->a:Lcn/domob/android/ads/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcn/domob/android/ads/i$1$1;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->c()V

    .line 594
    iget-object v0, p0, Lcn/domob/android/ads/i$1$1;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    sget-object v1, Lcn/domob/android/ads/i$a;->b:Lcn/domob/android/ads/i$a;

    iput-object v1, v0, Lcn/domob/android/ads/i;->j:Lcn/domob/android/ads/i$a;

    .line 595
    iget-object v0, p0, Lcn/domob/android/ads/i$1$1;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcn/domob/android/ads/i$1$1;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i$1$1;->a:Lcn/domob/android/ads/i$1;

    iget-object v1, v1, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V

    .line 598
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcn/domob/android/ads/i$1$1;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    sget-object v1, Lcn/domob/android/ads/i$a;->a:Lcn/domob/android/ads/i$a;

    iput-object v1, v0, Lcn/domob/android/ads/i;->j:Lcn/domob/android/ads/i$a;

    .line 603
    iget-object v0, p0, Lcn/domob/android/ads/i$1$1;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->d()V

    .line 604
    iget-object v0, p0, Lcn/domob/android/ads/i$1$1;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcn/domob/android/ads/i$1$1;->a:Lcn/domob/android/ads/i$1;

    iget-object v0, v0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i$1$1;->a:Lcn/domob/android/ads/i$1;

    iget-object v1, v1, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V

    .line 607
    :cond_0
    return-void
.end method
