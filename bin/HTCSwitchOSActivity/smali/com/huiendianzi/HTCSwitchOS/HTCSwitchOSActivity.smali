.class public Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;
.super Landroid/app/Activity;
.source "HTCSwitchOSActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$DeleteFileTask;,
        Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;,
        Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$SwitchBootFileTask;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = null

.field private static final rebootCommand:Ljava/lang/String; = "/system/xbin/shutdown -r"

.field private static final switchBootCommand:Ljava/lang/String;


# instance fields
.field CurrentUseRom:Ljava/lang/String;

.field RomeName:Ljava/lang/String;

.field private final cancleProgressDialogFail:I

.field private final cancleProgressDialogSuc:I

.field canelToast:Landroid/widget/Toast;

.field deleteListener:Landroid/view/View$OnClickListener;

.field listView:Landroid/widget/ListView;

.field mData:Ljava/util/ArrayList;

.field myAdapter:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;

.field positionTemp:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field restartListener:Landroid/view/View$OnClickListener;

.field private final selectOneItem:I

.field switchbootListener:Landroid/view/View$OnClickListener;

.field tx:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "busybox dd if="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MultiBoot/boot.img of=/dev/bootimg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->switchBootCommand:Ljava/lang/String;

    .line 837
    const-string v0, ""

    sput-object v0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 713
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->CurrentUseRom:Ljava/lang/String;

    .line 803
    new-instance v0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$1;

    invoke-direct {v0, p0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$1;-><init>(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;)V

    iput-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->deleteListener:Landroid/view/View$OnClickListener;

    .line 809
    new-instance v0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$2;

    invoke-direct {v0, p0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$2;-><init>(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;)V

    iput-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->restartListener:Landroid/view/View$OnClickListener;

    .line 858
    new-instance v0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$3;

    invoke-direct {v0, p0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$3;-><init>(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;)V

    iput-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->switchbootListener:Landroid/view/View$OnClickListener;

    .line 866
    const/4 v0, -0x1

    iput v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->positionTemp:I

    .line 1088
    const/4 v0, 0x3

    iput v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->selectOneItem:I

    .line 1089
    const/4 v0, 0x7

    iput v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->cancleProgressDialogSuc:I

    .line 1090
    const/16 v0, 0x8

    iput v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->cancleProgressDialogFail:I

    .line 713
    return-void
.end method

.method public static RootCommand(Ljava/lang/String;)Z
    .locals 7
    .parameter "command"

    .prologue
    .line 1031
    const/4 v3, 0x0

    .line 1032
    .local v3, process:Ljava/lang/Process;
    const/4 v1, 0x0

    .line 1035
    .local v1, os:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "/system/xbin/su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1036
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    .end local v1           #os:Ljava/io/DataOutputStream;
    .local v2, os:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1038
    const-string v4, "exit\n"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1040
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1046
    if-eqz v2, :cond_0

    .line 1047
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1049
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1054
    :goto_0
    const/4 v4, 0x1

    move-object v1, v2

    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v1       #os:Ljava/io/DataOutputStream;
    :goto_1
    return v4

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v4, "*** DEBUG ***"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ROOT REE"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1046
    if-eqz v1, :cond_1

    .line 1047
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1049
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1043
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1044
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1046
    :goto_4
    if-eqz v1, :cond_2

    .line 1047
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1049
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1053
    :goto_5
    throw v4

    .line 1050
    .end local v1           #os:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v1       #os:Ljava/io/DataOutputStream;
    :catch_2
    move-exception v5

    goto :goto_5

    .line 1044
    .end local v1           #os:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v1       #os:Ljava/io/DataOutputStream;
    goto :goto_4

    .line 1050
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 1041
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #os:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v1       #os:Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 828
    const-string v0, " -reboot"

    invoke-static {v0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->a(Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 7
    .parameter "paramString"

    .prologue
    .line 841
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 842
    .local v2, localProcess:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 843
    .local v1, localOutputStream:Ljava/io/OutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 845
    .local v0, localDataOutputStream:Ljava/io/DataOutputStream;
    sget-object v5, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 846
    .local v3, str1:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 847
    .local v4, str2:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 848
    const-string v5, "exit\n"

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 850
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 851
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 852
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v0           #localDataOutputStream:Ljava/io/DataOutputStream;
    .end local v1           #localOutputStream:Ljava/io/OutputStream;
    .end local v2           #localProcess:Ljava/lang/Process;
    .end local v3           #str1:Ljava/lang/String;
    .end local v4           #str2:Ljava/lang/String;
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 718
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 915
    invoke-direct {p0, p1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    sget-object v0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->switchBootCommand:Ljava/lang/String;

    return-object v0
.end method

.method private cancelToast()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->canelToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->canelToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 928
    :cond_0
    return-void
.end method

.method private initButtons()V
    .locals 2

    .prologue
    .line 790
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 791
    .local v0, buttonTemp:Landroid/widget/Button;
    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 792
    iget-object v1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->deleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #buttonTemp:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 795
    .restart local v0       #buttonTemp:Landroid/widget/Button;
    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 796
    iget-object v1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->restartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #buttonTemp:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 799
    .restart local v0       #buttonTemp:Landroid/widget/Button;
    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 800
    iget-object v1, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->switchbootListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    return-void
.end method

.method private showToast(I)V
    .locals 1
    .parameter "strid"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->canelToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 918
    const/4 v0, 0x0

    .line 917
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->canelToast:Landroid/widget/Toast;

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->canelToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 921
    iget-object v0, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->canelToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 922
    return-void
.end method


# virtual methods
.method deleteSystem(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rm -rf "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MultiBoot/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->RootCommand(Ljava/lang/String;)Z

    .line 1062
    const-string v0, "dle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm -rf "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/MultiBoot/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rm -rf /MultiBoot/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->RootCommand(Ljava/lang/String;)Z

    .line 1064
    return-void
.end method

.method do_exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "cmd"

    .prologue
    .line 978
    const-string v9, "NativeSD/(.+?)/system"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 979
    .local v8, pattern:Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    .line 980
    .local v1, in:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 981
    .local v7, p:Ljava/lang/Process;
    const/4 v5, 0x0

    .line 984
    .local v5, os:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 985
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 986
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 985
    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 987
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 989
    .end local v5           #os:Ljava/io/DataOutputStream;
    .local v6, os:Ljava/io/DataOutputStream;
    :try_start_2
    const-string v9, "exit\n"

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 992
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 997
    :goto_0
    const/4 v3, 0x0

    .line 998
    .local v3, line:Ljava/lang/String;
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    if-nez v3, :cond_3

    .line 1011
    if-eqz v2, :cond_1

    .line 1012
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1014
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v5, v6

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    move-object v1, v2

    .line 1021
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_1
    const-string v9, "NAND"

    :goto_2
    return-object v9

    .line 993
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 995
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 1006
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    move-object v1, v2

    .line 1008
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/IOException;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1011
    if-eqz v1, :cond_2

    .line 1012
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1014
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 1016
    :catch_2
    move-exception v9

    goto :goto_1

    .line 999
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :cond_3
    :try_start_9
    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1001
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1003
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    move-result-object v9

    .line 1011
    if-eqz v2, :cond_4

    .line 1012
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1014
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :goto_4
    move-object v5, v6

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    move-object v1, v2

    .line 1003
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 1009
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v9

    .line 1011
    :goto_5
    if-eqz v1, :cond_5

    .line 1012
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1014
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 1019
    :goto_6
    throw v9

    .line 1016
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v9

    move-object v5, v6

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_1

    .end local v3           #line:Ljava/lang/String;
    :catch_4
    move-exception v10

    goto :goto_6

    .line 1009
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_5

    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_5

    .line 1006
    :catch_5
    move-exception v0

    goto :goto_3

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1016
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v10

    goto :goto_4
.end method

.method execCommandLine(Ljava/lang/String;)V
    .locals 13
    .parameter "cmd"

    .prologue
    const/16 v12, 0x3e8

    .line 933
    const/4 v5, 0x0

    .line 934
    .local v5, process:Ljava/lang/Process;
    const/4 v6, 0x0

    .line 935
    .local v6, runtime:Ljava/lang/Runtime;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 937
    :try_start_0
    const-string v9, "su"

    invoke-virtual {v6, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 942
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 943
    .local v3, ops:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 945
    .local v4, osw:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 947
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 956
    if-eqz v4, :cond_0

    .line 957
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 962
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v2

    .line 963
    .local v2, i:I
    if-eqz v2, :cond_1

    .line 964
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "command return error"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 965
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    const-string v9, "\n Exit code :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 968
    const-string v9, "execCommandLine"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v8, Ljava/lang/StringBuilder;

    .line 970
    const-string v9, "Error while trying to execute"

    .line 969
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    .local v8, sb1:Ljava/lang/StringBuilder;
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 973
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 975
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .end local v8           #sb1:Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 938
    .end local v2           #i:I
    .end local v3           #ops:Ljava/io/OutputStream;
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v1

    .line 940
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 948
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v3       #ops:Ljava/io/OutputStream;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v0

    .line 949
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v9, "execCommandLine"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Command resulted in an IO Exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 949
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error while trying to execute"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3e8

    .line 951
    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 952
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 956
    if-eqz v4, :cond_0

    .line 957
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 958
    :catch_2
    move-exception v9

    goto :goto_1

    .line 954
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 956
    if-eqz v4, :cond_2

    .line 957
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 961
    :cond_2
    :goto_2
    throw v9

    .line 958
    :catch_3
    move-exception v10

    goto :goto_2

    :catch_4
    move-exception v9

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x7d0

    const/4 v5, 0x1

    .line 728
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 729
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->setContentView(I)V

    .line 730
    const-string v3, "/system/xbin/busybox mount -o remount,rw /"

    invoke-static {v3}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->RootCommand(Ljava/lang/String;)Z

    .line 732
    sget-object v3, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->RootfileName:Ljava/lang/String;

    invoke-static {v3}, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->getFileDir(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->mData:Ljava/util/ArrayList;

    .line 733
    const-string v3, "cat /init.rc"

    invoke-virtual {p0, v3}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->do_exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->CurrentUseRom:Ljava/lang/String;

    .line 734
    iget-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->CurrentUseRom:Ljava/lang/String;

    const-string v4, "NAND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 736
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/MultiBoot/NAND"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 735
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 737
    .local v2, path:Ljava/lang/String;
    const-string v3, "mylog"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 740
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "boo.img"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 741
    .local v0, boot:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 742
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 744
    .end local v0           #boot:Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 745
    const-string v3, "busybox dd if=/dev/bootimg of=/sdcard1/bootimg bs=6M count=1"

    invoke-static {v3}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->RootCommand(Ljava/lang/String;)Z

    .line 751
    .end local v1           #file:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dd if=/dev/bootimg of="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/MultiBoot/NAND/boot.img bs=6M count=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->RootCommand(Ljava/lang/String;)Z

    .line 753
    const-string v3, "\u5df2\u7ecf\u81ea\u52a8\u5907\u4efd\u673a\u8eabboot.img\u5230NAND\u6587\u4ef6\u5939\'"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 755
    const v3, 0x7f060007

    invoke-virtual {p0, v3}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->listView:Landroid/widget/ListView;

    .line 756
    new-instance v3, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;

    invoke-direct {v3, p0, p0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;-><init>(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->myAdapter:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;

    .line 757
    iget-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->myAdapter:Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$MyAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 759
    invoke-direct {p0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->initButtons()V

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4f60\u5f53\u524d\u4f7f\u7528\u7684ROM\u662f\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->CurrentUseRom:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 762
    iget-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$4;

    invoke-direct {v4, p0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity$4;-><init>(Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 772
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 773
    iget-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v4, "\u52aa\u529b\u5de5\u4f5c\u4e2d,\u8bf7\u7b49\u5f85..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 775
    iget-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 777
    const-string v3, ""

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->canelToast:Landroid/widget/Toast;

    .line 779
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 783
    invoke-static {}, Lcom/adsmogo/adview/AdsMogoLayout;->clear()V

    .line 784
    invoke-direct {p0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->cancelToast()V

    .line 785
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 786
    return-void
.end method

.method public reboot()V
    .locals 2

    .prologue
    .line 833
    const-string v0, "Rebooting..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 834
    const-string v0, "reboot"

    invoke-virtual {p0, v0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->execCommandLine(Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method switchSystem(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cp -rf "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MultiBoot/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/boot.img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MultiVBoot/boot.img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huiendianzi/HTCSwitchOS/HTCSwitchOSActivity;->RootCommand(Ljava/lang/String;)Z

    .line 1086
    return-void
.end method
