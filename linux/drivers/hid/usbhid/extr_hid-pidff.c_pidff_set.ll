; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_usage = type { i32*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"calculated from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pidff_usage*, i32)* @pidff_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pidff_set(%struct.pidff_usage* %0, i32 %1) #0 {
  %3 = alloca %struct.pidff_usage*, align 8
  %4 = alloca i32, align 4
  store %struct.pidff_usage* %0, %struct.pidff_usage** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.pidff_usage*, %struct.pidff_usage** %3, align 8
  %7 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pidff_rescale(i32 %5, i32 65535, i32 %8)
  %10 = load %struct.pidff_usage*, %struct.pidff_usage** %3, align 8
  %11 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.pidff_usage*, %struct.pidff_usage** %3, align 8
  %16 = getelementptr inbounds %struct.pidff_usage, %struct.pidff_usage* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19)
  ret void
}

declare dso_local i32 @pidff_rescale(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
