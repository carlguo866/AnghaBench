; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_misc.c_ubi_calculate_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_misc.c_ubi_calculate_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, i64, i64 }

@.str = private unnamed_addr constant [136 x i8] c"number of bad PEBs (%d) is above the expected limit (%d), not reserving any PEBs for bad PEB handling, will use available PEBs (if any)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_calculate_reserved(%struct.ubi_device* %0) #0 {
  %2 = alloca %struct.ubi_device*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %2, align 8
  %3 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %4 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %7 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %5, %8
  %10 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %11 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %13 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %18 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %20 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %21 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ubi_warn(%struct.ubi_device* %19, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %25)
  br label %27

27:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
