.class final Lcom/adsmogo/adview/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adview/AdsMogoLayout;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private synthetic f:Lcom/adsmogo/adview/AdsMogoLayout;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/adview/AdsMogoLayout;Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adview/d;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object p3, p0, Lcom/adsmogo/adview/d;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/adsmogo/adview/d;->c:Ljava/lang/String;

    iput p5, p0, Lcom/adsmogo/adview/d;->d:I

    iput-boolean p6, p0, Lcom/adsmogo/adview/d;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    new-instance v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-direct {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;-><init>()V

    iput-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/adview/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setAppid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget v1, p0, Lcom/adsmogo/adview/d;->d:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setAdType(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-boolean v1, p0, Lcom/adsmogo/adview/d;->e:Z

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setExpressMode(Z)V

    iget-object v0, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/adview/d;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/controller/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setCountryCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    new-instance v1, Lcom/adsmogo/adview/a;

    iget-object v2, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v1, v2}, Lcom/adsmogo/adview/a;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    iput-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->b:Lcom/adsmogo/adview/a;

    iget-object v0, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adview/c;

    iget-object v2, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, p0, Lcom/adsmogo/adview/d;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adview/c;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/adview/AdsMogoLayout;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adview/b;

    iget-object v2, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v1, v2}, Lcom/adsmogo/adview/b;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-virtual {v0, v4}, Lcom/adsmogo/adview/AdsMogoLayout;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-virtual {v0, v4}, Lcom/adsmogo/adview/AdsMogoLayout;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adview/d;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getPngSize(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/adsmogo_ad_close_h.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/adsmogo/adview/d;->f:Lcom/adsmogo/adview/AdsMogoLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/adsmogo_ad_close.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method
