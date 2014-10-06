.class final Lcom/adsmogo/controller/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Message;

.field private synthetic b:Lcom/adsmogo/controller/service/UpdateService;


# direct methods
.method constructor <init>(Lcom/adsmogo/controller/service/UpdateService;)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/adsmogo/controller/service/UpdateService;->h(Lcom/adsmogo/controller/service/UpdateService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/service/c;->a:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/adsmogo/controller/service/c;->a:Landroid/os/Message;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->i(Lcom/adsmogo/controller/service/UpdateService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->i(Lcom/adsmogo/controller/service/UpdateService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->a(Lcom/adsmogo/controller/service/UpdateService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->a(Lcom/adsmogo/controller/service/UpdateService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    iget-object v1, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v1}, Lcom/adsmogo/controller/service/UpdateService;->j(Lcom/adsmogo/controller/service/UpdateService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v2}, Lcom/adsmogo/controller/service/UpdateService;->a(Lcom/adsmogo/controller/service/UpdateService;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/controller/service/UpdateService;->a(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->h(Lcom/adsmogo/controller/service/UpdateService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/controller/service/c;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/adsmogo/controller/service/c;->a:Landroid/os/Message;

    iput v4, v0, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "faild"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v3}, Lcom/adsmogo/controller/service/UpdateService;->c(Lcom/adsmogo/controller/service/UpdateService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\u4e0b\u8f7d\u5931\u8d25\uff0c\u60a8\u7684SD\u5361\u5b58\u5728\u5f02\u5e38\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/controller/service/c;->a:Landroid/os/Message;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->h(Lcom/adsmogo/controller/service/UpdateService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/controller/service/c;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/adsmogo/controller/service/c;->a:Landroid/os/Message;

    iput v4, v0, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "faild"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v3}, Lcom/adsmogo/controller/service/UpdateService;->c(Lcom/adsmogo/controller/service/UpdateService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u786e\u8ba4\u60a8\u7684\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/controller/service/c;->a:Landroid/os/Message;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/adsmogo/controller/service/c;->b:Lcom/adsmogo/controller/service/UpdateService;

    invoke-static {v0}, Lcom/adsmogo/controller/service/UpdateService;->h(Lcom/adsmogo/controller/service/UpdateService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/controller/service/c;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
