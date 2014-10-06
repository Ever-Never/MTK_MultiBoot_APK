.class final Lcom/adsmogo/util/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/util/o;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/adsmogo/util/r;


# direct methods
.method constructor <init>(Lcom/adsmogo/util/o;Ljava/lang/String;Lcom/adsmogo/util/r;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/util/p;->a:Lcom/adsmogo/util/o;

    iput-object p2, p0, Lcom/adsmogo/util/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/adsmogo/util/p;->c:Lcom/adsmogo/util/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/util/p;->a:Lcom/adsmogo/util/o;

    iget-object v0, p0, Lcom/adsmogo/util/p;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/adsmogo/util/o;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/util/p;->a:Lcom/adsmogo/util/o;

    iget-object v1, v1, Lcom/adsmogo/util/o;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/adsmogo/util/p;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/adsmogo/util/p;->a:Lcom/adsmogo/util/o;

    invoke-static {v1}, Lcom/adsmogo/util/o;->a(Lcom/adsmogo/util/o;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/adsmogo/util/q;

    iget-object v3, p0, Lcom/adsmogo/util/p;->c:Lcom/adsmogo/util/r;

    invoke-direct {v2, p0, v3, v0}, Lcom/adsmogo/util/q;-><init>(Lcom/adsmogo/util/p;Lcom/adsmogo/util/r;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
