.class final Lcom/adsmogo/util/g;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/adsmogo/util/f;


# direct methods
.method constructor <init>(Lcom/adsmogo/util/f;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/util/g;->a:Lcom/adsmogo/util/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/util/g;)Lcom/adsmogo/util/f;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/util/g;->a:Lcom/adsmogo/util/f;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    const-string v4, "\u7248\u672c\u540d\u79f0:"

    const-string v3, "\u53d1\u5e03\u65f6\u95f4:"

    const-string v2, "\u53d1\u73b0\u65b0\u7248\u672c\u5e94\u7528"

    const-string v1, "\u7acb\u5373\u66f4\u65b0"

    const-string v0, "\u4ee5\u540e\u518d\u8bf4"

    iget-object v5, p0, Lcom/adsmogo/util/g;->a:Lcom/adsmogo/util/f;

    const-string v6, "\u5f00\u59cb\u4e0b\u8f7d"

    iput-object v6, v5, Lcom/adsmogo/util/f;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/adsmogo/util/g;->a:Lcom/adsmogo/util/f;

    iget-object v5, v5, Lcom/adsmogo/util/f;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v5, v5, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v5}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v4, "Version:"

    const-string v3, "Release Date:"

    const-string v2, "New Version"

    const-string v1, "Update"

    iget-object v0, p0, Lcom/adsmogo/util/g;->a:Lcom/adsmogo/util/f;

    const-string v5, "Downloading"

    iput-object v5, v0, Lcom/adsmogo/util/f;->f:Ljava/lang/String;

    const-string v0, "Remind me later"

    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adsmogo/util/g;->a:Lcom/adsmogo/util/f;

    iget-object v4, v4, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    iget-object v4, v4, Lcom/adsmogo/model/obj/Update;->version:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adsmogo/util/g;->a:Lcom/adsmogo/util/f;

    iget-object v4, v4, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    iget-object v4, v4, Lcom/adsmogo/model/obj/Update;->date:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adsmogo/util/g;->a:Lcom/adsmogo/util/f;

    iget-object v4, v4, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    iget-object v4, v4, Lcom/adsmogo/model/obj/Update;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/adsmogo/util/g;->a:Lcom/adsmogo/util/f;

    iget-object v5, v5, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/adsmogo/util/h;

    invoke-direct {v3, p0}, Lcom/adsmogo/util/h;-><init>(Lcom/adsmogo/util/g;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/adsmogo/util/g;->a:Lcom/adsmogo/util/f;

    iget-object v0, v0, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/adsmogo/util/g;->a:Lcom/adsmogo/util/f;

    iget-object v1, v1, Lcom/adsmogo/util/f;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mogo_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Show Update Dialog"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
