.class final Lcom/adsmogo/adapters/api/V;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/V;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/V;->a:Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/SXuXiXzXoXnXgAPIAdapter;->a()V

    return-void
.end method
