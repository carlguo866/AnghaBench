; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/extr_fatten.c_get_fattime.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/extr_fatten.c_get_fattime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }
%union.FatTime = type { %struct.anon }
%struct.anon = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_fattime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tm*, align 8
  %3 = alloca %union.FatTime, align 4
  %4 = call i32 @time(i32* %1)
  %5 = call %struct.tm* @localtime(i32* %1)
  store %struct.tm* %5, %struct.tm** %2, align 8
  %6 = bitcast %union.FatTime* %3 to %struct.anon*
  %7 = bitcast %struct.anon* %6 to i32*
  %8 = load %struct.tm*, %struct.tm** %2, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 2
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %11, 31
  %14 = and i32 %12, -32
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = bitcast %struct.anon* %6 to i32*
  %17 = load %struct.tm*, %struct.tm** %2, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %16, align 4
  %21 = and i32 %19, 63
  %22 = shl i32 %21, 5
  %23 = and i32 %20, -2017
  %24 = or i32 %23, %22
  store i32 %24, i32* %16, align 4
  %25 = bitcast %struct.anon* %6 to i32*
  %26 = load %struct.tm*, %struct.tm** %2, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %25, align 4
  %30 = and i32 %28, 31
  %31 = shl i32 %30, 11
  %32 = and i32 %29, -63489
  %33 = or i32 %32, %31
  store i32 %33, i32* %25, align 4
  %34 = bitcast %struct.anon* %6 to i32*
  %35 = load %struct.tm*, %struct.tm** %2, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %34, align 4
  %39 = and i32 %37, 31
  %40 = shl i32 %39, 16
  %41 = and i32 %38, -2031617
  %42 = or i32 %41, %40
  store i32 %42, i32* %34, align 4
  %43 = bitcast %struct.anon* %6 to i32*
  %44 = load %struct.tm*, %struct.tm** %2, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %43, align 4
  %49 = and i32 %47, 15
  %50 = shl i32 %49, 21
  %51 = and i32 %48, -31457281
  %52 = or i32 %51, %50
  store i32 %52, i32* %43, align 4
  %53 = bitcast %struct.anon* %6 to i32*
  %54 = load %struct.tm*, %struct.tm** %2, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 80
  %58 = load i32, i32* %53, align 4
  %59 = and i32 %57, 127
  %60 = shl i32 %59, 25
  %61 = and i32 %58, 33554431
  %62 = or i32 %61, %60
  store i32 %62, i32* %53, align 4
  %63 = bitcast %union.FatTime* %3 to i32*
  %64 = load i32, i32* %63, align 4
  ret i32 %64
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
