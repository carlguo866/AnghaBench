; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_xmit_linux.c_r8712_xmit_resource_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_xmit_linux.c_r8712_xmit_resource_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.xmit_buf = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_xmit_resource_free(%struct._adapter* %0, %struct.xmit_buf* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.xmit_buf*, align 8
  %5 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.xmit_buf* %1, %struct.xmit_buf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %36, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %39

9:                                                ; preds = %6
  %10 = load %struct.xmit_buf*, %struct.xmit_buf** %4, align 8
  %11 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %9
  %19 = load %struct.xmit_buf*, %struct.xmit_buf** %4, align 8
  %20 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @usb_kill_urb(i64 %25)
  %27 = load %struct.xmit_buf*, %struct.xmit_buf** %4, align 8
  %28 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @usb_free_urb(i64 %33)
  br label %35

35:                                               ; preds = %18, %9
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %6

39:                                               ; preds = %6
  ret void
}

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @usb_free_urb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
