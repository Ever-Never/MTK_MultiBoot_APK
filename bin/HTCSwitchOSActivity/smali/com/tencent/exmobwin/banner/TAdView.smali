.class public final Lcom/tencent/exmobwin/banner/TAdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final CREATE_ADVIEW:I = 0x0

.field public static final TAG:Ljava/lang/String; = "TAdView"


# instance fields
.field private a:Lcom/tencent/exmobwin/banner/AdListener;

.field private b:Lcom/tencent/exmobwin/banner/d;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/exmobwin/banner/TAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/exmobwin/banner/TAdView;->c:Ljava/lang/String;

    new-instance v0, Lcom/tencent/exmobwin/banner/d;

    invoke-direct {v0, p1, p0}, Lcom/tencent/exmobwin/banner/d;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/tencent/exmobwin/banner/TAdView;->b:Lcom/tencent/exmobwin/banner/d;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/TAdView;->b:Lcom/tencent/exmobwin/banner/d;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/exmobwin/banner/a;->a()Lcom/tencent/exmobwin/banner/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/TAdView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/exmobwin/banner/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/exmobwin/banner/TAdView;->b:Lcom/tencent/exmobwin/banner/d;

    :cond_0
    const-string v0, "BannerModel"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/TAdView;->b:Lcom/tencent/exmobwin/banner/d;

    invoke-virtual {v0}, Lcom/tencent/exmobwin/banner/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/exmobwin/banner/a;->a()Lcom/tencent/exmobwin/banner/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/TAdView;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/exmobwin/banner/TAdView;->b:Lcom/tencent/exmobwin/banner/d;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/exmobwin/banner/a;->a(Ljava/lang/String;Lcom/tencent/exmobwin/banner/d;)V

    invoke-static {}, Lcom/tencent/exmobwin/banner/a;->a()Lcom/tencent/exmobwin/banner/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/TAdView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/exmobwin/banner/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    const-string v0, "TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowVisibilityChanged!!!!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/TAdView;->b:Lcom/tencent/exmobwin/banner/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/exmobwin/banner/d;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/TAdView;->b:Lcom/tencent/exmobwin/banner/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/exmobwin/banner/d;->b(Z)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/tencent/exmobwin/banner/AdListener;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/exmobwin/banner/TAdView;->a:Lcom/tencent/exmobwin/banner/AdListener;

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/TAdView;->b:Lcom/tencent/exmobwin/banner/d;

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/TAdView;->a:Lcom/tencent/exmobwin/banner/AdListener;

    invoke-virtual {v0, v1}, Lcom/tencent/exmobwin/banner/d;->a(Lcom/tencent/exmobwin/banner/AdListener;)V

    return-void
.end method
