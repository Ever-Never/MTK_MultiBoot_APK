.class Lcn/domob/android/ads/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcn/domob/android/ads/y;

.field private b:Lcn/domob/android/ads/y$d;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcn/domob/android/ads/y;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Init and config present dialog."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcn/domob/android/ads/y$d;

    invoke-direct {v0, p1}, Lcn/domob/android/ads/y$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    .line 62
    return-void
.end method


# virtual methods
.method protected a(I)Lcn/domob/android/ads/y$a;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/y$d;->e(Lcn/domob/android/ads/y$d;I)I

    .line 149
    return-object p0
.end method

.method protected a(II)Lcn/domob/android/ads/y$a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/y$d;->a(Lcn/domob/android/ads/y$d;I)I

    .line 66
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p2}, Lcn/domob/android/ads/y$d;->b(Lcn/domob/android/ads/y$d;I)I

    .line 67
    return-object p0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)Lcn/domob/android/ads/y$a;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/y$d;->a(Lcn/domob/android/ads/y$d;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 145
    return-object p0
.end method

.method protected a(Lcn/domob/android/ads/DomobInterstitialAd$BorderType;)Lcn/domob/android/ads/y$a;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/y$d;->a(Lcn/domob/android/ads/y$d;Lcn/domob/android/ads/DomobInterstitialAd$BorderType;)Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 141
    return-object p0
.end method

.method protected a(Lcn/domob/android/ads/y$b;)Lcn/domob/android/ads/y$a;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/y$d;->a(Lcn/domob/android/ads/y$d;Lcn/domob/android/ads/y$b;)Lcn/domob/android/ads/y$b;

    .line 125
    return-object p0
.end method

.method protected a(Lcn/domob/android/ads/y$c;)Lcn/domob/android/ads/y$a;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/y$d;->a(Lcn/domob/android/ads/y$d;Lcn/domob/android/ads/y$c;)Lcn/domob/android/ads/y$c;

    .line 120
    return-object p0
.end method

.method protected a(Z)Lcn/domob/android/ads/y$a;
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-static {}, Lcn/domob/android/ads/y;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    const-string v1, "Close button is needed for present dialog."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/y$d;->a(Lcn/domob/android/ads/y$d;Z)Z

    .line 76
    return-object p0
.end method

.method protected a(ZI)Lcn/domob/android/ads/y$a;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {}, Lcn/domob/android/ads/y;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force show is needed for present dialog with time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/y$d;->b(Lcn/domob/android/ads/y$d;Z)Z

    .line 90
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-static {v0, v1}, Lcn/domob/android/ads/y$d;->c(Lcn/domob/android/ads/y$d;I)I

    .line 93
    :cond_0
    return-object p0
.end method

.method protected a(ZZZZ)Lcn/domob/android/ads/y$a;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/y$d;->e(Lcn/domob/android/ads/y$d;Z)Z

    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p2}, Lcn/domob/android/ads/y$d;->f(Lcn/domob/android/ads/y$d;Z)Z

    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p3}, Lcn/domob/android/ads/y$d;->g(Lcn/domob/android/ads/y$d;Z)Z

    .line 132
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p4}, Lcn/domob/android/ads/y$d;->h(Lcn/domob/android/ads/y$d;Z)Z

    .line 133
    return-object p0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->a:Lcn/domob/android/ads/y;

    invoke-virtual {v0}, Lcn/domob/android/ads/y;->a()V

    .line 162
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 156
    new-instance v0, Lcn/domob/android/ads/y;

    iget-object v1, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v1}, Lcn/domob/android/ads/y$d;->a(Lcn/domob/android/ads/y$d;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/y;-><init>(Landroid/content/Context;Lcn/domob/android/ads/y$1;)V

    iput-object v0, p0, Lcn/domob/android/ads/y$a;->a:Lcn/domob/android/ads/y;

    .line 157
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->a:Lcn/domob/android/ads/y;

    iget-object v1, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1, v1}, Lcn/domob/android/ads/y;->a(Lcn/domob/android/ads/y;Landroid/view/View;Lcn/domob/android/ads/y$d;)V

    .line 158
    return-void
.end method

.method protected b(I)Lcn/domob/android/ads/y$a;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/y$d;->f(Lcn/domob/android/ads/y$d;I)I

    .line 153
    return-object p0
.end method

.method protected b(Z)Lcn/domob/android/ads/y$a;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/y$d;->d(Lcn/domob/android/ads/y$d;Z)Z

    .line 115
    return-object p0
.end method

.method protected b(ZI)Lcn/domob/android/ads/y$a;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-static {}, Lcn/domob/android/ads/y;->b()Lcn/domob/android/ads/J;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto close is needed for present dialog with time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/J;->a(Ljava/lang/String;)V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/y$d;->c(Lcn/domob/android/ads/y$d;Z)Z

    .line 107
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-static {v0, v1}, Lcn/domob/android/ads/y$d;->d(Lcn/domob/android/ads/y$d;I)I

    .line 110
    :cond_0
    return-object p0
.end method

.method protected c(Z)Lcn/domob/android/ads/y$a;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcn/domob/android/ads/y$a;->b:Lcn/domob/android/ads/y$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/y$d;->i(Lcn/domob/android/ads/y$d;Z)Z

    .line 137
    return-object p0
.end method
