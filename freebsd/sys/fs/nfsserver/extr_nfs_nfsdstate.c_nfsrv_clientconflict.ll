; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_clientconflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_clientconflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.nfsclient = type { i64, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@NFSD_MONOSEC = common dso_local global i64 0, align 8
@nfsrv_stablefirst = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@NFSNSF_UPDATEDONE = common dso_local global i32 0, align 4
@nfsv4rootfs_lock = common dso_local global i32 0, align 4
@NFSV4ROOTLOCKMUTEXPTR = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@NFSNST_REVOKE = common dso_local global i32 0, align 4
@lc_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsclient*, i32*, %struct.TYPE_7__*, i32*)* @nfsrv_clientconflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_clientconflict(%struct.nfsclient* %0, i32* %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsclient*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfsclient* %0, %struct.nfsclient** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.nfsclient*, %struct.nfsclient** %6, align 8
  %13 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NFSD_MONOSEC, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nfsrv_stablefirst, i32 0, i32 0), align 4
  %19 = load i32, i32* @NFSNSF_UPDATEDONE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %93

23:                                               ; preds = %17
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = call i32 (...) @NFSUNLOCKSTATE()
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = call i32 @NFSVOPISLOCKED(%struct.TYPE_7__* %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = call i32 @NFSVOPUNLOCK(%struct.TYPE_7__* %34, i32 0)
  br label %36

36:                                               ; preds = %31, %27
  %37 = call i32 (...) @NFSLOCKV4ROOTMUTEX()
  %38 = call i32 @nfsv4_relref(i32* @nfsv4rootfs_lock)
  br label %39

39:                                               ; preds = %42, %36
  %40 = load i32, i32* @NFSV4ROOTLOCKMUTEXPTR, align 4
  %41 = call i32 @nfsv4_lock(i32* @nfsv4rootfs_lock, i32 1, i32* null, i32 %40, i32* null)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %39, label %46

46:                                               ; preds = %42
  %47 = call i32 (...) @NFSUNLOCKV4ROOTMUTEX()
  %48 = load i32*, i32** %7, align 8
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @LK_RETRY, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @NFSVOPLOCK(%struct.TYPE_7__* %52, i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VI_DOOMED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store i32 2, i32* %5, align 4
  br label %93

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %46
  store i32 1, i32* %5, align 4
  br label %93

66:                                               ; preds = %23
  %67 = call i32 (...) @NFSUNLOCKSTATE()
  %68 = load %struct.nfsclient*, %struct.nfsclient** %6, align 8
  %69 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nfsclient*, %struct.nfsclient** %6, align 8
  %72 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NFSNST_REVOKE, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @nfsrv_writestable(i32 %70, i32 %73, i32 %74, i32* %75)
  %77 = call i32 (...) @nfsrv_backupstable()
  %78 = load %struct.nfsclient*, %struct.nfsclient** %6, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @nfsrv_cleanclient(%struct.nfsclient* %78, i32* %79)
  %81 = load %struct.nfsclient*, %struct.nfsclient** %6, align 8
  %82 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %81, i32 0, i32 2
  %83 = call i32 @nfsrv_freedeleglist(i32* %82)
  %84 = load %struct.nfsclient*, %struct.nfsclient** %6, align 8
  %85 = getelementptr inbounds %struct.nfsclient, %struct.nfsclient* %84, i32 0, i32 1
  %86 = call i32 @nfsrv_freedeleglist(i32* %85)
  %87 = load %struct.nfsclient*, %struct.nfsclient** %6, align 8
  %88 = load i32, i32* @lc_hash, align 4
  %89 = call i32 @LIST_REMOVE(%struct.nfsclient* %87, i32 %88)
  %90 = load %struct.nfsclient*, %struct.nfsclient** %6, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @nfsrv_zapclient(%struct.nfsclient* %90, i32* %91)
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %66, %65, %63, %22
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @NFSUNLOCKSTATE(...) #1

declare dso_local i32 @NFSVOPISLOCKED(%struct.TYPE_7__*) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @NFSLOCKV4ROOTMUTEX(...) #1

declare dso_local i32 @nfsv4_relref(i32*) #1

declare dso_local i32 @nfsv4_lock(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NFSUNLOCKV4ROOTMUTEX(...) #1

declare dso_local i32 @NFSVOPLOCK(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @nfsrv_writestable(i32, i32, i32, i32*) #1

declare dso_local i32 @nfsrv_backupstable(...) #1

declare dso_local i32 @nfsrv_cleanclient(%struct.nfsclient*, i32*) #1

declare dso_local i32 @nfsrv_freedeleglist(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.nfsclient*, i32) #1

declare dso_local i32 @nfsrv_zapclient(%struct.nfsclient*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
