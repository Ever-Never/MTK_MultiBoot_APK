.class public Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "HTCSwitchOSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;


# direct methods
.method public constructor <init>(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 873
    iput-object p1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 874
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 875
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget-object v0, v0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget-object v0, v0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 889
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 894
    if-nez p2, :cond_0

    .line 895
    iget-object v2, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 898
    :cond_0
    const v2, 0x7f060001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 897
    check-cast v1, Landroid/widget/TextView;

    .line 899
    .local v1, tvOS:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget-object v2, v2, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    const/high16 v2, 0x7f06

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 900
    check-cast v0, Landroid/widget/ImageView;

    .line 902
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget v2, v2, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->positionTemp:I

    if-ne p1, v2, :cond_1

    .line 903
    const v2, 0x7f020003

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 904
    iget-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget-object v2, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;->this$0:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;

    iget-object v2, v2, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->RomeName:Ljava/lang/String;

    .line 908
    :goto_0
    return-object p2

    .line 906
    :cond_1
    const v2, 0x7f020002

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
