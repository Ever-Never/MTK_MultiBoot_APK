.class Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;
.super Landroid/os/AsyncTask;
.source "HTCSwitchOSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchBootFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;


# direct methods
.method constructor <init>(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget v1, v1, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->positionTemp:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1156
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1173
    :goto_0
    return-object v1

    .line 1158
    :cond_0
    iget-object v1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget v1, v1, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->positionTemp:I

    iget-object v2, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget-object v2, v2, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1162
    :try_start_0
    iget-object v2, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget-object v1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget-object v1, v1, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->mData:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget v3, v3, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->positionTemp:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->switchSystem(Ljava/lang/String;)V

    .line 1163
    invoke-static {}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->access$2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->RootCommand(Ljava/lang/String;)Z

    .line 1164
    const-string v1, "swich"

    invoke-static {}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->access$2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1173
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    #getter for: Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->access$0(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1181
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1192
    :goto_0
    :pswitch_0
    return-void

    .line 1183
    :pswitch_1
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    const v1, 0x7f050004

    #calls: Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->showToast(I)V
    invoke-static {v0, v1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->access$1(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;I)V

    goto :goto_0

    .line 1186
    :pswitch_2
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    const v1, 0x7f050008

    #calls: Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->showToast(I)V
    invoke-static {v0, v1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->access$1(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;I)V

    goto :goto_0

    .line 1189
    :pswitch_3
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    const v1, 0x7f050006

    #calls: Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->showToast(I)V
    invoke-static {v0, v1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->access$1(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;I)V

    goto :goto_0

    .line 1181
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 1148
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1149
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    #getter for: Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->access$0(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1150
    return-void
.end method
