.class public Lcn/domob/android/ads/m;
.super Lcn/domob/android/ads/b;
.source "SourceFile"


# static fields
.field protected static final f:Ljava/lang/String; = "banner"

.field protected static final g:Ljava/lang/String; = "expandable"

.field private static h:Lcn/domob/android/ads/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/m;->h:Lcn/domob/android/ads/J;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcn/domob/android/ads/b;-><init>(Landroid/content/Context;)V

    .line 16
    sget-object v0, Lcn/domob/android/ads/m;->h:Lcn/domob/android/ads/J;

    const-string v1, "New DomobAdapter instance."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a()Lcn/domob/android/ads/c;
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcn/domob/android/ads/m;->b:Lcn/domob/android/ads/c;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcn/domob/android/ads/H;

    iget-object v1, p0, Lcn/domob/android/ads/m;->a:Landroid/content/Context;

    const-string v2, "banner"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcn/domob/android/ads/H;-><init>(Landroid/content/Context;Ljava/lang/String;ILcn/domob/android/ads/b;)V

    iput-object v0, p0, Lcn/domob/android/ads/m;->b:Lcn/domob/android/ads/c;

    .line 25
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/m;->b:Lcn/domob/android/ads/c;

    return-object v0
.end method

.method protected a(Lcn/domob/android/ads/l$b$a;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 52
    iget-object v0, p0, Lcn/domob/android/ads/m;->c:Lcn/domob/android/ads/c;

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p1}, Lcn/domob/android/ads/l$b$a;->k()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 56
    invoke-virtual {p1}, Lcn/domob/android/ads/l$b$a;->k()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/domob/android/ads/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 58
    :goto_0
    invoke-virtual {p1}, Lcn/domob/android/ads/l$b$a;->l()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcn/domob/android/ads/l$b$a;->l()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/domob/android/ads/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/q;->u(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 61
    :cond_0
    sget-object v2, Lcn/domob/android/ads/m;->h:Lcn/domob/android/ads/J;

    const-string v3, "Expandable size is: %d * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 63
    new-instance v2, Lcn/domob/android/ads/y$a;

    iget-object v3, p0, Lcn/domob/android/ads/m;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/domob/android/ads/y$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Lcn/domob/android/ads/y$a;->a(II)Lcn/domob/android/ads/y$a;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6, v7}, Lcn/domob/android/ads/y$a;->a(ZZZZ)Lcn/domob/android/ads/y$a;

    move-result-object v0

    invoke-virtual {p1}, Lcn/domob/android/ads/l$b$a;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/y$a;->a(Z)Lcn/domob/android/ads/y$a;

    move-result-object v0

    new-instance v1, Lcn/domob/android/ads/m$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/m$1;-><init>(Lcn/domob/android/ads/m;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/y$a;->a(Lcn/domob/android/ads/y$c;)Lcn/domob/android/ads/y$a;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/m;->d:Lcn/domob/android/ads/y$a;

    .line 76
    iget-object v0, p0, Lcn/domob/android/ads/m;->d:Lcn/domob/android/ads/y$a;

    iget-object v1, p0, Lcn/domob/android/ads/m;->c:Lcn/domob/android/ads/c;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/y$a;->a(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcn/domob/android/ads/m;->c:Lcn/domob/android/ads/c;

    const-string v1, "javascript:domobjs.onViewable()"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->loadUrl(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcn/domob/android/ads/m;->e:Lcn/domob/android/ads/b$a;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcn/domob/android/ads/m;->e:Lcn/domob/android/ads/b$a;

    invoke-interface {v0}, Lcn/domob/android/ads/b$a;->a()V

    .line 85
    :cond_1
    :goto_1
    return-void

    .line 83
    :cond_2
    sget-object v0, Lcn/domob/android/ads/m;->h:Lcn/domob/android/ads/J;

    const-string v1, "Expandable part is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected b()Lcn/domob/android/ads/c;
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcn/domob/android/ads/m;->c:Lcn/domob/android/ads/c;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcn/domob/android/ads/H;

    iget-object v1, p0, Lcn/domob/android/ads/m;->a:Landroid/content/Context;

    const-string v2, "expandable"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcn/domob/android/ads/H;-><init>(Landroid/content/Context;Ljava/lang/String;ILcn/domob/android/ads/b;)V

    iput-object v0, p0, Lcn/domob/android/ads/m;->c:Lcn/domob/android/ads/c;

    .line 34
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/m;->c:Lcn/domob/android/ads/c;

    return-object v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/android/ads/m;->b:Lcn/domob/android/ads/c;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcn/domob/android/ads/m;->b:Lcn/domob/android/ads/c;

    const-string v1, "javascript:domobjs.onViewable()"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->loadUrl(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/android/ads/m;->c:Lcn/domob/android/ads/c;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/domob/android/ads/m;->c:Lcn/domob/android/ads/c;

    const-string v1, "javascript:domobjs.onDismiss()"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->loadUrl(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/domob/android/ads/m;->d:Lcn/domob/android/ads/y$a;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcn/domob/android/ads/m;->d:Lcn/domob/android/ads/y$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/y$a;->a()V

    .line 91
    :cond_0
    return-void
.end method
