.class final Lcom/adsmogo/adapters/api/W;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

.field private b:Lcom/adsmogo/model/obj/Ration;

.field private synthetic c:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/W;->c:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    iput-object p3, p0, Lcom/adsmogo/adapters/api/W;->b:Lcom/adsmogo/model/obj/Ration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->c(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/W;->c:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/W;->b:Lcom/adsmogo/model/obj/Ration;

    iget-object v2, v2, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;Lcom/adsmogo/adview/AdsMogoLayout;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/W;->c:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->b(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Lcom/adsmogo/model/obj/SuizongAD;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/model/obj/SuizongAD;->status:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsmogo/adapters/api/V;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/W;->c:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adapters/api/V;-><init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
