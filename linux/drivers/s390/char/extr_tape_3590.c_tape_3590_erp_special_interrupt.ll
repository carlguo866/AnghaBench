; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_erp_special_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_erp_special_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i32 }
%struct.irb = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*)* @tape_3590_erp_special_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_erp_special_interrupt(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape_request*, align 8
  %6 = alloca %struct.irb*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape_request* %1, %struct.tape_request** %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %7 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %8 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %9 = load %struct.irb*, %struct.irb** %6, align 8
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  %12 = call i32 @tape_3590_erp_basic(%struct.tape_device* %7, %struct.tape_request* %8, %struct.irb* %9, i32 %11)
  ret i32 %12
}

declare dso_local i32 @tape_3590_erp_basic(%struct.tape_device*, %struct.tape_request*, %struct.irb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
