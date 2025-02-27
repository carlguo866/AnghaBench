; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maestro.c_radio_bits_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maestro.c_radio_bits_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maestro = type { i32, i32 }

@IO_MASK = common dso_local global i32 0, align 4
@IO_DIR = common dso_local global i32 0, align 4
@STR_DATA = common dso_local global i32 0, align 4
@STR_CLK = common dso_local global i32 0, align 4
@STR_WREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.maestro*, i32)* @radio_bits_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radio_bits_set(%struct.maestro* %0, i32 %1) #0 {
  %3 = alloca %struct.maestro*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.maestro* %0, %struct.maestro** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.maestro*, %struct.maestro** %3, align 8
  %11 = getelementptr inbounds %struct.maestro, %struct.maestro* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IO_MASK, align 4
  %15 = add nsw i32 %13, %14
  %16 = call i32 @inw(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IO_DIR, align 4
  %19 = add nsw i32 %17, %18
  %20 = call i32 @inw(i32 %19)
  %21 = load i32, i32* @STR_DATA, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load i32, i32* @STR_CLK, align 4
  %25 = load i32, i32* @STR_WREN, align 4
  %26 = or i32 %24, %25
  %27 = or i32 %23, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @STR_DATA, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IO_DIR, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @outw(i32 %30, i32 %33)
  %35 = load i32, i32* @STR_DATA, align 4
  %36 = load i32, i32* @STR_CLK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @STR_WREN, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @IO_MASK, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @outw(i32 %40, i32 %43)
  %45 = call i32 @udelay(i32 16)
  store i32 25, i32* %6, align 4
  br label %46

46:                                               ; preds = %72, %2
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 18
  %52 = load i32, i32* @STR_DATA, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @STR_WREN, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %4, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @outw(i32 %58, i32 %59)
  %61 = call i32 @udelay(i32 2)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @STR_CLK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @outw(i32 %64, i32 %65)
  %67 = call i32 @udelay(i32 2)
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @outw(i32 %68, i32 %69)
  %71 = call i32 @udelay(i32 4)
  br label %72

72:                                               ; preds = %49
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  br label %46

75:                                               ; preds = %46
  %76 = load %struct.maestro*, %struct.maestro** %3, align 8
  %77 = getelementptr inbounds %struct.maestro, %struct.maestro* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @outw(i32 0, i32 %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = call i32 @udelay(i32 4)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @IO_MASK, align 4
  %88 = add nsw i32 %86, %87
  %89 = call i32 @outw(i32 %85, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @IO_DIR, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @outw(i32 %90, i32 %93)
  %95 = call i32 @msleep(i32 125)
  ret void
}

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
