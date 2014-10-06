.class final Lcom/adsmogo/adapters/api/P;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/P;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/P;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/P;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method
