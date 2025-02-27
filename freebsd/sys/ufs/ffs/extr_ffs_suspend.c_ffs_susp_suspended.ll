; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_suspend.c_ffs_susp_suspended.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_suspend.c_ffs_susp_suspended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.ufsmount = type { i32 }

@ffs_susp_lock = common dso_local global i32 0, align 4
@SA_LOCKED = common dso_local global i32 0, align 4
@UM_WRITESUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @ffs_susp_suspended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_susp_suspended(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.ufsmount*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  %5 = load i32, i32* @SA_LOCKED, align 4
  %6 = call i32 @sx_assert(i32* @ffs_susp_lock, i32 %5)
  %7 = load %struct.mount*, %struct.mount** %3, align 8
  %8 = call %struct.ufsmount* @VFSTOUFS(%struct.mount* %7)
  store %struct.ufsmount* %8, %struct.ufsmount** %4, align 8
  %9 = load %struct.ufsmount*, %struct.ufsmount** %4, align 8
  %10 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UM_WRITESUSPENDED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local %struct.ufsmount* @VFSTOUFS(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
