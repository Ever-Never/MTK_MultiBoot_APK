.class final Lcom/adsmogo/adapters/a;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/AdsMogoAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/AdsMogoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/a;->a:Lcom/adsmogo/adapters/AdsMogoAdapter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/a;->a:Lcom/adsmogo/adapters/AdsMogoAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->requestTimeOut()V

    return-void
.end method
