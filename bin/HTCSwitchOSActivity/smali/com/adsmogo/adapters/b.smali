.class final Lcom/adsmogo/adapters/b;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/b;->a:Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformAdapter;->requestTimeOut()V

    return-void
.end method
