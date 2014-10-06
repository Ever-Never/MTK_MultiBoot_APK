.class final Lcom/adsmogo/adapters/api/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/APIAdapter;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Ljava/lang/String;)V

    return-void
.end method
