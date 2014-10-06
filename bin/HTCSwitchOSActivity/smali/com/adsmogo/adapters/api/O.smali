.class final Lcom/adsmogo/adapters/api/O;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/O;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v3}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget v3, v3, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v1, v2, v3}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Ljava/lang/String;I)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Lcom/adsmogo/model/obj/PublicCustom;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "getPublicCustom fail publicCustom is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/O;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    goto :goto_0
.end method
