; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_usb.c_i1480_usb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_usb.c_i1480_usb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480_usb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i1480_usb*)* @i1480_usb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i1480_usb_init(%struct.i1480_usb* %0) #0 {
  %2 = alloca %struct.i1480_usb*, align 8
  store %struct.i1480_usb* %0, %struct.i1480_usb** %2, align 8
  %3 = load %struct.i1480_usb*, %struct.i1480_usb** %2, align 8
  %4 = getelementptr inbounds %struct.i1480_usb, %struct.i1480_usb* %3, i32 0, i32 0
  %5 = call i32 @i1480_init(i32* %4)
  ret void
}

declare dso_local i32 @i1480_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
