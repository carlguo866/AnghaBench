; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_div_long.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_div_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@F_CF = common dso_local global i32 0, align 4
@F_AF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, i64)* @div_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @div_long(%struct.x86emu* %0, i64 %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %9 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 32
  %14 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %15 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %13, %17
  store i32 %18, i32* %5, align 4
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %23 = call i32 @x86emu_intr_raise(%struct.x86emu* %22, i32 8)
  br label %65

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %4, align 8
  %28 = sdiv i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %4, align 8
  %33 = srem i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ugt i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %39 = call i32 @x86emu_intr_raise(%struct.x86emu* %38, i32 8)
  br label %65

40:                                               ; preds = %24
  %41 = load i32, i32* @F_CF, align 4
  %42 = call i32 @CLEAR_FLAG(i32 %41)
  %43 = load i32, i32* @F_AF, align 4
  %44 = call i32 @CLEAR_FLAG(i32 %43)
  %45 = load i32, i32* @F_SF, align 4
  %46 = call i32 @CLEAR_FLAG(i32 %45)
  %47 = load i32, i32* @F_ZF, align 4
  %48 = call i32 @SET_FLAG(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 255
  %51 = call i32 @PARITY(i32 %50)
  %52 = load i32, i32* @F_PF, align 4
  %53 = call i32 @CONDITIONAL_SET_FLAG(i32 %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = trunc i64 %55 to i32
  %57 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %58 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %63 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %40, %37, %21
  ret void
}

declare dso_local i32 @x86emu_intr_raise(%struct.x86emu*, i32) #1

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

declare dso_local i32 @CONDITIONAL_SET_FLAG(i32, i32) #1

declare dso_local i32 @PARITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
