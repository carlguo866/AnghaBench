; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_midibuf.c_midibuf_message_length.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_midibuf.c_midibuf_message_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@midibuf_message_length.length = internal constant [7 x i32] [i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 3], align 16
@midibuf_message_length.length.1 = internal constant [16 x i32] [i32 -1, i32 2, i32 -1, i32 2, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 -1, i32 1, i32 1], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @midibuf_message_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midibuf_message_length(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp slt i32 %5, 128
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %3, align 4
  br label %28

8:                                                ; preds = %1
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp slt i32 %10, 240
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i8, i8* %2, align 1
  %14 = zext i8 %13 to i32
  %15 = ashr i32 %14, 4
  %16 = sub nsw i32 %15, 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* @midibuf_message_length.length, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %8
  %21 = load i8, i8* %2, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 15
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* @midibuf_message_length.length.1, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %12
  br label %28

28:                                               ; preds = %27, %7
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
