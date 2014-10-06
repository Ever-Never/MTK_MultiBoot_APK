.class final Lcom/adsmogo/adapters/api/af;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/WXeXiXQXiXaXnAPIAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/af;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-direct {v0}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>()V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/af;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getStatusCodeByGetType(Ljava/lang/String;)I

    move-result v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "weiqian sendCount statusCode >"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
