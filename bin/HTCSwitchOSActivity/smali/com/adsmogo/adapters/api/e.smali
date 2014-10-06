.class final Lcom/adsmogo/adapters/api/e;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/APIAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/APIAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/APIAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/e;-><init>(Lcom/adsmogo/adapters/api/APIAdapter;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;ZLandroid/view/ViewGroup;)V

    sget-object v0, Lcom/adsmogo/adapters/api/APIAdapter;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adsmogo/adapters/api/a;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    const-string v3, "1"

    iget-object v4, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v4, v4, Lcom/adsmogo/adapters/api/APIAdapter;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v5, v5, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v5, v5, Lcom/adsmogo/model/obj/APIAD;->sid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adsmogo/adapters/api/a;-><init>(Lcom/adsmogo/adapters/api/APIAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "API click error adMogoLayout is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/APIAD;->getLinkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v1, v0, p2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v1, v0, p2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v1, v1, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mogo_title"

    const-string v3, "APK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mogo_link"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v3, v3, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v3, v3, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-virtual {v1}, Lcom/adsmogo/adapters/api/APIAdapter;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v2, v2, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v2, v2, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v2, v2, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v2, v2, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v1, v1, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v2, v2, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v2, v2, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v1, v1, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API open call err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v3, v3, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v3, v3, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v2, v2, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v2, v2, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API play video err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_4
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v3, v3, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v3, v3, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v2, v2, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v2, v2, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "audio/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API play audio err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_5
    :try_start_4
    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v1, v1, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API open map err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    :try_start_5
    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v1, v1, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API send message err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    :try_start_6
    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v1, v1, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API send mail err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/adsmogo/adapters/api/e;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v1, v0, p2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
