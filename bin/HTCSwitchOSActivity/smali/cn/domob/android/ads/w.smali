.class Lcn/domob/android/ads/w;
.super Lcn/domob/android/ads/DomobAdView;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/DomobAdEventListener;


# static fields
.field private static p:Lcn/domob/android/ads/J;


# instance fields
.field private q:Z

.field private r:Lcn/domob/android/ads/DomobInterstitialAdListener;

.field private s:Lcn/domob/android/ads/y$a;

.field private t:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/w;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/w;->p:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-boolean v1, p0, Lcn/domob/android/ads/w;->q:Z

    .line 17
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->Black:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    iput-object v0, p0, Lcn/domob/android/ads/w;->t:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 18
    iput-object v2, p0, Lcn/domob/android/ads/w;->u:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object v2, p0, Lcn/domob/android/ads/w;->x:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcn/domob/android/ads/w;->x:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Z)V

    .line 28
    iget-object v0, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->b(Z)V

    .line 31
    :cond_0
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->c:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/w;->b:I

    .line 32
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-boolean v1, p0, Lcn/domob/android/ads/w;->q:Z

    .line 17
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->Black:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    iput-object v0, p0, Lcn/domob/android/ads/w;->t:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 18
    iput-object v2, p0, Lcn/domob/android/ads/w;->u:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object v2, p0, Lcn/domob/android/ads/w;->x:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcn/domob/android/ads/w;->x:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Z)V

    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->b(Z)V

    .line 52
    :cond_0
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->c:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/w;->b:I

    .line 53
    iput-object p4, p0, Lcn/domob/android/ads/w;->u:Landroid/graphics/drawable/Drawable;

    .line 54
    iput p5, p0, Lcn/domob/android/ads/w;->v:I

    .line 55
    iput p6, p0, Lcn/domob/android/ads/w;->w:I

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/DomobInterstitialAd$BorderType;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-boolean v1, p0, Lcn/domob/android/ads/w;->q:Z

    .line 17
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->Black:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    iput-object v0, p0, Lcn/domob/android/ads/w;->t:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 18
    iput-object v2, p0, Lcn/domob/android/ads/w;->u:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object v2, p0, Lcn/domob/android/ads/w;->x:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcn/domob/android/ads/w;->x:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Z)V

    .line 38
    iget-object v0, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->b(Z)V

    .line 41
    :cond_0
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->c:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/w;->b:I

    .line 42
    iput-object p4, p0, Lcn/domob/android/ads/w;->t:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 43
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/w;)Lcn/domob/android/ads/DomobInterstitialAdListener;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    iget-object v0, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->u()Lcn/domob/android/ads/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->p()Z

    move-result v0

    .line 69
    iget-object v3, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v3}, Lcn/domob/android/ads/i;->u()Lcn/domob/android/ads/l;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/l$b;->q()I

    move-result v3

    .line 70
    iget-object v4, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v4}, Lcn/domob/android/ads/i;->u()Lcn/domob/android/ads/l;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/l$b;->r()I

    move-result v4

    .line 71
    iget-object v5, p0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/i;

    iput-object p1, v5, Lcn/domob/android/ads/i;->b:Landroid/content/Context;

    .line 73
    iget-object v5, p0, Lcn/domob/android/ads/w;->x:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 74
    iput v6, p0, Lcn/domob/android/ads/w;->i:I

    .line 75
    iput v6, p0, Lcn/domob/android/ads/w;->j:I

    .line 77
    :cond_0
    new-instance v5, Lcn/domob/android/ads/y$a;

    invoke-direct {v5, p1}, Lcn/domob/android/ads/y$a;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcn/domob/android/ads/w;->i:I

    iget v7, p0, Lcn/domob/android/ads/w;->j:I

    invoke-virtual {v5, v6, v7}, Lcn/domob/android/ads/y$a;->a(II)Lcn/domob/android/ads/y$a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcn/domob/android/ads/y$a;->c(Z)Lcn/domob/android/ads/y$a;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/android/ads/w;->t:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/y$a;->a(Lcn/domob/android/ads/DomobInterstitialAd$BorderType;)Lcn/domob/android/ads/y$a;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/android/ads/w;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/y$a;->a(Landroid/graphics/drawable/Drawable;)Lcn/domob/android/ads/y$a;

    move-result-object v5

    iget v6, p0, Lcn/domob/android/ads/w;->v:I

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/y$a;->a(I)Lcn/domob/android/ads/y$a;

    move-result-object v5

    iget v6, p0, Lcn/domob/android/ads/w;->w:I

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/y$a;->b(I)Lcn/domob/android/ads/y$a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/domob/android/ads/y$a;->a(Z)Lcn/domob/android/ads/y$a;

    move-result-object v5

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0, v3}, Lcn/domob/android/ads/y$a;->a(ZI)Lcn/domob/android/ads/y$a;

    move-result-object v3

    if-eqz v4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0, v4}, Lcn/domob/android/ads/y$a;->b(ZI)Lcn/domob/android/ads/y$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/y$a;->b(Z)Lcn/domob/android/ads/y$a;

    move-result-object v0

    new-instance v1, Lcn/domob/android/ads/w$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/w$1;-><init>(Lcn/domob/android/ads/w;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/y$a;->a(Lcn/domob/android/ads/y$b;)Lcn/domob/android/ads/y$a;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/w;->s:Lcn/domob/android/ads/y$a;

    .line 108
    iget-object v0, p0, Lcn/domob/android/ads/w;->s:Lcn/domob/android/ads/y$a;

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/y$a;->a(Landroid/view/View;)V

    .line 110
    iput-boolean v2, p0, Lcn/domob/android/ads/w;->q:Z

    .line 111
    return-void

    :cond_1
    move v0, v2

    .line 77
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method a(Lcn/domob/android/ads/DomobInterstitialAdListener;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    .line 135
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/w;->s:Lcn/domob/android/ads/y$a;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcn/domob/android/ads/w;->s:Lcn/domob/android/ads/y$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/y$a;->a()V

    .line 123
    :cond_0
    return-void
.end method

.method m()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0, p0}, Lcn/domob/android/ads/DomobAdView;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 60
    invoke-super {p0}, Lcn/domob/android/ads/DomobAdView;->requestRefreshAd()V

    .line 61
    return-void
.end method

.method n()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcn/domob/android/ads/w;->q:Z

    return v0
.end method

.method o()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcn/domob/android/ads/w;->q:Z

    return v0
.end method

.method public onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 179
    return-void
.end method

.method public onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 2
    .parameter "adView"
    .parameter "code"

    .prologue
    .line 148
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcn/domob/android/ads/w;->p:Lcn/domob/android/ads/J;

    const-string v1, "Notify interstitial ad failed."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0, p2}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdFailed(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 164
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcn/domob/android/ads/w;->p:Lcn/domob/android/ads/J;

    const-string v1, "Notify interstitial ad landing page close."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onLandingPageClose()V

    .line 168
    :cond_0
    return-void
.end method

.method public onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 156
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcn/domob/android/ads/w;->p:Lcn/domob/android/ads/J;

    const-string v1, "Notify interstitial ad landing page open."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onLandingPageOpen()V

    .line 160
    :cond_0
    return-void
.end method

.method public onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/w;->q:Z

    .line 140
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcn/domob/android/ads/w;->p:Lcn/domob/android/ads/J;

    const-string v1, "Notify interstitial ad ready."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdReady()V

    .line 144
    :cond_0
    return-void
.end method

.method public onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 171
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcn/domob/android/ads/w;->p:Lcn/domob/android/ads/J;

    const-string v1, "Notify interstitial ad leaving application."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdLeaveApplication()V

    .line 175
    :cond_0
    return-void
.end method

.method p()Lcn/domob/android/ads/DomobInterstitialAdListener;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/w;->r:Lcn/domob/android/ads/DomobInterstitialAdListener;

    return-object v0
.end method
