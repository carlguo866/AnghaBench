; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_component_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_component_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_component = type { i32, %struct.device }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enclosure_component_register(%struct.enclosure_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enclosure_component*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.enclosure_component* %0, %struct.enclosure_component** %3, align 8
  %6 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  %7 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @device_register(%struct.device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.enclosure_component*, %struct.enclosure_component** %3, align 8
  %14 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @put_device(%struct.device* %15)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
