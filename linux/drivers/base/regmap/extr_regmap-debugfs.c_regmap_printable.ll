; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-debugfs.c_regmap_printable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-debugfs.c_regmap_printable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32)* @regmap_printable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_printable(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.regmap*, %struct.regmap** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @regmap_precious(%struct.regmap* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load %struct.regmap*, %struct.regmap** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @regmap_readable(%struct.regmap* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load %struct.regmap*, %struct.regmap** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @regmap_cached(%struct.regmap* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %23

22:                                               ; preds = %16, %11
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %21, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @regmap_precious(%struct.regmap*, i32) #1

declare dso_local i32 @regmap_readable(%struct.regmap*, i32) #1

declare dso_local i32 @regmap_cached(%struct.regmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
