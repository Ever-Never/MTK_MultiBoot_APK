.class final Lcom/adsmogo/adapters/api/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/model/obj/Ration;

.field private b:Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;

.field private c:Lcom/adsmogo/adview/AdsMogoLayout;


# direct methods
.method public constructor <init>(Lcom/adsmogo/model/obj/Ration;Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adsmogo/adapters/api/z;->a:Lcom/adsmogo/model/obj/Ration;

    iput-object p2, p0, Lcom/adsmogo/adapters/api/z;->b:Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->b:Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a(Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/z;->c:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->c:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->c:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/z;->a:Lcom/adsmogo/model/obj/Ration;

    iget-object v1, v1, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a(Lcom/adsmogo/adview/AdsMogoLayout;Ljava/lang/String;)Lcom/adsmogo/model/obj/CaseeAD;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a(Lcom/adsmogo/model/obj/CaseeAD;)V

    invoke-static {}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->a()Lcom/adsmogo/model/obj/CaseeAD;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->b:Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->b(Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->b:Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->b(Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/z;->b:Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->c(Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    const-string v0, "AdsMOGO SDK"

    const-string v1, "CaseeAD load success"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->c:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsmogo/adapters/api/y;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/z;->b:Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;

    invoke-direct {v1, v2}, Lcom/adsmogo/adapters/api/y;-><init>(Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
