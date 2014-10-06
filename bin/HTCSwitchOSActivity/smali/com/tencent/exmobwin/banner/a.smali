.class public Lcom/tencent/exmobwin/banner/a;
.super Lcom/tencent/exmobwin/a/d;


# static fields
.field public static a:Ljava/lang/ref/WeakReference; = null

.field public static b:Ljava/lang/ref/WeakReference; = null

.field private static final l:Ljava/lang/String; = "BannerModel"

.field private static final m:Ljava/lang/String; = "com.tencent.mobwin.MobwinBannerManager"

.field private static final n:Ljava/lang/String; = "com.tencent.mobwin.AdView"

.field private static final o:I = 0x2

.field private static final p:Ljava/lang/Object;

.field private static q:Lcom/tencent/exmobwin/banner/a;


# instance fields
.field c:Ljava/lang/Class;

.field d:Landroid/os/Handler;

.field private r:Z

.field private s:Z

.field private t:Ljava/util/Map;

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/exmobwin/banner/a;->p:Ljava/lang/Object;

    sput-object v1, Lcom/tencent/exmobwin/banner/a;->q:Lcom/tencent/exmobwin/banner/a;

    sput-object v1, Lcom/tencent/exmobwin/banner/a;->a:Ljava/lang/ref/WeakReference;

    sput-object v1, Lcom/tencent/exmobwin/banner/a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/exmobwin/a/d;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/exmobwin/banner/a;->c:Ljava/lang/Class;

    iput-boolean v1, p0, Lcom/tencent/exmobwin/banner/a;->r:Z

    iput-boolean v1, p0, Lcom/tencent/exmobwin/banner/a;->s:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/tencent/exmobwin/banner/a;->u:Z

    iput-boolean v1, p0, Lcom/tencent/exmobwin/banner/a;->v:Z

    new-instance v0, Lcom/tencent/exmobwin/banner/e;

    invoke-direct {v0, p0}, Lcom/tencent/exmobwin/banner/e;-><init>(Lcom/tencent/exmobwin/banner/a;)V

    iput-object v0, p0, Lcom/tencent/exmobwin/banner/a;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/tencent/exmobwin/banner/a;
    .locals 3

    sget-object v0, Lcom/tencent/exmobwin/banner/a;->q:Lcom/tencent/exmobwin/banner/a;

    if-nez v0, :cond_1

    sget-object v1, Lcom/tencent/exmobwin/banner/a;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/exmobwin/banner/a;->q:Lcom/tencent/exmobwin/banner/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/exmobwin/banner/a;

    invoke-direct {v0}, Lcom/tencent/exmobwin/banner/a;-><init>()V

    sput-object v0, Lcom/tencent/exmobwin/banner/a;->q:Lcom/tencent/exmobwin/banner/a;

    const-string v0, "BannerModel"

    const-string v2, "new bannerModel~~"

    invoke-static {v0, v2}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/exmobwin/banner/a;->q:Lcom/tencent/exmobwin/banner/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/exmobwin/banner/a;Ljava/lang/String;)Lcom/tencent/exmobwin/banner/d;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/exmobwin/banner/a;->c(Ljava/lang/String;)Lcom/tencent/exmobwin/banner/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/exmobwin/banner/a;Lcom/tencent/exmobwin/banner/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/exmobwin/banner/a;->a(Lcom/tencent/exmobwin/banner/d;)V

    return-void
.end method

.method private a(Lcom/tencent/exmobwin/banner/d;)V
    .locals 5

    invoke-virtual {p1}, Lcom/tencent/exmobwin/banner/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/exmobwin/banner/a;->c(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/exmobwin/banner/d;->d()Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    invoke-virtual {p1}, Lcom/tencent/exmobwin/banner/d;->a()Lcom/tencent/exmobwin/banner/AdListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/exmobwin/banner/d;->a()Lcom/tencent/exmobwin/banner/AdListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/exmobwin/banner/a;->a(Landroid/widget/RelativeLayout;Lcom/tencent/exmobwin/banner/AdListener;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/tencent/exmobwin/a/d;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/exmobwin/banner/a;->c()V

    sget-object v0, Lcom/tencent/exmobwin/banner/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/tencent/exmobwin/banner/a;->v:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/exmobwin/banner/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexClassLoader;

    const-string v2, "com.tencent.mobwin.MobwinBannerManager"

    invoke-virtual {v0, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/exmobwin/banner/a;->c:Ljava/lang/Class;

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->c:Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->c:Ljava/lang/Class;

    const-string v2, "init"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/exmobwin/banner/a;->c:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/exmobwin/banner/a;->v:Z

    :cond_1
    sget-object v0, Lcom/tencent/exmobwin/banner/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexClassLoader;

    const-string v2, "com.tencent.mobwin.AdView"

    invoke-virtual {v0, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/tencent/exmobwin/banner/a;->s:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    check-cast v0, Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/exmobwin/banner/a;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/exmobwin/banner/a;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/exmobwin/banner/a;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/tencent/exmobwin/banner/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/exmobwin/banner/d;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/exmobwin/a/d;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/exmobwin/banner/a;->s:Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/exmobwin/a/d;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/exmobwin/banner/a;->s:Z

    iput-object p2, p0, Lcom/tencent/exmobwin/banner/a;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/exmobwin/banner/a;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/exmobwin/banner/a;->h:Ljava/lang/String;

    return-void
.end method

.method a(Landroid/widget/RelativeLayout;Lcom/tencent/exmobwin/banner/AdListener;)V
    .locals 5

    if-nez p1, :cond_1

    const-string v0, "BannerModel"

    const-string v1, "adObject is null"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setAdListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tencent/exmobwin/banner/d;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/tencent/exmobwin/banner/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/exmobwin/banner/a;->u:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/exmobwin/banner/a;->r:Z

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/exmobwin/banner/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/tencent/exmobwin/banner/a;->c(Ljava/lang/String;)Lcom/tencent/exmobwin/banner/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/exmobwin/banner/a;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/exmobwin/banner/d;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/exmobwin/banner/d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/exmobwin/banner/a;->u:Z

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/exmobwin/banner/a;->d:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "plugRead,windowVisibility,regieststatus:,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/exmobwin/banner/d;->e()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/exmobwin/banner/d;->b()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/exmobwin/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/tencent/exmobwin/banner/a;->r:Z

    if-eqz v0, :cond_0

    sput-object v4, Lcom/tencent/exmobwin/banner/a;->b:Ljava/lang/ref/WeakReference;

    sput-object v4, Lcom/tencent/exmobwin/banner/a;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    sget-object v0, Lcom/tencent/exmobwin/banner/a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/exmobwin/banner/a;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/exmobwin/banner/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/exmobwin/banner/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ldalvik/system/DexClassLoader;

    iget-object v2, p0, Lcom/tencent/exmobwin/banner/a;->i:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v0, v2, v4, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/exmobwin/banner/a;->b:Ljava/lang/ref/WeakReference;

    const-string v0, "BannerModel"

    const-string v1, "new commonLoader~"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/tencent/exmobwin/banner/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/exmobwin/banner/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/exmobwin/banner/a;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ldalvik/system/DexClassLoader;

    iget-object v3, p0, Lcom/tencent/exmobwin/banner/a;->j:Ljava/lang/String;

    sget-object v0, Lcom/tencent/exmobwin/banner/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-direct {v2, v1, v3, v4, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/exmobwin/banner/a;->a:Ljava/lang/ref/WeakReference;

    const-string v0, "BannerModel"

    const-string v1, "new loader~~"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/tencent/exmobwin/a/d;->d()V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->c:Ljava/lang/Class;

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/exmobwin/banner/a;->c:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v3, p0, Lcom/tencent/exmobwin/banner/a;->t:Ljava/util/Map;

    :cond_1
    sget-object v0, Lcom/tencent/exmobwin/banner/a;->q:Lcom/tencent/exmobwin/banner/a;

    if-eqz v0, :cond_2

    sput-object v3, Lcom/tencent/exmobwin/banner/a;->q:Lcom/tencent/exmobwin/banner/a;

    const-string v0, "BannerModel"

    const-string v1, "bannerModel destroy~~"

    invoke-static {v0, v1}, Lcom/tencent/exmobwin/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
