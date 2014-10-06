.class final Lcom/adsmogo/adapters/api/R;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    iput-object p3, p0, Lcom/adsmogo/adapters/api/R;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/R;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->a(Ljava/lang/String;)V

    return-void
.end method
