; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/ut47/extr_matrix.c_read_cols.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/40percentclub/ut47/extr_matrix.c_read_cols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIND = common dso_local global i32 0, align 4
@PINE = common dso_local global i32 0, align 4
@PINB = common dso_local global i32 0, align 4
@PINF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_cols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cols() #0 {
  %1 = load i32, i32* @PIND, align 4
  %2 = and i32 %1, 128
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i32 0, i32 1
  %6 = load i32, i32* @PINE, align 4
  %7 = and i32 %6, 64
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 2
  %11 = or i32 %5, %10
  %12 = load i32, i32* @PINB, align 4
  %13 = and i32 %12, 16
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 4
  %17 = or i32 %11, %16
  %18 = load i32, i32* @PINB, align 4
  %19 = and i32 %18, 32
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 8
  %23 = or i32 %17, %22
  %24 = load i32, i32* @PINB, align 4
  %25 = and i32 %24, 64
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 16
  %29 = or i32 %23, %28
  %30 = load i32, i32* @PINB, align 4
  %31 = and i32 %30, 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 32
  %35 = or i32 %29, %34
  %36 = load i32, i32* @PINB, align 4
  %37 = and i32 %36, 8
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 64
  %41 = or i32 %35, %40
  %42 = load i32, i32* @PINB, align 4
  %43 = and i32 %42, 2
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 128
  %47 = or i32 %41, %46
  %48 = load i32, i32* @PINF, align 4
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 256
  %53 = or i32 %47, %52
  %54 = load i32, i32* @PINF, align 4
  %55 = and i32 %54, 64
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 0, i32 512
  %59 = or i32 %53, %58
  %60 = load i32, i32* @PINF, align 4
  %61 = and i32 %60, 32
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 1024
  %65 = or i32 %59, %64
  %66 = load i32, i32* @PINF, align 4
  %67 = and i32 %66, 16
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 0, i32 2048
  %71 = or i32 %65, %70
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
