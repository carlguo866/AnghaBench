; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-debugfs.c_regmap_calc_tot_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-debugfs.c_regmap_calc_tot_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, i8*, i64)* @regmap_calc_tot_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regmap_calc_tot_len(%struct.regmap* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.regmap*, %struct.regmap** %4, align 8
  %8 = getelementptr inbounds %struct.regmap, %struct.regmap* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = load %struct.regmap*, %struct.regmap** %4, align 8
  %13 = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @regmap_calc_reg_len(i32 %14)
  %16 = load %struct.regmap*, %struct.regmap** %4, align 8
  %17 = getelementptr inbounds %struct.regmap, %struct.regmap* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load %struct.regmap*, %struct.regmap** %4, align 8
  %19 = getelementptr inbounds %struct.regmap, %struct.regmap* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 2, %21
  %23 = load %struct.regmap*, %struct.regmap** %4, align 8
  %24 = getelementptr inbounds %struct.regmap, %struct.regmap* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.regmap*, %struct.regmap** %4, align 8
  %26 = getelementptr inbounds %struct.regmap, %struct.regmap* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.regmap*, %struct.regmap** %4, align 8
  %29 = getelementptr inbounds %struct.regmap, %struct.regmap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %27, %31
  %33 = add nsw i64 %32, 3
  %34 = load %struct.regmap*, %struct.regmap** %4, align 8
  %35 = getelementptr inbounds %struct.regmap, %struct.regmap* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %11, %3
  ret void
}

declare dso_local i64 @regmap_calc_reg_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
