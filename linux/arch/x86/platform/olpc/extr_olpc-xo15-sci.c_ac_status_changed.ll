; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo15-sci.c_ac_status_changed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo15-sci.c_ac_status_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"olpc-ac\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ac_status_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac_status_changed() #0 {
  %1 = alloca %struct.power_supply*, align 8
  %2 = call %struct.power_supply* @power_supply_get_by_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.power_supply* %2, %struct.power_supply** %1, align 8
  %3 = load %struct.power_supply*, %struct.power_supply** %1, align 8
  %4 = icmp ne %struct.power_supply* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load %struct.power_supply*, %struct.power_supply** %1, align 8
  %7 = call i32 @power_supply_changed(%struct.power_supply* %6)
  %8 = load %struct.power_supply*, %struct.power_supply** %1, align 8
  %9 = call i32 @power_supply_put(%struct.power_supply* %8)
  br label %10

10:                                               ; preds = %5, %0
  ret void
}

declare dso_local %struct.power_supply* @power_supply_get_by_name(i8*) #1

declare dso_local i32 @power_supply_changed(%struct.power_supply*) #1

declare dso_local i32 @power_supply_put(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
