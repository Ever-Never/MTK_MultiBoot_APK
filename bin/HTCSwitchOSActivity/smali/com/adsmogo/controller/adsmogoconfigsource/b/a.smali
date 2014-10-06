.class public final Lcom/adsmogo/controller/adsmogoconfigsource/b/a;
.super Lcom/adsmogo/controller/adsmogoconfigsource/b;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/controller/adsmogoconfigsource/b;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    iget-object v2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v2, v2, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "ram is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b/a;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b/a;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a()V

    goto :goto_0

    :cond_3
    const-string v1, "AdsMOGO SDK"

    const-string v2, "ram is no null"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b/a;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->a(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;)Z

    goto :goto_0
.end method
