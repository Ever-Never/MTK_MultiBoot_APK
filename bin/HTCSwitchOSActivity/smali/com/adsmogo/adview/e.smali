.class public final Lcom/adsmogo/adview/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoLayout;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/e;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adview/e;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/e;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    new-instance v1, Lcom/adsmogo/controller/AdsMogoCore;

    iget-object v2, p0, Lcom/adsmogo/adview/e;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, p0, Lcom/adsmogo/adview/e;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-static {v3}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Lcom/adsmogo/adview/AdsMogoLayout;)Lcom/adsmogo/controller/listener/AdsMogoListener;

    move-result-object v3

    iget-object v4, p0, Lcom/adsmogo/adview/e;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-static {v4}, Lcom/adsmogo/adview/AdsMogoLayout;->b(Lcom/adsmogo/adview/AdsMogoLayout;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/adsmogo/controller/AdsMogoCore;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/controller/listener/AdsMogoListener;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/e;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0}, Lcom/adsmogo/controller/AdsMogoCore;->startRotate()V

    return-void
.end method
