.class final Lcom/adsmogo/adapters/api/X;
.super Lcom/suizong/mobile/ads/lite/SZEventListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-direct {p0, p2, p3}, Lcom/suizong/mobile/ads/lite/SZEventListener;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/X;)Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    return-object v0
.end method


# virtual methods
.method public final downloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadApp:>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/X;->completeAction()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->d(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->downloadIsShowDialog:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->d(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "\u63d0\u793a"

    const-string v2, "\u786e\u5b9a\u8981\u4e0b\u8f7d\u5417?"

    const-string v1, "\u786e\u8ba4"

    const-string v0, "\u53d6\u6d88"

    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v5}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/adsmogo/adapters/api/Y;

    invoke-direct {v3, p0, p1}, Lcom/adsmogo/adapters/api/Y;-><init>(Lcom/adsmogo/adapters/api/X;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/adsmogo/adapters/api/Z;

    invoke-direct {v2, p0}, Lcom/adsmogo/adapters/api/Z;-><init>(Lcom/adsmogo/adapters/api/X;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    return-void

    :cond_0
    const-string v3, "Message"

    const-string v2, "Are you sure you want to download?"

    const-string v1, "OK"

    const-string v0, "Cancel"

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mogo_title"

    const-string v2, "APK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mogo_link"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "aduuValidaction"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adsmogo not UpdateService"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "link"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public final launchApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchApp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/X;->completeAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "link"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

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

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final launchWeiboApp(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "launchWeiboApp"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/X;->completeAction()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "link"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final makeCall(Ljava/lang/String;)V
    .locals 4

    const-string v0, "AdsMOGO SDK"

    const-string v1, "makeCall"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/X;->completeAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Can\'t call"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final openExternalBrowser(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openExternalBrowser:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/X;->completeAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final openInnerBrowser(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "openInnerBrowser"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/X;->completeAction()V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "link"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "sendMail"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/X;->completeAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "AdsMOGO SDK"

    const-string v1, "sendSMS"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->e(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/X;->completeAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Cannot send a message"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
