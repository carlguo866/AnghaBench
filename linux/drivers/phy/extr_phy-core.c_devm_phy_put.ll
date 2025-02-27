; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_devm_phy_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_devm_phy_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.phy = type { i32 }

@devm_phy_release = common dso_local global i32 0, align 4
@devm_phy_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"couldn't find PHY resource\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devm_phy_put(%struct.device* %0, %struct.phy* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.phy*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.phy* %1, %struct.phy** %4, align 8
  %6 = load %struct.phy*, %struct.phy** %4, align 8
  %7 = icmp ne %struct.phy* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %18

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load i32, i32* @devm_phy_release, align 4
  %12 = load i32, i32* @devm_phy_match, align 4
  %13 = load %struct.phy*, %struct.phy** %4, align 8
  %14 = call i32 @devres_destroy(%struct.device* %10, i32 %11, i32 %12, %struct.phy* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_WARN_ONCE(%struct.device* %15, i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @devres_destroy(%struct.device*, i32, i32, %struct.phy*) #1

declare dso_local i32 @dev_WARN_ONCE(%struct.device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
