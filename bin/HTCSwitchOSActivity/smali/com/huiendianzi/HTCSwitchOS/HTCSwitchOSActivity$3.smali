.class Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$3;
.super Ljava/lang/Object;
.source "HTCSwitchOSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;


# direct methods
.method constructor <init>(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$3;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 861
    new-instance v0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;

    iget-object v1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$3;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    invoke-direct {v0, v1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;-><init>(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 863
    return-void
.end method
