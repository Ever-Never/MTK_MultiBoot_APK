.class final Lcom/adsmogo/adapters/api/A;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/A;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/A;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/adsmogo/adview/ShowFullDialog;

    invoke-direct {v1, v0}, Lcom/adsmogo/adview/ShowFullDialog;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/A;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Ftad;->getAdviewurl1()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/adsmogo/adapters/api/A;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v2, v2, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/Ftad;->getAdviewparam2()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adsmogo/adapters/api/A;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-virtual {v1, v0, v2, v3}, Lcom/adsmogo/adview/ShowFullDialog;->showFullAdDialog(Ljava/lang/String;Ljava/lang/String;Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V

    :cond_0
    return-void
.end method
