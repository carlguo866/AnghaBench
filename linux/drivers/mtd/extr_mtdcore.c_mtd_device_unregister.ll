; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_device_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_device_unregister(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %5 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %6 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 1
  %12 = call i32 @unregister_reboot_notifier(i32* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %15 = call i32 @del_mtd_partitions(%struct.mtd_info* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %13
  %21 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = call i32 @device_is_registered(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %28 = call i32 @del_mtd_device(%struct.mtd_info* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %25, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @del_mtd_partitions(%struct.mtd_info*) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local i32 @del_mtd_device(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
