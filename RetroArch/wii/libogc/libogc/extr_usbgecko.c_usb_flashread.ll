; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_usbgecko.c_usb_flashread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_usbgecko.c_usb_flashread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_flashread(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @__usbgecko_exi_wait(i32 %13)
  br label %15

15:                                               ; preds = %24, %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %8, align 8
  %21 = icmp ne i64 %19, 0
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %10, align 8
  %30 = ptrtoint i32* %28 to i32
  %31 = call i32 @__flashreadcommand(i32 %25, i32 %26, i32 %30)
  store i32 %31, i32* %9, align 4
  br label %15

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @EXI_Unlock(i32 %33)
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @__usbgecko_exi_wait(i32) #1

declare dso_local i32 @__flashreadcommand(i32, i32, i32) #1

declare dso_local i32 @EXI_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
