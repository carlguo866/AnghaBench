; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_usbgecko.c_usb_sendbuffer_safe_ex.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_usbgecko.c_usb_sendbuffer_safe_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_sendbuffer_safe_ex(i64 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %10, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @__usbgecko_exi_wait(i64 %15)
  br label %17

17:                                               ; preds = %47, %4
  %18 = load i64, i64* %10, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @__usb_checksend(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @__usb_sendbyte(i64 %25, i8 signext %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %48

32:                                               ; preds = %24
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %32, %20
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %48

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %37
  br label %17

48:                                               ; preds = %45, %31, %17
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @EXI_Unlock(i64 %49)
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %10, align 8
  %54 = sub nsw i64 %52, %53
  %55 = trunc i64 %54 to i32
  ret i32 %55
}

declare dso_local i32 @__usbgecko_exi_wait(i64) #1

declare dso_local i64 @__usb_checksend(i64) #1

declare dso_local i64 @__usb_sendbyte(i64, i8 signext) #1

declare dso_local i32 @EXI_Unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
