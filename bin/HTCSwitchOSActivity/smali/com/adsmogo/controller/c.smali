.class final Lcom/adsmogo/controller/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/controller/count/AdsCount;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/adsmogo/controller/AdsMogoCore;Lcom/adsmogo/controller/count/AdsCount;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/controller/c;->a:Lcom/adsmogo/controller/count/AdsCount;

    iput-object p3, p0, Lcom/adsmogo/controller/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/adsmogo/controller/count/a;

    invoke-direct {v0}, Lcom/adsmogo/controller/count/a;-><init>()V

    iget-object v1, p0, Lcom/adsmogo/controller/c;->a:Lcom/adsmogo/controller/count/AdsCount;

    iget-object v2, p0, Lcom/adsmogo/controller/c;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/controller/count/a;->a(Lcom/adsmogo/controller/count/AdsCount;Landroid/content/Context;)V

    return-void
.end method
