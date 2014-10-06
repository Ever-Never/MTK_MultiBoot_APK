.class Lcn/domob/android/ads/DomobAdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/b;[Landroid/view/animation/AnimationSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/view/animation/AnimationSet;

.field final synthetic b:Lcn/domob/android/ads/c;

.field final synthetic c:Lcn/domob/android/ads/b;

.field final synthetic d:Lcn/domob/android/ads/DomobAdView;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobAdView;[Landroid/view/animation/AnimationSet;Lcn/domob/android/ads/c;Lcn/domob/android/ads/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iput-object p2, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    iput-object p3, p0, Lcn/domob/android/ads/DomobAdView$1;->b:Lcn/domob/android/ads/c;

    iput-object p4, p0, Lcn/domob/android/ads/DomobAdView$1;->c:Lcn/domob/android/ads/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 275
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 276
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->l()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "AdView\'s layoutParams is not null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v1, v1, Lcn/domob/android/ads/DomobAdView;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 278
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v1, v1, Lcn/domob/android/ads/DomobAdView;->j:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_4

    .line 285
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->l()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Show ad with animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    aget-object v0, v0, v5

    .line 288
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 289
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v2, v2, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/G;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 290
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 298
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/G;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->b:Lcn/domob/android/ads/c;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v3, v3, Lcn/domob/android/ads/DomobAdView;->i:I

    iget-object v4, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v4, v4, Lcn/domob/android/ads/DomobAdView;->j:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/G;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-boolean v0, v0, Lcn/domob/android/ads/DomobAdView;->k:Z

    if-eqz v0, :cond_5

    .line 304
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iput-boolean v5, v0, Lcn/domob/android/ads/DomobAdView;->k:Z

    .line 310
    :goto_2
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/G;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/domob/android/ads/c;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/G;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/c;

    .line 313
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, v1, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/G;->removeView(Landroid/view/View;)V

    .line 314
    invoke-virtual {v0}, Lcn/domob/android/ads/c;->a()Lcn/domob/android/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->e()V

    .line 319
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->c:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->c()V

    .line 321
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/i;->a(J)V

    .line 324
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdListener;->onReceivedFreshAd(Lcn/domob/android/ads/DomobAdView;)V

    .line 328
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V

    .line 331
    :cond_2
    return-void

    .line 280
    :cond_3
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->l()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "AdView\'s layoutParams is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v2, v2, Lcn/domob/android/ads/DomobAdView;->i:I

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v3, v3, Lcn/domob/android/ads/DomobAdView;->j:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 292
    :cond_4
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->l()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Show ad without animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0, v4}, Lcn/domob/android/ads/G;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 294
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0, v4}, Lcn/domob/android/ads/G;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 306
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/G;

    invoke-virtual {v0}, Lcn/domob/android/ads/G;->showNext()V

    goto/16 :goto_2
.end method
