; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_file_get_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_file_get_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i32, i32 }

@NFS4_SHARE_ACCESS_BOTH = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@nfserr_share_denied = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_file*, i32)* @nfs4_file_get_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_file_get_access(%struct.nfs4_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_file*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs4_file* %0, %struct.nfs4_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %7 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %6, i32 0, i32 1
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NFS4_SHARE_ACCESS_BOTH, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @nfserr_inval, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %19 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @nfserr_share_denied, align 4
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @__nfs4_file_get_access(%struct.nfs4_file* %26, i32 %27)
  %29 = load i32, i32* @nfs_ok, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %23, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @__nfs4_file_get_access(%struct.nfs4_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
