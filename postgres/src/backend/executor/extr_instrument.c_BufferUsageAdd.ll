; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_instrument.c_BufferUsageAdd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_instrument.c_BufferUsageAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*)* @BufferUsageAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BufferUsageAdd(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 11
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 11
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 10
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 10
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 9
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @INSTR_TIME_ADD(i32 %77, i32 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @INSTR_TIME_ADD(i32 %84, i32 %87)
  ret void
}

declare dso_local i32 @INSTR_TIME_ADD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
