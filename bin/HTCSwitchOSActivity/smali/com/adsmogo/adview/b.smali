.class final Lcom/adsmogo/adview/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoLayout;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoLayout;->c(Lcom/adsmogo/adview/AdsMogoLayout;)V

    return-void
.end method
