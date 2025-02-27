; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_lock_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_lock_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_lock_unlock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@OPAL_USER9 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, %struct.opal_lock_unlock*)* @opal_lock_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_lock_unlock(%struct.opal_dev* %0, %struct.opal_lock_unlock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca %struct.opal_lock_unlock*, align 8
  %6 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store %struct.opal_lock_unlock* %1, %struct.opal_lock_unlock** %5, align 8
  %7 = load %struct.opal_lock_unlock*, %struct.opal_lock_unlock** %5, align 8
  %8 = getelementptr inbounds %struct.opal_lock_unlock, %struct.opal_lock_unlock* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OPAL_USER9, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %18 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %21 = load %struct.opal_lock_unlock*, %struct.opal_lock_unlock** %5, align 8
  %22 = call i32 @__opal_lock_unlock(%struct.opal_dev* %20, %struct.opal_lock_unlock* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %24 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %16, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__opal_lock_unlock(%struct.opal_dev*, %struct.opal_lock_unlock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
