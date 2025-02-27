; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_keyed_sha1_loop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_keyed_sha1_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ah_algorithm_state = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"ah_keyed_sha1_loop: what?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ah_algorithm_state*, i64, i64)* @ah_keyed_sha1_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ah_keyed_sha1_loop(%struct.ah_algorithm_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ah_algorithm_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.ah_algorithm_state* %0, %struct.ah_algorithm_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %9 = icmp ne %struct.ah_algorithm_state* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %12 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %3
  %16 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load %struct.ah_algorithm_state*, %struct.ah_algorithm_state** %4, align 8
  %19 = getelementptr inbounds %struct.ah_algorithm_state, %struct.ah_algorithm_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @SHA1Update(i32* %22, i64 %23, i64 %24)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @SHA1Update(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
