.class public Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/adsmogo/model/obj/Extra;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a:Lcom/adsmogo/model/obj/Extra;

    iput-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->b:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->c:Ljava/lang/String;

    new-instance v0, Lcom/adsmogo/model/obj/Extra;

    invoke-direct {v0}, Lcom/adsmogo/model/obj/Extra;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a:Lcom/adsmogo/model/obj/Extra;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Lcom/adsmogo/model/obj/Extra;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a:Lcom/adsmogo/model/obj/Extra;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Lcom/adsmogo/model/obj/Extra;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a:Lcom/adsmogo/model/obj/Extra;

    return-object v0
.end method
