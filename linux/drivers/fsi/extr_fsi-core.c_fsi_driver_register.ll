; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_driver = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsi_driver_register(%struct.fsi_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_driver*, align 8
  store %struct.fsi_driver* %0, %struct.fsi_driver** %3, align 8
  %4 = load %struct.fsi_driver*, %struct.fsi_driver** %3, align 8
  %5 = icmp ne %struct.fsi_driver* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.fsi_driver*, %struct.fsi_driver** %3, align 8
  %11 = getelementptr inbounds %struct.fsi_driver, %struct.fsi_driver* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %21

17:                                               ; preds = %9
  %18 = load %struct.fsi_driver*, %struct.fsi_driver** %3, align 8
  %19 = getelementptr inbounds %struct.fsi_driver, %struct.fsi_driver* %18, i32 0, i32 0
  %20 = call i32 @driver_register(i32* %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %17, %14, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @driver_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
