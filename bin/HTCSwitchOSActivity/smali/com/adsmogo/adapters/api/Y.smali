.class final Lcom/adsmogo/adapters/api/Y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/X;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/X;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/Y;->a:Lcom/adsmogo/adapters/api/X;

    iput-object p2, p0, Lcom/adsmogo/adapters/api/Y;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/Y;->a:Lcom/adsmogo/adapters/api/X;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/X;->a(Lcom/adsmogo/adapters/api/X;)Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mogo_title"

    const-string v2, "APK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mogo_link"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/Y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isAduu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/Y;->a:Lcom/adsmogo/adapters/api/X;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/X;->a(Lcom/adsmogo/adapters/api/X;)Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adsmogo not UpdateService"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/Y;->a:Lcom/adsmogo/adapters/api/X;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/X;->a(Lcom/adsmogo/adapters/api/X;)Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "link"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/Y;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/Y;->a:Lcom/adsmogo/adapters/api/X;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/X;->a(Lcom/adsmogo/adapters/api/X;)Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/Y;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/Y;->a:Lcom/adsmogo/adapters/api/X;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/X;->a(Lcom/adsmogo/adapters/api/X;)Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
