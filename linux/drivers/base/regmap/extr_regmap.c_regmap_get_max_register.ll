; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_get_max_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_get_max_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_get_max_register(%struct.regmap* %0) #0 {
  %2 = alloca %struct.regmap*, align 8
  store %struct.regmap* %0, %struct.regmap** %2, align 8
  %3 = load %struct.regmap*, %struct.regmap** %2, align 8
  %4 = getelementptr inbounds %struct.regmap, %struct.regmap* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.regmap*, %struct.regmap** %2, align 8
  %9 = getelementptr inbounds %struct.regmap, %struct.regmap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i32 [ %10, %7 ], [ %13, %11 ]
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
