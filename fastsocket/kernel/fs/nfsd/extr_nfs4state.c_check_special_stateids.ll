; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_check_special_stateids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_check_special_stateids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RD_STATE = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@nfserr_grace = common dso_local global i32 0, align 4
@WR_STATE = common dso_local global i32 0, align 4
@NFS4_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@NFS4_SHARE_DENY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @check_special_stateids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_special_stateids(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = call i64 @ONE_STATEID(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @RD_STATE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @nfs_ok, align 4
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %11, %3
  %19 = call i64 (...) @locks_in_grace()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @nfserr_grace, align 4
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @WR_STATE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @NFS4_SHARE_DENY_WRITE, align 4
  %31 = call i32 @nfs4_share_conflict(i32* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %23
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @NFS4_SHARE_DENY_READ, align 4
  %35 = call i32 @nfs4_share_conflict(i32* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %28, %21, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @ONE_STATEID(i32*) #1

declare dso_local i64 @locks_in_grace(...) #1

declare dso_local i32 @nfs4_share_conflict(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
