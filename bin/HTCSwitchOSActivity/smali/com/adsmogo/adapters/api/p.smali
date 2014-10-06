.class final Lcom/adsmogo/adapters/api/p;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/p;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/p;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    return-object v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;ZLandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/n;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adapters/api/n;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "aduu click error adMogoLayout is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adapters/api/n;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    const-string v3, "2"

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adapters/api/n;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Aduu;->getClickcontent()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Aduu;->getClicktype()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "link"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v2, v0, Lcom/adsmogo/adview/AdsMogoLayout;->downloadIsShowDialog:Z

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v4, "\u63d0\u793a"

    const-string v3, "\u786e\u5b9a\u8981\u4e0b\u8f7d\u5417?"

    const-string v2, "\u786e\u8ba4"

    const-string v0, "\u53d6\u6d88"

    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/adsmogo/adapters/api/q;

    invoke-direct {v4, p0, v1, v5}, Lcom/adsmogo/adapters/api/q;-><init>(Lcom/adsmogo/adapters/api/p;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/adsmogo/adapters/api/r;

    invoke-direct {v2, p0}, Lcom/adsmogo/adapters/api/r;-><init>(Lcom/adsmogo/adapters/api/p;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_3
    const-string v4, "Message"

    const-string v3, "Are you sure you want to download?"

    const-string v2, "OK"

    const-string v0, "Cancel"

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mogo_title"

    const-string v3, "APK"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mogo_link"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "aduuValidaction"

    const-string v3, "3"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adsmogo not UpdateService"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Can\'t call"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_3
    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "smsto:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "sms_body"

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Cannot send a message"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
