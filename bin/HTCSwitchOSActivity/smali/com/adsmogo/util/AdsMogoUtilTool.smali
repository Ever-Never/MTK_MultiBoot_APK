.class public Lcom/adsmogo/util/AdsMogoUtilTool;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.Syztem/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adsmogo/util/AdsMogoUtilTool;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/adsmogo/model/a;
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/adsmogo/model/a;

    invoke-direct {v0}, Lcom/adsmogo/model/a;-><init>()V

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    :cond_0
    iget-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    :cond_1
    const-string v1, "Platform"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/adsmogo/model/a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.AppMediaVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AppMediaAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "AppMedia"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.DomobVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.DomobAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "Domob"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.YoumiVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.YoumiAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "YouMi"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.WeiQianVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.WeiQianAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.WXeXiXQXiXaXnAPIVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.WXeXiXQXiXaXnAPIAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "WeiQian"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "WeiQianAPI"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.MobWINVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MobWINAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "MobWin"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.AdChinaVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdChinaAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.AXdXCXhXiXnXaApiVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.AXdXCXhXiXnXaApiAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "AdChina"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "AdChinaApi"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.MobiSageVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MobiSageAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "MobiSage"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_8
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.IZPAdVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.IZPAdAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "IZP"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_9
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.GoogleAdMobAdsVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.GoogleAdMobAdsAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "AdMob"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_a
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.AdwoVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdwoAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.AXdXwXoApiVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.AXdXwXoApiAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "Adwo"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "AdwoAPI"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_b
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.VponCNVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.VponCNAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "Vpon"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_c
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.GreystripeVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.GreystripeAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "Greystripe"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_d
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.ZestAdzVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.ZestAdzAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "ZestAD"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_e
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.MdotMVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MdotMAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "MdotM"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_f
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.WiyunVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.WiyunAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "WiYun"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_10
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.WoobooVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.WoobooAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "Wooboo"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_11
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.SmartMADVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.SmartMADAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "SmartMAD"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_12
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.AdTouchVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdTouchAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "AdTouch"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_13
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.LSenseVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.LSenseAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "LSense"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_14
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.BaiduJsonVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.BaiduJsonAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "Baidu"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_15
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.ZhidianVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.ZhidianAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "ZhiDian"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_16
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.AllYesVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AllYesAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "AllYes"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_17
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.AirAdVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AirAdAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "AirAD"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_18
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.MidiVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MidiAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "Midi"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_19
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.JuDianVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.JuDianAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "JuDian"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1a
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.MillennialVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MillennialAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "MMedia"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1b
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.FractalSDKVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.FractalSDKAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.FXrXaXcXtXaXlVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.FXrXaXcXtXaXlAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "FeiYun"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "FeiYunAPI"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1c
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.UmengVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.UmengAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "Umeng"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1d
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.UmengWWWVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.UmengWWWAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "UmengWWW"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1e
    iput v2, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.LXmXMXoXbVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.LXmXMXoXbAPIAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "LmMob"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "LmMobAPI"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1f
    iput v2, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.AXdXuXuVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.AXdXuXuAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "Aduu"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "AduuAPI"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_20
    iput v2, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.APIVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.APIAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "API"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "APIAPI"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_21
    iput v2, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.CXaXsXeXeSourceVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.CXaXsXeXeSourceAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "Casee"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "CaseeAPI"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_22
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.InmobiSdkVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.InmobiSdkAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "InMobi"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_23
    iput v2, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.SXmXaXaXtXoVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.SXmXaXaXtXoAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "Smaato"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "SmaatoAPI"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_24
    iput v2, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.SuizongVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.SXuXiXzXoXnXgAPIAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "SuiZong"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "SuiZongAPI"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_25
    iput v2, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.PublicCustomVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.PublicCustomAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "PublicCustom"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "PublicCustomAPI"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_26
    iput v1, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.sdk.MomarkVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MomarkAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "MoMark"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_27
    iput v2, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.AXdXfXoXnXiXcVersion"

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.api.AXdXfXoXnXiXcAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, "AdfonicAPI"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_28
    iput v4, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_29
    iput v4, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2a
    iput v4, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_c
        :pswitch_0
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_d
        :pswitch_6
        :pswitch_f
        :pswitch_10
        :pswitch_3
        :pswitch_21
        :pswitch_11
        :pswitch_25
        :pswitch_12
        :pswitch_2
        :pswitch_b
        :pswitch_7
        :pswitch_17
        :pswitch_a
        :pswitch_13
        :pswitch_23
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_25
        :pswitch_1e
        :pswitch_15
        :pswitch_25
        :pswitch_0
        :pswitch_1b
        :pswitch_24
        :pswitch_0
        :pswitch_5
        :pswitch_25
        :pswitch_1c
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_1f
        :pswitch_0
        :pswitch_1d
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_19
        :pswitch_0
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method public static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "Load JarFile Path"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v1, v4, :cond_4

    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/adsmogo/util/AdsMogoUtilTool;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v0, v4, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "pathList"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "pathList"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v7, "dexElements"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "dexElements"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    move-object v4, v1

    :goto_1
    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    array-length v2, v4

    array-length v8, v0

    add-int/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    :goto_2
    move v2, v3

    :goto_3
    array-length v8, v4

    if-lt v2, v8, :cond_2

    :goto_4
    array-length v2, v0

    if-lt v3, v2, :cond_3

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    aget-object v8, v4, v2

    aput-object v8, v1, v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    array-length v2, v4

    add-int/2addr v2, v3

    aget-object v8, v0, v3

    aput-object v8, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v0, v3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    new-instance v4, Lcom/adsmogo/util/AdsMogoDexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adsmogo/util/AdsMogoUtilTool;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v0, v1, v2, v6}, Lcom/adsmogo/util/AdsMogoDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-class v0, Ldalvik/system/PathClassLoader;

    const-string v1, "mDexs"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Lcom/adsmogo/util/AdsMogoDexClassLoader;

    const-string v1, "mDexs"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/DexFile;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ldalvik/system/DexFile;

    array-length v2, v1

    array-length v7, v0

    add-int/2addr v2, v7

    new-array v7, v2, [Ldalvik/system/DexFile;

    move v2, v3

    :goto_5
    array-length v8, v1

    if-lt v2, v8, :cond_5

    move v2, v3

    :goto_6
    array-length v8, v0

    if-lt v2, v8, :cond_6

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v0, Ldalvik/system/PathClassLoader;

    const-string v1, "mFiles"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Lcom/adsmogo/util/AdsMogoDexClassLoader;

    const-string v1, "mFiles"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    array-length v2, v1

    array-length v7, v0

    add-int/2addr v2, v7

    new-array v7, v2, [Ljava/io/File;

    move v2, v3

    :goto_7
    array-length v8, v1

    if-lt v2, v8, :cond_7

    move v2, v3

    :goto_8
    array-length v8, v0

    if-lt v2, v8, :cond_8

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v0, Ldalvik/system/PathClassLoader;

    const-string v1, "mZips"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Lcom/adsmogo/util/AdsMogoDexClassLoader;

    const-string v1, "mZips"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/zip/ZipFile;

    array-length v2, v1

    array-length v7, v0

    add-int/2addr v2, v7

    new-array v7, v2, [Ljava/util/zip/ZipFile;

    move v2, v3

    :goto_9
    array-length v8, v1

    if-lt v2, v8, :cond_9

    move v2, v3

    :goto_a
    array-length v8, v0

    if-lt v2, v8, :cond_a

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v0, Ldalvik/system/PathClassLoader;

    const-string v1, "mPaths"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Lcom/adsmogo/util/AdsMogoDexClassLoader;

    const-string v1, "mRawDexPath"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v1, v4

    array-length v6, v0

    add-int/2addr v1, v6

    new-array v6, v1, [Ljava/lang/String;

    move v1, v3

    :goto_b
    array-length v7, v4

    if-lt v1, v7, :cond_b

    move v1, v3

    :goto_c
    array-length v3, v0

    if-lt v1, v3, :cond_c

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    aget-object v8, v1, v2

    aput-object v8, v7, v2

    const-string v8, "mDexs1"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v1, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_6
    array-length v8, v1

    add-int/2addr v8, v2

    aget-object v9, v0, v2

    aput-object v9, v7, v8

    const-string v8, "mDexs2"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_7
    aget-object v8, v1, v2

    aput-object v8, v7, v2

    const-string v8, "mFiles1"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v1, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_8
    array-length v8, v1

    add-int/2addr v8, v2

    aget-object v9, v0, v2

    aput-object v9, v7, v8

    const-string v8, "mFiles2"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_9
    aget-object v8, v1, v2

    aput-object v8, v7, v2

    const-string v8, "mZips1"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v1, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    :cond_a
    array-length v8, v1

    add-int/2addr v8, v2

    aget-object v9, v0, v2

    aput-object v9, v7, v8

    const-string v8, "mZips2"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_b
    aget-object v7, v4, v1

    aput-object v7, v6, v1

    const-string v7, "mRawDexPath"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v4, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    :cond_c
    array-length v3, v4

    add-int/2addr v3, v1

    aget-object v7, v0, v1

    aput-object v7, v6, v3

    const-string v3, "mPaths"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    :cond_d
    move-object v1, v2

    goto/16 :goto_2

    :cond_e
    move-object v4, v1

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "rations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "000000000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-lt v1, v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v0, v2, v1

    if-gez v0, :cond_2

    add-int/lit16 v0, v0, 0x100

    :cond_2
    const/16 v4, 0x10

    if-ge v0, v4, :cond_3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public static downloadAPK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v0, p4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mogo_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mogo_link"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\u4e0b\u8f7d\u5730\u5740\u5b58\u5728\u5f02\u5e38"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x10

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v1, 0x0

    new-array v3, v9, [C

    fill-array-data v3, :array_0

    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/16 v2, 0x20

    new-array v5, v2, [C

    move v2, v0

    :goto_0
    if-lt v0, v9, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    :goto_1
    return-object v0

    :cond_0
    aget-byte v6, v4, v0

    add-int/lit8 v7, v2, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v3, v8

    aput-char v8, v5, v2

    add-int/lit8 v2, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v3, v6

    aput-char v6, v5, v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 0x2
        0x39t 0x0t
        0x30t 0x0t
        0x36t 0x0t
        0x65t 0x0t
        0x64t 0x0t
        0x63t 0x0t
        0x31t 0x0t
        0x62t 0x0t
        0x33t 0x0t
        0x38t 0x0t
        0x37t 0x0t
        0x32t 0x0t
        0x61t 0x0t
        0x35t 0x0t
        0x66t 0x0t
        0x34t 0x0t
    .end array-data
.end method

.method public static getApkPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
