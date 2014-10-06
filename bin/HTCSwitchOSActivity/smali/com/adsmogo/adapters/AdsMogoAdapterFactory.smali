.class public Lcom/adsmogo/adapters/AdsMogoAdapterFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    .locals 8

    const/16 v6, 0x80

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v3}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(I)Lcom/adsmogo/model/a;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v3, v4, Lcom/adsmogo/model/a;->a:I

    if-nez v3, :cond_2

    :try_start_0
    iget-object v0, v4, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Ljava/lang/String;Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v3, v4, Lcom/adsmogo/model/a;->a:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_9

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, v4, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Ljava/lang/String;Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    goto :goto_0

    :sswitch_0
    iget-object v3, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v3

    if-ne v3, v6, :cond_3

    const-string v1, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " api not support full screen AD"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v0

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v3

    if-ne v3, v6, :cond_3

    const-string v1, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " api not support full screen AD"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v0

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "LiveUpdateSign"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "UpdateEnable"

    const/4 v5, 0x0

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "/updateEnable"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a:Ljava/util/HashMap;

    if-eqz v3, :cond_6

    sget-object v0, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a:Ljava/util/HashMap;

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v3, v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_6
    const-string v3, "isLoaded"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v6, v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    if-nez v0, :cond_7

    :try_start_4
    iget-object v0, v4, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "versionCode"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    move v3, v0

    :goto_2
    :try_start_5
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/adsmogo/util/AdsMogoUtilTool;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".properties"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "Version"

    const-string v2, "-1"

    invoke-virtual {v5, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    const-string v2, "versions"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "/needUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/true"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/adsmogo/util/AdsMogoUtilTool;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/adsmogo/util/AdsMogoUtilTool;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    :goto_4
    :try_start_6
    iget-object v0, v4, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Ljava/lang/String;Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v3, v2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    if-eqz v1, :cond_8

    iget-object v0, v4, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Ljava/lang/String;Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget v0, v4, Lcom/adsmogo/model/a;->a:I

    if-ne v0, v1, :cond_a

    iget-object v0, v4, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Ljava/lang/String;Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    iget v0, v4, Lcom/adsmogo/model/a;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->d()Lcom/adsmogo/controller/listener/AdsMogoListener;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    iget v2, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    packed-switch v2, :pswitch_data_0

    :goto_5
    invoke-interface {v1, v0}, Lcom/adsmogo/controller/listener/AdsMogoListener;->getCustomEvemtPlatformAdapterClass(Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;)Ljava/lang/Class;

    move-result-object v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Ljava/lang/String;Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;->AdsMogoCustomEventPlatform_1:Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;

    goto :goto_5

    :pswitch_1
    sget-object v0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;->AdsMogoCustomEventPlatform_2:Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;

    goto :goto_5

    :pswitch_2
    sget-object v0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;->AdsMogoCustomEventPlatform_3:Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;

    goto :goto_5

    :catch_4
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CustomEvemtPlatformClass newInstance,error= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    invoke-static {p1}, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_1
        0x15 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported ration type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/adsmogo/adview/AdsMogoLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/adsmogo/model/obj/Ration;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getLoadedMap()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/adsmogo/adapters/AdsMogoAdapterFactory;->a:Ljava/util/HashMap;

    return-object v0
.end method
