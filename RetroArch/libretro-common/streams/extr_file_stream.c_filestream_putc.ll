; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_file_stream.c_filestream_putc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_file_stream.c_filestream_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filestream_putc(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %6, align 1
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EOF, align 4
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @filestream_write(i32* %14, i8* %6, i32 1)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = trunc i32 %18 to i8
  %20 = zext i8 %19 to i32
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @EOF, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %20, %17 ], [ %22, %21 ]
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @filestream_write(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
