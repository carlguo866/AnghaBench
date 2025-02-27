; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_rtc_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_rtc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_rtc_data = type { i32, i32 }

@VM_RTC_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_rtc_read(%struct.vmctx* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.vmctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vm_rtc_data, align 4
  %8 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = call i32 @bzero(%struct.vm_rtc_data* %7, i32 8)
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.vm_rtc_data, %struct.vm_rtc_data* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %13 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VM_RTC_READ, align 4
  %16 = call i32 @ioctl(i32 %14, i32 %15, %struct.vm_rtc_data* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.vm_rtc_data, %struct.vm_rtc_data* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* %8, align 4
  ret i32 %24
}

declare dso_local i32 @bzero(%struct.vm_rtc_data*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.vm_rtc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
