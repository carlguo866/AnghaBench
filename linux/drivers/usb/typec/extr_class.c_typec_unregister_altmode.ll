; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_unregister_altmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_unregister_altmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @typec_unregister_altmode(%struct.typec_altmode* %0) #0 {
  %2 = alloca %struct.typec_altmode*, align 8
  store %struct.typec_altmode* %0, %struct.typec_altmode** %2, align 8
  %3 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %4 = call i64 @IS_ERR_OR_NULL(%struct.typec_altmode* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %16

7:                                                ; preds = %1
  %8 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %9 = call %struct.TYPE_2__* @to_altmode(%struct.typec_altmode* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @typec_mux_put(i32 %11)
  %13 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %14 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %13, i32 0, i32 0
  %15 = call i32 @device_unregister(i32* %14)
  br label %16

16:                                               ; preds = %7, %6
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.typec_altmode*) #1

declare dso_local i32 @typec_mux_put(i32) #1

declare dso_local %struct.TYPE_2__* @to_altmode(%struct.typec_altmode*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
