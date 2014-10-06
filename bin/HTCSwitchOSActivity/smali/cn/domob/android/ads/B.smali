.class Lcn/domob/android/ads/B;
.super Lcn/domob/android/ads/DomobAdView;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/DomobAdEventListener;


# static fields
.field private static p:Lcn/domob/android/ads/J;


# instance fields
.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Lcn/domob/android/ads/DomobSplashAdListener;

.field private u:Lcn/domob/android/ads/y$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/B;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    const-string v1, "Init SplashAdView."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/i;->a(Z)V

    .line 25
    iget-object v0, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/i;->b(Z)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/B;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/G;->setVisibility(I)V

    .line 30
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->d:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/B;->b:I

    .line 31
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/DomobSplashAdListener;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcn/domob/android/ads/B;->t:Lcn/domob/android/ads/DomobSplashAdListener;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/B;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcn/domob/android/ads/B;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o()Lcn/domob/android/ads/J;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    return-object v0
.end method

.method private p()Z
    .locals 6

    .prologue
    .line 62
    new-instance v0, Lcn/domob/android/ads/g;

    invoke-direct {v0}, Lcn/domob/android/ads/g;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/B;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->b(Landroid/content/Context;)Lcn/domob/android/ads/ae;

    move-result-object v1

    .line 63
    if-nez v1, :cond_0

    .line 64
    sget-object v0, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    const-string v1, "There is no available cache ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    check-cast v0, Lcn/domob/android/ads/A;

    const/4 v1, 0x0

    const-string v2, "sp_no_creative"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/A;->a(Lcn/domob/android/ads/l;Ljava/lang/String;)V

    .line 85
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 66
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1}, Lcn/domob/android/ads/ae;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 67
    sget-object v0, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    const-string v2, "Cached ad expires."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    check-cast v0, Lcn/domob/android/ads/A;

    invoke-virtual {v1}, Lcn/domob/android/ads/ae;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/domob/android/ads/l;->a(Ljava/lang/String;)Lcn/domob/android/ads/l;

    move-result-object v1

    const-string v2, "sp_expire"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/A;->a(Lcn/domob/android/ads/l;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v1}, Lcn/domob/android/ads/ae;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/B;->q:Ljava/lang/String;

    .line 73
    invoke-virtual {v1}, Lcn/domob/android/ads/ae;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/B;->r:Ljava/lang/String;

    .line 74
    new-instance v0, Lcn/domob/android/ads/g;

    invoke-direct {v0}, Lcn/domob/android/ads/g;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/B;->c:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/B;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/B;->s:I

    .line 75
    iget v0, p0, Lcn/domob/android/ads/B;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 76
    sget-object v0, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    const-string v1, "All resources of creative is ok."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    goto :goto_1

    .line 79
    :cond_2
    sget-object v0, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    const-string v1, "Some resources of creative is not ok."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    check-cast v0, Lcn/domob/android/ads/A;

    iget-object v1, p0, Lcn/domob/android/ads/B;->r:Ljava/lang/String;

    invoke-static {v1}, Lcn/domob/android/ads/l;->a(Ljava/lang/String;)Lcn/domob/android/ads/l;

    move-result-object v1

    const-string v2, "sp_res_incomplete"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/A;->a(Lcn/domob/android/ads/l;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load cached Ad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/B;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcn/domob/android/ads/B;->c:Landroid/content/Context;

    .line 102
    invoke-super {p0, p0}, Lcn/domob/android/ads/DomobAdView;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 103
    iget-object v0, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->c(Z)V

    .line 104
    iget-object v0, p0, Lcn/domob/android/ads/B;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/ads/l;->a(Ljava/lang/String;)Lcn/domob/android/ads/l;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/B;->s:I

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/l$b;->a(I)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/l;I)V

    .line 110
    return-void
.end method

.method a(Lcn/domob/android/ads/DomobSplashAdListener;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcn/domob/android/ads/B;->t:Lcn/domob/android/ads/DomobSplashAdListener;

    .line 40
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcn/domob/android/ads/A;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/A;-><init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    .line 36
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcn/domob/android/ads/B;->u:Lcn/domob/android/ads/y$a;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcn/domob/android/ads/B;->u:Lcn/domob/android/ads/y$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/y$a;->a()V

    .line 180
    :cond_0
    return-void
.end method

.method m()Z
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcn/domob/android/ads/B;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    const-string v1, "Both splash ad response and it\'s resources are OK."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->requestRefreshAd()V

    .line 52
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected n()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->invalidate()V

    .line 122
    iget-object v0, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->u()Lcn/domob/android/ads/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->p()Z

    move-result v0

    .line 123
    iget-object v3, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v3}, Lcn/domob/android/ads/i;->u()Lcn/domob/android/ads/l;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/l$b;->q()I

    move-result v3

    .line 124
    iget-object v4, p0, Lcn/domob/android/ads/B;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v4}, Lcn/domob/android/ads/i;->u()Lcn/domob/android/ads/l;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/l$b;->r()I

    move-result v4

    .line 126
    new-instance v5, Lcn/domob/android/ads/y$a;

    iget-object v6, p0, Lcn/domob/android/ads/B;->c:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcn/domob/android/ads/y$a;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcn/domob/android/ads/B;->i:I

    iget v7, p0, Lcn/domob/android/ads/B;->j:I

    invoke-virtual {v5, v6, v7}, Lcn/domob/android/ads/y$a;->a(II)Lcn/domob/android/ads/y$a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/domob/android/ads/y$a;->a(Z)Lcn/domob/android/ads/y$a;

    move-result-object v5

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0, v3}, Lcn/domob/android/ads/y$a;->a(ZI)Lcn/domob/android/ads/y$a;

    move-result-object v0

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2, v4}, Lcn/domob/android/ads/y$a;->b(ZI)Lcn/domob/android/ads/y$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/y$a;->b(Z)Lcn/domob/android/ads/y$a;

    move-result-object v0

    new-instance v1, Lcn/domob/android/ads/B$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/B$1;-><init>(Lcn/domob/android/ads/B;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/y$a;->a(Lcn/domob/android/ads/y$b;)Lcn/domob/android/ads/y$a;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/B;->u:Lcn/domob/android/ads/y$a;

    .line 167
    iget-object v0, p0, Lcn/domob/android/ads/B;->u:Lcn/domob/android/ads/y$a;

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/y$a;->a(Landroid/view/View;)V

    .line 168
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-object v3, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 126
    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->invalidate()V

    .line 92
    return-void
.end method

.method public onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 211
    return-void
.end method

.method public onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 2
    .parameter "adView"
    .parameter "code"

    .prologue
    .line 189
    sget-object v0, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    const-string v1, "Failed to load ad or get ad responce."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/B;->t:Lcn/domob/android/ads/DomobSplashAdListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcn/domob/android/ads/B;->t:Lcn/domob/android/ads/DomobSplashAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobSplashAdListener;->onSplashLoadFailed()V

    .line 193
    :cond_0
    return-void
.end method

.method public onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 203
    return-void
.end method

.method public onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 198
    return-void
.end method

.method public onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 184
    sget-object v0, Lcn/domob/android/ads/B;->p:Lcn/domob/android/ads/J;

    const-string v1, "Get new splash ad responce."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 207
    return-void
.end method
