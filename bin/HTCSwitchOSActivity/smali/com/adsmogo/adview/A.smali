.class final Lcom/adsmogo/adview/A;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/ShowFullScreenDialog;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adview/ShowFullScreenDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/A;->a:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adview/ShowFullScreenDialog;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adview/A;-><init>(Lcom/adsmogo/adview/ShowFullScreenDialog;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/A;->a:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-static {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->a(Lcom/adsmogo/adview/ShowFullScreenDialog;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c()V

    iget-object v0, p0, Lcom/adsmogo/adview/A;->a:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-virtual {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->closeDialog()V

    const/4 v0, 0x1

    return v0
.end method
