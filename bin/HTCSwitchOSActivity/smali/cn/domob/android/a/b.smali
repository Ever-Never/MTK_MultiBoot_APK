.class Lcn/domob/android/a/b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/a/a;


# direct methods
.method constructor <init>(Lcn/domob/android/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v5, 0x64

    const/4 v6, 0x0

    .line 204
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->a(Lcn/domob/android/a/a;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v5, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcn/domob/android/a/a;->a(Lcn/domob/android/a/a;I)I

    .line 210
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;I)I

    .line 211
    invoke-static {}, Lcn/domob/android/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->d(Lcn/domob/android/a/a;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lcn/domob/android/a/a;->d()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v3}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v4}, Lcn/domob/android/a/a;->c(Lcn/domob/android/a/a;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 214
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->f(Lcn/domob/android/a/a;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->e(Lcn/domob/android/a/a;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v2}, Lcn/domob/android/a/a;->d(Lcn/domob/android/a/a;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 217
    :cond_2
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->g(Lcn/domob/android/a/a;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 218
    invoke-static {}, Lcn/domob/android/a/a;->e()Lcn/domob/android/ads/J;

    move-result-object v0

    const-class v1, Lcn/domob/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v3}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " download success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    iget-object v2, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v2}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v3}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ".temp"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/domob/android/a/a;->a(Lcn/domob/android/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v2}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcn/domob/android/a/a;->e()Lcn/domob/android/ads/J;

    move-result-object v2

    const-class v3, Lcn/domob/android/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v5}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FileName change to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/domob/android/ads/J;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 230
    :cond_3
    sget-object v0, Lcn/domob/android/a/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->i(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/android/a/c;->a(Ljava/lang/String;)V

    .line 234
    :cond_4
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0, v6}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;I)I

    .line 235
    invoke-static {}, Lcn/domob/android/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->d(Lcn/domob/android/a/a;)Landroid/app/Notification;

    move-result-object v0

    const v1, 0x1080082

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 237
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->d(Lcn/domob/android/a/a;)Landroid/app/Notification;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v2}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6bd5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 238
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->d(Lcn/domob/android/a/a;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 239
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/a/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {}, Lcn/domob/android/a/a;->d()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v3}, Lcn/domob/android/a/a;->e(Lcn/domob/android/a/a;)I

    move-result v3

    const/high16 v4, 0x800

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/domob/android/a/a;->a(Lcn/domob/android/a/a;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 242
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->d(Lcn/domob/android/a/a;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lcn/domob/android/a/a;->d()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v3}, Lcn/domob/android/a/a;->b(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u5b8c\u6bd5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v4}, Lcn/domob/android/a/a;->c(Lcn/domob/android/a/a;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 243
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->f(Lcn/domob/android/a/a;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->e(Lcn/domob/android/a/a;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v2}, Lcn/domob/android/a/a;->d(Lcn/domob/android/a/a;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 244
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->k(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 246
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->k(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/domob/android/ads/F;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 247
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->i(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/android/a/c;->b(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcn/domob/android/a/a;->e()Lcn/domob/android/ads/J;

    move-result-object v0

    invoke-static {}, Lcn/domob/android/a/a;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "md5 authorized failed"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/J;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->f(Lcn/domob/android/a/a;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a;->e(Lcn/domob/android/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 253
    :cond_5
    iget-object v0, p0, Lcn/domob/android/a/b;->a:Lcn/domob/android/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a;->h(Lcn/domob/android/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/a/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 254
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 255
    invoke-static {}, Lcn/domob/android/a/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
