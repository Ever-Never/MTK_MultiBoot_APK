.class public final Lcom/adsmogo/adview/ShowFullScreenDialog$JavaScriptInterface;
.super Ljava/lang/Object;


# instance fields
.field final synthetic this$0:Lcom/adsmogo/adview/ShowFullScreenDialog;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/ShowFullScreenDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/ShowFullScreenDialog$JavaScriptInterface;->this$0:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adsmogoImageOnError()V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "image err"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog$JavaScriptInterface;->this$0:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-static {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->a(Lcom/adsmogo/adview/ShowFullScreenDialog;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog$JavaScriptInterface;->this$0:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-static {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->a(Lcom/adsmogo/adview/ShowFullScreenDialog;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public final adsmogoImageOnload()V
    .locals 4

    const-string v0, "AdsMOGO SDK"

    const-string v1, "mogo FUll adsmogoImageOnload"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog$JavaScriptInterface;->this$0:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-static {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->a(Lcom/adsmogo/adview/ShowFullScreenDialog;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/ShowFullScreenDialog$JavaScriptInterface;->this$0:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-static {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->a(Lcom/adsmogo/adview/ShowFullScreenDialog;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsmogo/adview/x;

    iget-object v2, p0, Lcom/adsmogo/adview/ShowFullScreenDialog$JavaScriptInterface;->this$0:Lcom/adsmogo/adview/ShowFullScreenDialog;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adview/x;-><init>(Lcom/adsmogo/adview/ShowFullScreenDialog;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
