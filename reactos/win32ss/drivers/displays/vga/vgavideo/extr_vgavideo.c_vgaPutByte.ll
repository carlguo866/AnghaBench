; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_vgaPutByte.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_vgaPutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xconv = common dso_local global i64* null, align 8
@y80 = common dso_local global i64* null, align 8
@GRA_I = common dso_local global i64 0, align 8
@GRA_D = common dso_local global i64 0, align 8
@vidmem = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgaPutByte(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64*, i64** @xconv, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** @y80, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %12, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* @GRA_I, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @WRITE_PORT_UCHAR(i32 %19, i32 8)
  %21 = load i64, i64* @GRA_D, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @WRITE_PORT_UCHAR(i32 %22, i32 255)
  %24 = load i64, i64* @vidmem, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @WRITE_REGISTER_UCHAR(i64 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @WRITE_PORT_UCHAR(i32, i32) #1

declare dso_local i32 @WRITE_REGISTER_UCHAR(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
