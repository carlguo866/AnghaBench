; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_excl.c_nn_excl_term.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_excl.c_nn_excl_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_excl = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_excl_term(%struct.nn_excl* %0) #0 {
  %2 = alloca %struct.nn_excl*, align 8
  store %struct.nn_excl* %0, %struct.nn_excl** %2, align 8
  %3 = load %struct.nn_excl*, %struct.nn_excl** %2, align 8
  %4 = getelementptr inbounds %struct.nn_excl, %struct.nn_excl* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @nn_assert(i32 %8)
  %10 = load %struct.nn_excl*, %struct.nn_excl** %2, align 8
  %11 = getelementptr inbounds %struct.nn_excl, %struct.nn_excl* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @nn_assert(i32 %15)
  %17 = load %struct.nn_excl*, %struct.nn_excl** %2, align 8
  %18 = getelementptr inbounds %struct.nn_excl, %struct.nn_excl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @nn_assert(i32 %22)
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
