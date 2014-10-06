.class Lcn/domob/android/ads/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i;->z()V
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
    .line 567
    iput-object p1, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 570
    iget-object v0, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v2

    .line 572
    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->c()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 573
    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->d()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v1, v1, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 574
    iget-object v0, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0, v3, v4}, Lcn/domob/android/ads/DomobAdView;->a(II)V

    .line 577
    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad Type from response is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 579
    const-string v1, "domob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    iget-object v0, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    new-instance v1, Lcn/domob/android/ads/m;

    iget-object v5, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v5, v5, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/domob/android/ads/i;->f:Lcn/domob/android/ads/b;

    .line 590
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->f:Lcn/domob/android/ads/b;

    new-instance v1, Lcn/domob/android/ads/i$1$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/i$1$1;-><init>(Lcn/domob/android/ads/i$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/b$a;)V

    .line 610
    iget-object v0, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v0, v0, Lcn/domob/android/ads/i;->f:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->a()Lcn/domob/android/ads/c;

    move-result-object v1

    .line 611
    instance-of v0, v1, Lcn/domob/android/ads/ac;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 612
    check-cast v0, Lcn/domob/android/ads/ac;

    iget-object v5, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/ac;->a(Lcn/domob/android/ads/x$b;)V

    .line 615
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    new-instance v0, Lcn/domob/android/ads/i$1$2;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/i$1$2;-><init>(Lcn/domob/android/ads/i$1;)V

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c;->a(Lcn/domob/android/ads/c$b;)V

    .line 657
    new-instance v0, Lcn/domob/android/ads/i$1$3;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/i$1$3;-><init>(Lcn/domob/android/ads/i$1;)V

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c;->a(Lcn/domob/android/ads/c$a;)V

    .line 665
    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->f()Ljava/lang/String;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 668
    const-string v3, "url"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 669
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get an DomobWebView instance and load with URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_1
    :goto_1
    return-void

    .line 581
    :cond_2
    const-string v1, "mraid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    iget-object v0, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    new-instance v1, Lcn/domob/android/ads/K;

    iget-object v5, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    iget-object v5, v5, Lcn/domob/android/ads/i;->a:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcn/domob/android/ads/K;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/domob/android/ads/i;->f:Lcn/domob/android/ads/b;

    goto/16 :goto_0

    .line 585
    :cond_3
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "bad ad received"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_1

    .line 671
    :cond_4
    const-string v3, "content"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v3, "Get an DomobWebView instance and load data = [%s] with base URL=[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->g()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 680
    :cond_5
    invoke-static {}, Lcn/domob/android/ads/i;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Content type is not available."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_1
.end method
