; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote.h_wiimote_cmd_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote.h_wiimote_cmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32, i32)* @wiimote_cmd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_cmd_set(%struct.wiimote_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wiimote_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %8 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i32 @reinit_completion(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %13 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %17 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  ret void
}

declare dso_local i32 @reinit_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
