; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_make_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_make_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i64, i64, %struct.demangle_component* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_make_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_make_empty(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %5 = load %struct.d_info*, %struct.d_info** %3, align 8
  %6 = getelementptr inbounds %struct.d_info, %struct.d_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.d_info*, %struct.d_info** %3, align 8
  %9 = getelementptr inbounds %struct.d_info, %struct.d_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp uge i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.d_info*, %struct.d_info** %3, align 8
  %15 = getelementptr inbounds %struct.d_info, %struct.d_info* %14, i32 0, i32 2
  %16 = load %struct.demangle_component*, %struct.demangle_component** %15, align 8
  %17 = load %struct.d_info*, %struct.d_info** %3, align 8
  %18 = getelementptr inbounds %struct.d_info, %struct.d_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %16, i64 %19
  store %struct.demangle_component* %20, %struct.demangle_component** %4, align 8
  %21 = load %struct.d_info*, %struct.d_info** %3, align 8
  %22 = getelementptr inbounds %struct.d_info, %struct.d_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %25, %struct.demangle_component** %2, align 8
  br label %26

26:                                               ; preds = %13, %12
  %27 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
