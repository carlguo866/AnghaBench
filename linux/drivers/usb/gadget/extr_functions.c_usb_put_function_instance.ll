; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_functions.c_usb_put_function_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_functions.c_usb_put_function_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function_instance = type { i32 (%struct.usb_function_instance*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.module* }
%struct.module = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_put_function_instance(%struct.usb_function_instance* %0) #0 {
  %2 = alloca %struct.usb_function_instance*, align 8
  %3 = alloca %struct.module*, align 8
  store %struct.usb_function_instance* %0, %struct.usb_function_instance** %2, align 8
  %4 = load %struct.usb_function_instance*, %struct.usb_function_instance** %2, align 8
  %5 = icmp ne %struct.usb_function_instance* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  %8 = load %struct.usb_function_instance*, %struct.usb_function_instance** %2, align 8
  %9 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.module*, %struct.module** %11, align 8
  store %struct.module* %12, %struct.module** %3, align 8
  %13 = load %struct.usb_function_instance*, %struct.usb_function_instance** %2, align 8
  %14 = getelementptr inbounds %struct.usb_function_instance, %struct.usb_function_instance* %13, i32 0, i32 0
  %15 = load i32 (%struct.usb_function_instance*)*, i32 (%struct.usb_function_instance*)** %14, align 8
  %16 = load %struct.usb_function_instance*, %struct.usb_function_instance** %2, align 8
  %17 = call i32 %15(%struct.usb_function_instance* %16)
  %18 = load %struct.module*, %struct.module** %3, align 8
  %19 = call i32 @module_put(%struct.module* %18)
  br label %20

20:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
