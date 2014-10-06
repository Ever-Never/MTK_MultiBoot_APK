.class final Lcom/adsmogo/adapters/api/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;Z)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/adapters/api/f;->b:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adapters/api/f;->a:Z

    iput-boolean p2, p0, Lcom/adsmogo/adapters/api/f;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/adsmogo/adapters/api/f;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adsmogo/adapters/api/f;->b:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->c(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Lcom/adsmogo/model/obj/Adchina;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Adchina;->getCtu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[|||]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/adsmogo/adapters/api/f;->b:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/adsmogo/adapters/api/f;->b:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->c(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Lcom/adsmogo/model/obj/Adchina;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Adchina;->getRbu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/adsmogo/adapters/api/f;->b:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "2,0,0,0&ma="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/f;->b:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/adsmogo/adapters/api/f;->b:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->c(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Lcom/adsmogo/model/obj/Adchina;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Adchina;->getItu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[|||]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/adsmogo/adapters/api/f;->b:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
