.class final Lcom/adsmogo/adapters/api/L;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/L;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/L;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v1, p0, Lcom/adsmogo/adapters/api/L;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/L;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/L;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v3

    iget-object v3, v3, Lcom/adsmogo/model/obj/PublicCustom;->appName:Ljava/lang/String;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/L;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v4}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/AdsMogoUtilTool;->downloadAPK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/L;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/L;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/L;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget v1, v1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/L;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a()V

    return-void
.end method
