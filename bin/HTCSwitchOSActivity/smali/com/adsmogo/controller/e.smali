.class final Lcom/adsmogo/controller/e;
.super Ljava/util/TimerTask;


# instance fields
.field private a:I

.field private synthetic b:Lcom/adsmogo/controller/AdsMogoCore;


# direct methods
.method public constructor <init>(Lcom/adsmogo/controller/AdsMogoCore;I)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/controller/e;->b:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsmogo/controller/e;->a:I

    iput p2, p0, Lcom/adsmogo/controller/e;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/controller/e;->b:Lcom/adsmogo/controller/AdsMogoCore;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/adsmogo/controller/AdsMogoCore;->c:J

    iget-object v0, p0, Lcom/adsmogo/controller/e;->b:Lcom/adsmogo/controller/AdsMogoCore;

    iget v1, p0, Lcom/adsmogo/controller/e;->a:I

    invoke-static {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->a(Lcom/adsmogo/controller/AdsMogoCore;I)V

    return-void
.end method
