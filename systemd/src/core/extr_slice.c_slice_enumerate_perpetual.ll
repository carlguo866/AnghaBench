; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_slice.c_slice_enumerate_perpetual.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_slice.c_slice_enumerate_perpetual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SPECIAL_ROOT_SLICE = common dso_local global i32 0, align 4
@SPECIAL_SYSTEM_SLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @slice_enumerate_perpetual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slice_enumerate_perpetual(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @assert(i32* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @SPECIAL_ROOT_SLICE, align 4
  %10 = call i32 @slice_make_perpetual(i32* %8, i32 %9, i32** %3)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @manager_owns_host_root_cgroup(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_5__* @SLICE(i32* %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %5, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %17, %13, %1
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @MANAGER_IS_SYSTEM(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @SPECIAL_SYSTEM_SLICE, align 4
  %36 = call i32 @slice_make_perpetual(i32* %34, i32 %35, i32** null)
  br label %37

37:                                               ; preds = %33, %29
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @slice_make_perpetual(i32*, i32, i32**) #1

declare dso_local i64 @manager_owns_host_root_cgroup(i32*) #1

declare dso_local %struct.TYPE_5__* @SLICE(i32*) #1

declare dso_local i64 @MANAGER_IS_SYSTEM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
