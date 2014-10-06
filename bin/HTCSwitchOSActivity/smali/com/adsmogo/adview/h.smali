.class final Lcom/adsmogo/adview/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/h;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "WebView Load Complete"

    invoke-static {v0}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adview/h;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->a(Lcom/adsmogo/adview/AdsMogoWebView;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/adsmogo/adview/AdsMogoWebView;->adapter:Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/adsmogo/adview/AdsMogoWebView;->adapter:Lcom/adsmogo/adapters/AdsMogoAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adsmogo/adview/AdsMogoWebView;->adapter:Lcom/adsmogo/adapters/AdsMogoAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->onPageComplete()V

    const/4 v0, 0x0

    sput-object v0, Lcom/adsmogo/adview/AdsMogoWebView;->adapter:Lcom/adsmogo/adapters/AdsMogoAdapter;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/h;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsmogo/adview/AdsMogoWebView;->a(Lcom/adsmogo/adview/AdsMogoWebView;Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
