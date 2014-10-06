.class public Lcom/adsmogo/util/AdsMogoDexClassLoader;
.super Ljava/lang/ClassLoader;


# static fields
.field private static final VERBOSE_DEBUG:Z


# instance fields
.field private final mDexOutputPath:Ljava/lang/String;

.field private final mDexs:[Ldalvik/system/DexFile;

.field private final mFiles:[Ljava/io/File;

.field private final mLibPaths:[Ljava/lang/String;

.field private final mRawDexPath:Ljava/lang/String;

.field private final mRawLibPath:Ljava/lang/String;

.field private final mZips:[Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 9

    const/4 v1, 0x0

    invoke-direct {p0, p4}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mRawDexPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mDexOutputPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mRawLibPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mRawDexPath:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v0, v4, [Ljava/io/File;

    iput-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mFiles:[Ljava/io/File;

    new-array v0, v4, [Ljava/util/zip/ZipFile;

    iput-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    new-array v0, v4, [Ldalvik/system/DexFile;

    iput-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_3

    const-string v0, "java.library.path"

    const-string v2, "."

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "path.separator"

    const-string v3, ":"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file.separator"

    const-string v4, "/"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mRawLibPath:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mRawLibPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mLibPaths:[Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v2, v0

    move v0, v1

    :goto_2
    if-lt v0, v2, :cond_9

    return-void

    :cond_3
    new-instance v5, Ljava/io/File;

    aget-object v0, v3, v2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mFiles:[Ljava/io/File;

    aput-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v6, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    :try_start_1
    aget-object v0, v3, v2

    iget-object v6, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mDexOutputPath:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x50

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "/"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_6

    :goto_4
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string v0, ".dex"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v7, v3, v2

    const/4 v8, 0x0

    invoke-static {v7, v0, v8}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    aput-object v0, v6, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed opening \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    :try_start_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed loadDex \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\': "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mRawLibPath:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v4, v1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mFiles:[Ljava/io/File;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " in loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mFiles:[Ljava/io/File;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/adsmogo/util/AdsMogoDexClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "jar:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "Unknown"

    const-string v3, "0.0"

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    const-string v6, "0.0"

    const-string v7, "Unknown"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/adsmogo/util/AdsMogoDexClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
