.class public Lcom/huiendianzi/HTCSwitchOS/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static RootfileName:Ljava/lang/String;

.field public static RootromfileFolder:Ljava/lang/String;

.field public static fileNameTo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/MultiBoot/boot.img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->fileNameTo:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/MultiBoot/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->RootfileName:Ljava/lang/String;

    .line 28
    const-string v0, "/MultiBoot/"

    sput-object v0, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->RootromfileFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;)Z
    .locals 13
    .parameter "fileNameFrom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 60
    invoke-static {p0}, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->getFileFrom(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 61
    .local v1, fileFrom:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v8

    .line 64
    :cond_1
    new-instance v2, Ljava/io/File;

    sget-object v9, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->fileNameTo:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, fileTo:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 68
    :cond_2
    const/high16 v5, 0x20

    .line 69
    .local v5, length:I
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 70
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    .local v6, out:Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 72
    .local v4, inC:Ljava/nio/channels/FileChannel;
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 73
    .local v7, outC:Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 75
    .local v0, b:Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v9

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    .line 76
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 77
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 78
    const/4 v8, 0x1

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v11

    sub-long/2addr v9, v11

    int-to-long v11, v5

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    .line 81
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v5, v9

    .line 84
    :goto_2
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    invoke-virtual {v4, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 87
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 88
    invoke-virtual {v7, v8}, Ljava/nio/channels/FileChannel;->force(Z)V

    goto :goto_1

    .line 83
    :cond_4
    const/high16 v5, 0x20

    goto :goto_2
.end method

.method private static delAllFile(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, flag:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v1

    .line 117
    .end local v1           #flag:Z
    .local v2, flag:I
    :goto_0
    return v2

    .line 98
    .end local v2           #flag:I
    .restart local v1       #flag:Z
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v1

    .line 99
    .restart local v2       #flag:I
    goto :goto_0

    .line 101
    .end local v2           #flag:I
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, tempList:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 103
    .local v4, temp:Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, v5

    if-lt v3, v6, :cond_2

    move v2, v1

    .line 117
    .restart local v2       #flag:I
    goto :goto_0

    .line 104
    .end local v2           #flag:I
    :cond_2
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 105
    new-instance v4, Ljava/io/File;

    .end local v4           #temp:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v4       #temp:Ljava/io/File;
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 110
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 112
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->delFolder(Ljava/lang/String;)Z

    .line 114
    const/4 v1, 0x1

    .line 103
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    :cond_5
    new-instance v4, Ljava/io/File;

    .end local v4           #temp:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4       #temp:Ljava/io/File;
    goto :goto_2
.end method

.method private static delFolder(Ljava/lang/String;)Z
    .locals 2
    .parameter "folderPath"

    .prologue
    .line 122
    :try_start_0
    invoke-static {p0}, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->delAllFile(Ljava/lang/String;)Z

    .line 123
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v1, 0x1

    .line 127
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteBoot(Ljava/lang/String;)Z
    .locals 2
    .parameter "romName"

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->RootfileName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->delFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->RootromfileFolder:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->delFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFileDir(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "filePath"

    .prologue
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v4, items:Ljava/util/ArrayList;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 43
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 45
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-lt v3, v5, :cond_1

    .line 55
    .end local v3           #i:I
    :cond_0
    return-object v4

    .line 46
    .restart local v3       #i:I
    :cond_1
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 47
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, fileNameTemp:Ljava/lang/String;
    invoke-static {v1}, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->getFileFrom(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 50
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v1           #fileNameTemp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getFileFrom(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "fileNameTemp"

    .prologue
    .line 31
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huiendianzi/HTCSwitchOS/FileUtil;->RootfileName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/boot.img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
