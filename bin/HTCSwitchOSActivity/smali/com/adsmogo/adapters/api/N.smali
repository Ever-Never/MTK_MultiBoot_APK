.class final Lcom/adsmogo/adapters/api/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/N;->b:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/N;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/N;->b:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/N;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Ljava/lang/String;)V

    return-void
.end method
