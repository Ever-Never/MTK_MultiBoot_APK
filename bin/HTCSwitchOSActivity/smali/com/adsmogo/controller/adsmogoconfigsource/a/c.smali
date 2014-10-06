.class final Lcom/adsmogo/controller/adsmogoconfigsource/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/controller/adsmogoconfigsource/a/b;


# direct methods
.method public constructor <init>(Lcom/adsmogo/controller/adsmogoconfigsource/a/b;Ljava/lang/String;Lcom/adsmogo/controller/adsmogoconfigsource/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/c;->a:Lcom/adsmogo/controller/adsmogoconfigsource/a/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Runnable call service"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/c;->a:Lcom/adsmogo/controller/adsmogoconfigsource/a/b;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/a/b;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/a/c;->a:Lcom/adsmogo/controller/adsmogoconfigsource/a/b;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/a/b;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a()V

    :cond_0
    return-void
.end method
