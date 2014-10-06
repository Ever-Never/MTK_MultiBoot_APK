.class final Lcom/adsmogo/adapters/api/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adsmogo/adapters/api/y;->a:Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/y;->a:Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;->d(Lcom/adsmogo/adapters/api/CXaXsXeXeSourceAdapter;)V

    return-void
.end method
