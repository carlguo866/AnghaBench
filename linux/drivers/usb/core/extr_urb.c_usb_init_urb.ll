; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_urb.c_usb_init_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_urb.c_usb_init_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_init_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %3 = load %struct.urb*, %struct.urb** %2, align 8
  %4 = icmp ne %struct.urb* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = call i32 @memset(%struct.urb* %6, i32 0, i32 8)
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 1
  %10 = call i32 @kref_init(i32* %9)
  %11 = load %struct.urb*, %struct.urb** %2, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 0
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @memset(%struct.urb*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
