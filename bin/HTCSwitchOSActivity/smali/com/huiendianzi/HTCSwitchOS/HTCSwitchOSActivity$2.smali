.class Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$2;
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
    iput-object p1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$2;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 815
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->RootCommand(Ljava/lang/String;)Z

    .line 824
    return-void
.end method
