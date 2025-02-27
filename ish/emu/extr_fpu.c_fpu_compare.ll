; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_fpu.c_fpu_compare.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_fpu.c_fpu_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_state = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_state*, i32)* @fpu_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpu_compare(%struct.cpu_state* %0, i32 %1) #0 {
  %3 = alloca %struct.cpu_state*, align 8
  %4 = alloca i32, align 4
  store %struct.cpu_state* %0, %struct.cpu_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %6 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %5, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %8 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = call i32 @ST(i32 0)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @f80_lt(i32 %9, i32 %10)
  %12 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %13 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = call i32 @ST(i32 0)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @f80_eq(i32 %14, i32 %15)
  %17 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %18 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = call i32 @ST(i32 0)
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @f80_uncomparable(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %25 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %24, i32 0, i32 3
  store i32 1, i32* %25, align 4
  %26 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %27 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %29 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %28, i32 0, i32 2
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @f80_lt(i32, i32) #1

declare dso_local i32 @ST(i32) #1

declare dso_local i32 @f80_eq(i32, i32) #1

declare dso_local i64 @f80_uncomparable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
