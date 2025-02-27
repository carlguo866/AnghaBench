; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_unset_container.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_unset_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_group = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_group*)* @vfio_group_unset_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_group_unset_container(%struct.vfio_group* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfio_group*, align 8
  %4 = alloca i32, align 4
  store %struct.vfio_group* %0, %struct.vfio_group** %3, align 8
  %5 = load %struct.vfio_group*, %struct.vfio_group** %3, align 8
  %6 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %5, i32 0, i32 0
  %7 = call i32 @atomic_cmpxchg(i32* %6, i32 1, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %13
  %20 = load %struct.vfio_group*, %struct.vfio_group** %3, align 8
  %21 = call i32 @__vfio_group_unset_container(%struct.vfio_group* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %16, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @__vfio_group_unset_container(%struct.vfio_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
