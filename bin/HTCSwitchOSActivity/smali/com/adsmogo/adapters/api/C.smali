.class final Lcom/adsmogo/adapters/api/C;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private synthetic b:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/C;->b:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/C;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/C;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/C;->b:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/C;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;Ljava/lang/String;)V

    return-void
.end method
