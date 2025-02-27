; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_read_als.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_read_als.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltr501_data = type { i32 }

@LTR501_STATUS_ALS_RDY = common dso_local global i32 0, align 4
@LTR501_ALS_DATA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltr501_data*, i32*)* @ltr501_read_als to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_read_als(%struct.ltr501_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ltr501_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ltr501_data* %0, %struct.ltr501_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.ltr501_data*, %struct.ltr501_data** %4, align 8
  %8 = load i32, i32* @LTR501_STATUS_ALS_RDY, align 4
  %9 = call i32 @ltr501_drdy(%struct.ltr501_data* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.ltr501_data*, %struct.ltr501_data** %4, align 8
  %16 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LTR501_ALS_DATA1, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @regmap_bulk_read(i32 %17, i32 %18, i32* %19, i32 8)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %14, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @ltr501_drdy(%struct.ltr501_data*, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
