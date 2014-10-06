.class public Lcn/domob/android/ads/DomobAdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobAdView$a;
    }
.end annotation


# static fields
.field public static final INLINE_SIZE_300X250:Ljava/lang/String; = "300x250"

.field public static final INLINE_SIZE_320X50:Ljava/lang/String; = "320x50"

.field public static final INLINE_SIZE_600X500:Ljava/lang/String; = "600x500"

.field public static final INLINE_SIZE_600X94:Ljava/lang/String; = "600x94"

.field public static final INLINE_SIZE_728X90:Ljava/lang/String; = "728x90"

.field private static p:Lcn/domob/android/ads/J;


# instance fields
.field protected a:Lcn/domob/android/ads/i;

.field protected b:I

.field protected c:Landroid/content/Context;

.field protected d:Z

.field protected e:Z

.field protected f:Lcn/domob/android/ads/G;

.field protected g:Lcn/domob/android/ads/b;

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:I

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Lcn/domob/android/ads/DomobAdListener;

.field protected o:Lcn/domob/android/ads/DomobAdEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    const-string v1, "320x50"

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "publisherID"
    .parameter "size"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "publisherID"
    .parameter "size"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    .line 28
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    .line 30
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    .line 36
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->k:Z

    .line 37
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->l:Z

    .line 38
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Z

    .line 102
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current SDK version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/domob/android/ads/F;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " built at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/domob/android/ads/F;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    .line 106
    new-instance v0, Lcn/domob/android/ads/G;

    invoke-direct {v0, p1}, Lcn/domob/android/ads/G;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G;->setVisibility(I)V

    .line 110
    invoke-virtual {p0, p2}, Lcn/domob/android/ads/DomobAdView;->a(Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lcn/domob/android/ads/q;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->addView(Landroid/view/View;)V

    .line 114
    if-eqz p3, :cond_0

    .line 115
    iput-object p3, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    .line 121
    :goto_0
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->b:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->b:I

    .line 122
    return-void

    .line 118
    :cond_0
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "publisherID"
    .parameter "size"
    .parameter "isRefreshable"

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 67
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 68
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Z)V

    .line 69
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->b(Z)V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic l()Lcn/domob/android/ads/J;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->requestRefreshAd()V

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    iput p1, p0, Lcn/domob/android/ads/DomobAdView;->i:I

    .line 236
    iput p2, p0, Lcn/domob/android/ads/DomobAdView;->j:I

    .line 237
    return-void
.end method

.method protected a(Lcn/domob/android/ads/b;[Landroid/view/animation/AnimationSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 267
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    const-string v1, "Switch AD with/without animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 268
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->g:Lcn/domob/android/ads/b;

    .line 269
    invoke-virtual {p1}, Lcn/domob/android/ads/b;->a()Lcn/domob/android/ads/c;

    move-result-object v1

    .line 272
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/ads/DomobAdView$1;

    invoke-direct {v2, p0, p2, v1, p1}, Lcn/domob/android/ads/DomobAdView$1;-><init>(Lcn/domob/android/ads/DomobAdView;[Landroid/view/animation/AnimationSet;Lcn/domob/android/ads/c;Lcn/domob/android/ads/b;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->j()V

    .line 335
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->x()V

    .line 336
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    new-instance v0, Lcn/domob/android/ads/i;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/i;-><init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    .line 129
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->b:I

    return v0
.end method

.method protected e()Lcn/domob/android/ads/DomobAdListener;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    return-object v0
.end method

.method protected f()Lcn/domob/android/ads/DomobAdEventListener;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    return-object v0
.end method

.method protected g()Lcn/domob/android/ads/b;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->g:Lcn/domob/android/ads/b;

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected i()Z
    .locals 3

    .prologue
    .line 242
    const/4 v2, 0x1

    .line 243
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 244
    :goto_0
    if-eqz v1, :cond_2

    .line 246
    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_0

    move v0, v2

    .line 255
    :goto_1
    return v0

    :cond_0
    move-object v0, v1

    .line 249
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x0

    .line 251
    goto :goto_1

    .line 253
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected j()V
    .locals 5

    .prologue
    .line 343
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    const-string v1, "s"

    const-string v2, "s"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/ads/i;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 344
    return-void
.end method

.method protected k()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "format"

    .prologue
    .line 468
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Z)V

    .line 470
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->c(Z)V

    .line 471
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/i;->j(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, p2}, Lcn/domob/android/ads/i;->k(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->A()V

    .line 476
    :goto_0
    return-void

    .line 475
    :cond_0
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    const-string v1, "mAdController is not initialized!"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 161
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    const-string v1, "onAttachedToWindow"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    const-string v1, "Start to load AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->m()V

    .line 164
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 169
    :try_start_0
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    const-string v2, "onDetachedFromWindow"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v1}, Lcn/domob/android/ads/i;->b()V

    .line 171
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    const-string v2, "Clean DomobAdView."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v1}, Lcn/domob/android/ads/G;->getChildCount()I

    move-result v2

    .line 173
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WebView to DESTROY."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    move v1, v0

    .line 174
    :goto_0
    if-ge v1, v2, :cond_2

    .line 176
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/G;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/domob/android/ads/c;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/G;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/c;

    .line 178
    if-eqz v0, :cond_1

    .line 179
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/G;->removeView(Landroid/view/View;)V

    .line 180
    invoke-virtual {v0}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->e()V

    .line 174
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 182
    :cond_1
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    const-string v3, "WebView has already been destroyed."

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    :try_start_1
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/J;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 191
    :goto_2
    return-void

    .line 189
    :cond_2
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 134
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 135
    iput-boolean p1, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    .line 137
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 138
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->d()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->h()V

    goto :goto_0

    .line 144
    :cond_2
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    if-nez v0, :cond_0

    .line 145
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->c()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 153
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/J;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 154
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestAdForAggregationPlatform()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Z)V

    .line 456
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->b(Z)V

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->requestRefreshAd()V

    .line 460
    return-void
.end method

.method public requestRefreshAd()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->v()V

    .line 448
    :cond_0
    return-void
.end method

.method public setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V
    .locals 0
    .parameter "eventListener"

    .prologue
    .line 436
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    .line 437
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1
    .parameter "keyword"

    .prologue
    .line 376
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/i;->b(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public setOnAdListener(Lcn/domob/android/ads/DomobAdListener;)V
    .locals 0
    .parameter "adListener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 426
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    .line 427
    return-void
.end method

.method public setRefreshable(Z)V
    .locals 1
    .parameter "refreshable"

    .prologue
    .line 415
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/i;->a(Z)V

    .line 418
    :cond_0
    return-void
.end method

.method public setSpots(Ljava/lang/String;)V
    .locals 1
    .parameter "spot"

    .prologue
    .line 365
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/i;->f(Ljava/lang/String;)V

    .line 368
    :cond_0
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .locals 1
    .parameter "birthday"

    .prologue
    .line 396
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/i;->e(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 1
    .parameter "gender"

    .prologue
    .line 386
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/i;->d(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .locals 1
    .parameter "pc"

    .prologue
    .line 406
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/i;->c(Ljava/lang/String;)V

    .line 407
    return-void
.end method
