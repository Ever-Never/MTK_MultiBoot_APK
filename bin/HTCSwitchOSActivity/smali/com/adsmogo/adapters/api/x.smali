.class final Lcom/adsmogo/adapters/api/x;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/w;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/w;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/x;->a:Lcom/adsmogo/adapters/api/w;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/x;->a:Lcom/adsmogo/adapters/api/w;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/w;->a(Lcom/adsmogo/adapters/api/w;)Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)Lcom/adsmogo/model/obj/Adwo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Adwo;->getShowbeaconurl()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/adsmogo/adapters/api/x;->a:Lcom/adsmogo/adapters/api/w;

    invoke-static {v4}, Lcom/adsmogo/adapters/api/w;->a(Lcom/adsmogo/adapters/api/w;)Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
