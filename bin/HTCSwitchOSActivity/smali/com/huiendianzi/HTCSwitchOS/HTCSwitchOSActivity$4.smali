.class Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$4;
.super Ljava/lang/Object;
.source "HTCSwitchOSActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;


# direct methods
.method constructor <init>(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$4;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 766
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$4;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iput p3, v0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->positionTemp:I

    .line 768
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$4;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget-object v0, v0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->myAdapter:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;->notifyDataSetChanged()V

    .line 769
    return-void
.end method
