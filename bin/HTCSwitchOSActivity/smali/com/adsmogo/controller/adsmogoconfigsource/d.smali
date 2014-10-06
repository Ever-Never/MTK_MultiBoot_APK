.class final Lcom/adsmogo/controller/adsmogoconfigsource/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/controller/adsmogoconfigsource/c;


# direct methods
.method constructor <init>(Lcom/adsmogo/controller/adsmogoconfigsource/c;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/adsmogo/util/f;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/c;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/c;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v0, v1}, Lcom/adsmogo/util/f;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    invoke-virtual {v0}, Lcom/adsmogo/util/f;->a()V

    return-void
.end method
