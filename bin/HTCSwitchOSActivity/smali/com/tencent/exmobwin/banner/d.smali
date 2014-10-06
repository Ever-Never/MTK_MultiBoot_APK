.class public Lcom/tencent/exmobwin/banner/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/exmobwin/banner/d;->c:Z

    iput-boolean v0, p0, Lcom/tencent/exmobwin/banner/d;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/exmobwin/banner/d;->c:Z

    iput-boolean v0, p0, Lcom/tencent/exmobwin/banner/d;->d:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/exmobwin/banner/d;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/tencent/exmobwin/banner/d;->b:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/exmobwin/banner/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/d;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/exmobwin/banner/AdListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/tencent/exmobwin/banner/AdListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/exmobwin/banner/d;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/exmobwin/banner/d;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/exmobwin/banner/d;->d:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/exmobwin/banner/d;->c:Z

    return v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/d;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/exmobwin/banner/d;->d:Z

    return v0
.end method
