.class public abstract Lcom/tencent/exmobwin/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final e:Ljava/lang/String; = "/Tencent/MobWIN_DATA/"


# instance fields
.field private a:Landroid/content/Context;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field public k:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/exmobwin/a/d;->a:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/a/d;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/a/d;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/a/d;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/a/d;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/exmobwin/a/d;->j:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/exmobwin/a/d;->k:I

    iput p1, p0, Lcom/tencent/exmobwin/a/d;->k:I

    return-void
.end method


# virtual methods
.method protected a(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".jar"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/exmobwin/a/d;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/tencent/exmobwin/d/a;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    iput-object v3, p0, Lcom/tencent/exmobwin/a/d;->i:Ljava/lang/String;

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    iput-object v3, p0, Lcom/tencent/exmobwin/a/d;->j:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/tencent/exmobwin/a/d;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tencent/exmobwin/d/a;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iput-object v3, p0, Lcom/tencent/exmobwin/a/d;->i:Ljava/lang/String;

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_3
    iput-object v3, p0, Lcom/tencent/exmobwin/a/d;->j:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public abstract b()V
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/exmobwin/a/d;->a:Landroid/content/Context;

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/exmobwin/a/d;->a:Landroid/content/Context;

    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/exmobwin/a/d;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/exmobwin/a/d;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/exmobwin/a/c;->b:Ljava/util/WeakHashMap;

    iget v2, p0, Lcom/tencent/exmobwin/a/d;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/exmobwin/a/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method public h()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/exmobwin/a/d;->a(I)Z

    move-result v0

    iget v1, p0, Lcom/tencent/exmobwin/a/d;->k:I

    invoke-virtual {p0, v1}, Lcom/tencent/exmobwin/a/d;->a(I)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method
