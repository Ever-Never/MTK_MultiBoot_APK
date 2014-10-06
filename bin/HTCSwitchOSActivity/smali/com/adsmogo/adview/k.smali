.class final Lcom/adsmogo/adview/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/k;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adview/k;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    const-class v2, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mogo_title"

    const-string v2, "APK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mogo_link"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adview/k;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/adview/AdsMogoWebView;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/adsmogo/adview/k;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-virtual {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->finish()V

    return-void
.end method
