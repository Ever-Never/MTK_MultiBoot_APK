.class public Lcom/adsmogo/controller/adsmogoconfigsource/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/util/c;


# instance fields
.field public a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field protected b:Lcom/adsmogo/adview/AdsMogoLayout;

.field c:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field d:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field e:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field f:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field g:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field h:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field i:Lcom/adsmogo/controller/adsmogoconfigsource/b;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/adsmogo/util/a;

    invoke-direct {v1}, Lcom/adsmogo/util/a;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/adsmogo/util/a;->a(Lcom/adsmogo/util/c;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AdsMOGO SDK"

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/controller/adsmogoconfigsource/c;

    invoke-direct {v1, p0}, Lcom/adsmogo/controller/adsmogoconfigsource/c;-><init>(Lcom/adsmogo/controller/adsmogoconfigsource/b;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method
