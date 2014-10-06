.class Lcn/domob/android/ads/K;
.super Lcn/domob/android/ads/b;
.source "SourceFile"


# static fields
.field private static f:Lcn/domob/android/ads/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcn/domob/android/ads/J;

    const-class v1, Lcn/domob/android/ads/K;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/J;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/K;->f:Lcn/domob/android/ads/J;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcn/domob/android/ads/b;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected a()Lcn/domob/android/ads/c;
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/android/ads/K;->b:Lcn/domob/android/ads/c;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcn/domob/android/ads/ac;

    iget-object v1, p0, Lcn/domob/android/ads/K;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/domob/android/ads/ac;-><init>(Landroid/content/Context;Lcn/domob/android/ads/b;)V

    iput-object v0, p0, Lcn/domob/android/ads/K;->b:Lcn/domob/android/ads/c;

    .line 20
    iget-object v0, p0, Lcn/domob/android/ads/K;->b:Lcn/domob/android/ads/c;

    check-cast v0, Lcn/domob/android/ads/ac;

    new-instance v1, Lcn/domob/android/ads/K$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/K$1;-><init>(Lcn/domob/android/ads/K;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/ac;->a(Lcn/domob/android/ads/ac$g;)V

    .line 28
    iget-object v0, p0, Lcn/domob/android/ads/K;->b:Lcn/domob/android/ads/c;

    check-cast v0, Lcn/domob/android/ads/ac;

    new-instance v1, Lcn/domob/android/ads/K$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/K$2;-><init>(Lcn/domob/android/ads/K;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/ac;->a(Lcn/domob/android/ads/ac$f;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/K;->b:Lcn/domob/android/ads/c;

    return-object v0
.end method

.method protected b()Lcn/domob/android/ads/c;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/domob/android/ads/K;->c:Lcn/domob/android/ads/c;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcn/domob/android/ads/ac;

    iget-object v1, p0, Lcn/domob/android/ads/K;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/domob/android/ads/ac;-><init>(Landroid/content/Context;Lcn/domob/android/ads/b;)V

    iput-object v0, p0, Lcn/domob/android/ads/K;->c:Lcn/domob/android/ads/c;

    .line 45
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/K;->c:Lcn/domob/android/ads/c;

    return-object v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcn/domob/android/ads/K;->f:Lcn/domob/android/ads/J;

    const-string v1, "on MRAID ready"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcn/domob/android/ads/K;->b:Lcn/domob/android/ads/c;

    check-cast v0, Lcn/domob/android/ads/ac;

    invoke-virtual {v0}, Lcn/domob/android/ads/ac;->l()V

    .line 52
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
