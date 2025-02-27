; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfsrpc_reopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfsrpc_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32 }
%struct.nfsclopen = type { i32 }
%struct.nfscldeleg = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsmount*, i32*, i32, i32, %struct.nfsclopen*, %struct.nfscldeleg**, %struct.ucred*, i32*)* @nfsrpc_reopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrpc_reopen(%struct.nfsmount* %0, i32* %1, i32 %2, i32 %3, %struct.nfsclopen* %4, %struct.nfscldeleg** %5, %struct.ucred* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsmount*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsclopen*, align 8
  %15 = alloca %struct.nfscldeleg**, align 8
  %16 = alloca %struct.ucred*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.nfsnode*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.nfsclopen* %4, %struct.nfsclopen** %14, align 8
  store %struct.nfscldeleg** %5, %struct.nfscldeleg*** %15, align 8
  store %struct.ucred* %6, %struct.ucred** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %22 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %17, align 8
  %27 = call i32 @nfscl_ngetreopen(i32 %23, i32* %24, i32 %25, i32* %26, %struct.nfsnode** %18)
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i32, i32* %20, align 4
  store i32 %31, i32* %9, align 4
  br label %75

32:                                               ; preds = %8
  %33 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %34 = call i32 @NFSTOV(%struct.nfsnode* %33)
  store i32 %34, i32* %19, align 4
  %35 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %36 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %32
  %40 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %41 = load i32, i32* %19, align 4
  %42 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %43 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %48 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.nfsclopen*, %struct.nfsclopen** %14, align 8
  %56 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %57 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @NFS4NODENAME(%struct.TYPE_2__* %58)
  %60 = load %struct.nfsnode*, %struct.nfsnode** %18, align 8
  %61 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nfscldeleg**, %struct.nfscldeleg*** %15, align 8
  %66 = load %struct.ucred*, %struct.ucred** %16, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = call i32 @nfscl_tryopen(%struct.nfsmount* %40, i32 %41, i32 %46, i32 %51, i32* %52, i32 %53, i32 %54, %struct.nfsclopen* %55, i32 %59, i32 %64, %struct.nfscldeleg** %65, i32 0, i32 0, %struct.ucred* %66, i32* %67)
  store i32 %68, i32* %20, align 4
  br label %71

69:                                               ; preds = %32
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %20, align 4
  br label %71

71:                                               ; preds = %69, %39
  %72 = load i32, i32* %19, align 4
  %73 = call i32 @vrele(i32 %72)
  %74 = load i32, i32* %20, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %30
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @nfscl_ngetreopen(i32, i32*, i32, i32*, %struct.nfsnode**) #1

declare dso_local i32 @NFSTOV(%struct.nfsnode*) #1

declare dso_local i32 @nfscl_tryopen(%struct.nfsmount*, i32, i32, i32, i32*, i32, i32, %struct.nfsclopen*, i32, i32, %struct.nfscldeleg**, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @NFS4NODENAME(%struct.TYPE_2__*) #1

declare dso_local i32 @vrele(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
