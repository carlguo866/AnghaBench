; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-orion5x/extr_db88f5281-setup.c_db88f5281_7seg_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-orion5x/extr_db88f5281-setup.c_db88f5281_7seg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@db88f5281_7seg_event.count = internal global i32 0, align 4
@db88f5281_7seg = common dso_local global i64 0, align 8
@db88f5281_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @db88f5281_7seg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db88f5281_7seg_event(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %3 = load i64, i64* @db88f5281_7seg, align 8
  %4 = load i32, i32* @db88f5281_7seg_event.count, align 4
  %5 = shl i32 %4, 4
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %3, %6
  %8 = call i32 @writel(i32 0, i64 %7)
  %9 = load i32, i32* @db88f5281_7seg_event.count, align 4
  %10 = add nsw i32 %9, 1
  %11 = and i32 %10, 7
  store i32 %11, i32* @db88f5281_7seg_event.count, align 4
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i32, i32* @HZ, align 4
  %14 = mul nsw i32 2, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i32 @mod_timer(i32* @db88f5281_timer, i64 %16)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
