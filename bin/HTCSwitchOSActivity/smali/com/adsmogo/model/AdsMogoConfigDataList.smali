.class public Lcom/adsmogo/model/AdsMogoConfigDataList;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/adsmogo/model/AdsMogoConfigDataList;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Z)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;)Z
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;)Z
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-gtz v1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/model/AdsMogoConfigDataList;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    goto :goto_0
.end method
