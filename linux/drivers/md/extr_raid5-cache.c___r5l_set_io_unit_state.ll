; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c___r5l_set_io_unit_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c___r5l_set_io_unit_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_io_unit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_io_unit*, i32)* @__r5l_set_io_unit_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__r5l_set_io_unit_state(%struct.r5l_io_unit* %0, i32 %1) #0 {
  %3 = alloca %struct.r5l_io_unit*, align 8
  %4 = alloca i32, align 4
  store %struct.r5l_io_unit* %0, %struct.r5l_io_unit** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %3, align 8
  %6 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp uge i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %3, align 8
  %17 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
