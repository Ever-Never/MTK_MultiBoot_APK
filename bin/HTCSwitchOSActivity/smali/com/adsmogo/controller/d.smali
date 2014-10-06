.class final Lcom/adsmogo/controller/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private synthetic b:Lcom/adsmogo/controller/AdsMogoCore;


# direct methods
.method public constructor <init>(Lcom/adsmogo/controller/AdsMogoCore;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/d;->b:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/controller/d;->a:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/controller/d;->b:Lcom/adsmogo/controller/AdsMogoCore;

    iget-object v0, v0, Lcom/adsmogo/controller/AdsMogoCore;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/controller/d;->b:Lcom/adsmogo/controller/AdsMogoCore;

    iget-object v0, v0, Lcom/adsmogo/controller/AdsMogoCore;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/d;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoveAdView>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/controller/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/d;->b:Lcom/adsmogo/controller/AdsMogoCore;

    iget-object v0, v0, Lcom/adsmogo/controller/AdsMogoCore;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, p0, Lcom/adsmogo/controller/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/AdsMogoLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
