.class Lcn/domob/android/ads/A$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/A;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/A;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/A;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 116
    invoke-static {}, Lcn/domob/android/ads/A;->H()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Start to load Splash Ad page."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->b(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v0, v0, Lcn/domob/android/ads/A;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->c()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v2, v2, Lcn/domob/android/ads/A;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 119
    invoke-virtual {v0}, Lcn/domob/android/ads/l$b;->d()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v2, v2, Lcn/domob/android/ads/A;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v0, v0, Lcn/domob/android/ads/A;->c:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/DomobAdView;->a(II)V

    .line 122
    iget-object v0, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    new-instance v3, Lcn/domob/android/ads/C;

    iget-object v4, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v4, v4, Lcn/domob/android/ads/A;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcn/domob/android/ads/C;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcn/domob/android/ads/A;->f:Lcn/domob/android/ads/b;

    .line 123
    iget-object v0, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v0, v0, Lcn/domob/android/ads/A;->f:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->a()Lcn/domob/android/ads/c;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/D;

    .line 124
    invoke-static {}, Lcn/domob/android/ads/A;->H()Lcn/domob/android/ads/J;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background WebView is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/domob/android/ads/D;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 125
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/D;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v1, Lcn/domob/android/ads/A$1$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/A$1$1;-><init>(Lcn/domob/android/ads/A$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/D;->a(Lcn/domob/android/ads/c$a;)V

    .line 173
    iget-object v1, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v1, v1, Lcn/domob/android/ads/A;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/l$b;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v2, v2, Lcn/domob/android/ads/A;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v2}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/l$b;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v3, v3, Lcn/domob/android/ads/A;->d:Lcn/domob/android/ads/l;

    invoke-virtual {v3}, Lcn/domob/android/ads/l;->d()Lcn/domob/android/ads/l$b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/l$b;->v()I

    move-result v3

    iget-object v4, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/ads/D;->a(Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/D$a;)V

    .line 176
    iget-object v0, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v1, p0, Lcn/domob/android/ads/A$1;->a:Lcn/domob/android/ads/A;

    iget-object v1, v1, Lcn/domob/android/ads/A;->f:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/A;->a(Lcn/domob/android/ads/b;)V

    .line 177
    return-void
.end method
