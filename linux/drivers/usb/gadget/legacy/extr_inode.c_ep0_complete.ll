; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep0_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep0_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.dev_data* }
%struct.dev_data = type { i32, i32, i32, i32, i32 }
%struct.usb_request = type { i64, i32, i32* }

@epio_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @ep0_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep0_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.dev_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %8 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %9 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %8, i32 0, i32 0
  %10 = load %struct.dev_data*, %struct.dev_data** %9, align 8
  store %struct.dev_data* %10, %struct.dev_data** %5, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %12 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %11, i32 0, i32 2
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %16 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %2
  %20 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %21 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %26 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %28 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %34 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %36 = call i32 @ep0_readable(%struct.dev_data* %35)
  br label %37

37:                                               ; preds = %32, %2
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %42 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %45 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %44, i32 0, i32 3
  %46 = icmp ne i32* %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %49 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %50 = call i32 @clean_req(%struct.usb_ep* %48, %struct.usb_request* %49)
  br label %51

51:                                               ; preds = %47, %40, %37
  %52 = load i32, i32* @epio_complete, align 4
  %53 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %54 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dev_data*, %struct.dev_data** %5, align 8
  %56 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %55, i32 0, i32 2
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ep0_readable(%struct.dev_data*) #1

declare dso_local i32 @clean_req(%struct.usb_ep*, %struct.usb_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
