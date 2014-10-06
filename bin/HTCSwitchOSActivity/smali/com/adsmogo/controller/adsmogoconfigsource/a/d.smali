.class public final Lcom/adsmogo/controller/adsmogoconfigsource/a/d;
.super Lcom/adsmogo/controller/adsmogoconfigsource/b;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/controller/adsmogoconfigsource/b;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoConfigServiceSource refreshConfig adsMogoLayout is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-nez v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoConfigServiceSource refreshConfig configCenter is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    if-nez v0, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoConfigServiceSource refreshConfig configList is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, ""

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v1}, Lcom/adsmogo/model/AdsMogoConfigDataList;->a()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/AdsMogoConfigDataList;->a(Z)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/adsmogo/model/obj/Extra;->timestamp:Ljava/lang/String;

    :cond_4
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Config timeStamp is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/adsmogo/controller/adsmogoconfigsource/a;

    iget-object v2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v1, v2, v0}, Lcom/adsmogo/controller/adsmogoconfigsource/a;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/a;->a()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "AdsMOGO SDK"

    const-string v2, "AdsMogoConfigCallService configData is not null"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v2, v2, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    iget-object v3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, v3, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->a(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;)Z

    goto/16 :goto_0

    :cond_5
    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoConfigCallService configData is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->a()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a()V

    goto/16 :goto_0
.end method
