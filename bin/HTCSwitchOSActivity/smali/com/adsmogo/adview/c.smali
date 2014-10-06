.class final Lcom/adsmogo/adview/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/adview/c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v0, p0, Lcom/adsmogo/adview/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v1, v0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a()V

    return-void
.end method
