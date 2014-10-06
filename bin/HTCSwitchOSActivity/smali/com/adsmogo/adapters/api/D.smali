.class final Lcom/adsmogo/adapters/api/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/model/obj/Ration;

.field private synthetic b:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/D;->b:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/D;->a:Lcom/adsmogo/model/obj/Ration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/D;->b:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/D;->a:Lcom/adsmogo/model/obj/Ration;

    iget-object v1, v1, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;Ljava/lang/String;)V

    return-void
.end method
