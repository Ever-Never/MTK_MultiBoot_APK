.class final Lcom/adsmogo/util/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/util/g;


# direct methods
.method constructor <init>(Lcom/adsmogo/util/g;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/util/h;->a:Lcom/adsmogo/util/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/util/h;->a:Lcom/adsmogo/util/g;

    invoke-static {v0}, Lcom/adsmogo/util/g;->a(Lcom/adsmogo/util/g;)Lcom/adsmogo/util/f;

    move-result-object v0

    iget-object v0, v0, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/util/h;->a:Lcom/adsmogo/util/g;

    invoke-static {v2}, Lcom/adsmogo/util/g;->a(Lcom/adsmogo/util/g;)Lcom/adsmogo/util/f;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    iget-object v2, v2, Lcom/adsmogo/model/obj/Update;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/util/h;->a:Lcom/adsmogo/util/g;

    invoke-static {v2}, Lcom/adsmogo/util/g;->a(Lcom/adsmogo/util/g;)Lcom/adsmogo/util/f;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/util/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/util/h;->a:Lcom/adsmogo/util/g;

    invoke-static {v1}, Lcom/adsmogo/util/g;->a(Lcom/adsmogo/util/g;)Lcom/adsmogo/util/f;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    const-class v2, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mogo_title"

    iget-object v2, p0, Lcom/adsmogo/util/h;->a:Lcom/adsmogo/util/g;

    invoke-static {v2}, Lcom/adsmogo/util/g;->a(Lcom/adsmogo/util/g;)Lcom/adsmogo/util/f;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    iget-object v2, v2, Lcom/adsmogo/model/obj/Update;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mogo_link"

    iget-object v2, p0, Lcom/adsmogo/util/h;->a:Lcom/adsmogo/util/g;

    invoke-static {v2}, Lcom/adsmogo/util/g;->a(Lcom/adsmogo/util/g;)Lcom/adsmogo/util/f;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/util/f;->d:Lcom/adsmogo/model/obj/Update;

    iget-object v2, v2, Lcom/adsmogo/model/obj/Update;->download_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/util/h;->a:Lcom/adsmogo/util/g;

    invoke-static {v1}, Lcom/adsmogo/util/g;->a(Lcom/adsmogo/util/g;)Lcom/adsmogo/util/f;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/util/f;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
