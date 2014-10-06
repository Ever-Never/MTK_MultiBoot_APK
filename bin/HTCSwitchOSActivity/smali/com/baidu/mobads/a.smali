.class Lcom/baidu/mobads/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/baidu/mobads/AdViewListener;

.field private final b:Lcom/baidu/mobads/AdView;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/AdViewListener;Lcom/baidu/mobads/AdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobads/a;->a:Lcom/baidu/mobads/AdViewListener;

    iput-object p2, p0, Lcom/baidu/mobads/a;->b:Lcom/baidu/mobads/AdView;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "method"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AdView.setListener handleMessage"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/baidu/mobads/a/d;->a([Ljava/lang/Object;)I

    const-string v1, "onAdReady"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/a;->a:Lcom/baidu/mobads/AdViewListener;

    iget-object v1, p0, Lcom/baidu/mobads/a;->b:Lcom/baidu/mobads/AdView;

    invoke-interface {v0, v1}, Lcom/baidu/mobads/AdViewListener;->onAdReady(Lcom/baidu/mobads/AdView;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v1, "onAdShow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    const-string v3, "p_jsonInfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/baidu/mobads/a;->a:Lcom/baidu/mobads/AdViewListener;

    invoke-interface {v1, v0}, Lcom/baidu/mobads/AdViewListener;->onAdShow(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    :cond_2
    const-string v1, "onAdClick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    const-string v3, "p_jsonInfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/baidu/mobads/a;->a:Lcom/baidu/mobads/AdViewListener;

    invoke-interface {v1, v0}, Lcom/baidu/mobads/AdViewListener;->onAdClick(Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/a/d;->b(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_2

    :cond_3
    const-string v1, "onAdFailed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "p_reason"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/a;->a:Lcom/baidu/mobads/AdViewListener;

    invoke-interface {v1, v0}, Lcom/baidu/mobads/AdViewListener;->onAdFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "onAdSwitch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/baidu/mobads/a;->a:Lcom/baidu/mobads/AdViewListener;

    invoke-interface {v0}, Lcom/baidu/mobads/AdViewListener;->onAdSwitch()V

    goto :goto_0

    :cond_5
    const-string v1, "onVideoStart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/baidu/mobads/a;->a:Lcom/baidu/mobads/AdViewListener;

    invoke-interface {v0}, Lcom/baidu/mobads/AdViewListener;->onVideoStart()V

    goto :goto_0

    :cond_6
    const-string v1, "onVideoFinish"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/a;->a:Lcom/baidu/mobads/AdViewListener;

    invoke-interface {v0}, Lcom/baidu/mobads/AdViewListener;->onVideoFinish()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method
