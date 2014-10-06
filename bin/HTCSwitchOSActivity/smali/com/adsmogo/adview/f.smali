.class final Lcom/adsmogo/adview/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adview/AdsMogoLayout;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adview/f;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/adsmogo/controller/a/a;

    iget-object v1, p0, Lcom/adsmogo/adview/f;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v0, v1}, Lcom/adsmogo/controller/a/a;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    invoke-virtual {v0}, Lcom/adsmogo/controller/a/a;->a()V

    return-void
.end method
