; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_put_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_put_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.module* }
%struct.module = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_put_phy(%struct.usb_phy* %0) #0 {
  %2 = alloca %struct.usb_phy*, align 8
  %3 = alloca %struct.module*, align 8
  store %struct.usb_phy* %0, %struct.usb_phy** %2, align 8
  %4 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %5 = icmp ne %struct.usb_phy* %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %8 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.module*, %struct.module** %12, align 8
  store %struct.module* %13, %struct.module** %3, align 8
  %14 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %15 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @put_device(%struct.TYPE_4__* %16)
  %18 = load %struct.module*, %struct.module** %3, align 8
  %19 = call i32 @module_put(%struct.module* %18)
  br label %20

20:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
