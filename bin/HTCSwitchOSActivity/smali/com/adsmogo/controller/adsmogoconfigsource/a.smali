.class public final Lcom/adsmogo/controller/adsmogoconfigsource/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcom/adsmogo/adview/AdsMogoLayout;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object p2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const-string v0, "http://cfg."

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlConfig:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v5}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x12b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v5}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v5}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->d:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v1, v3

    iget-object v3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoConfigCallService getConfigData adsMogoLayout is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoConfigCallService getConfigData configCenter is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-direct {v4}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>()V

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "AdsMogoConfigCallService thirdDomains size is:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->d:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&timestamp="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->c:Ljava/lang/String;

    const-string v6, " "

    const-string v7, "%20"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v5, "AdsMOGO SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getConfigData url is :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getContentByGetType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "AdsMOGO SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getConfigData is :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v5}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "AdsMOGO SDK"

    const-string v1, "getConfigData is not null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/controller/count/d;

    iget-object v2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v1, v2}, Lcom/adsmogo/controller/count/d;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    const-wide/16 v6, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\"empty\"]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "AdsMOGO SDK"

    const-string v1, "getConfigData is no Empty"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/adsmogo/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v2, "AdsMogoConfigCallService getConfigData activity is null"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v2, v2, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, v3, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v3

    iget-object v4, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v4, v4, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v4, v5}, Lcom/adsmogo/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v0, "AdsMOGO SDK"

    const-string v1, "getConfigData is Empty"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method
