; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_init_child_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_init_child_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chipc_init_child_resource(%struct.resource* %0, %struct.resource* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %6, align 8
  store %struct.resource* %1, %struct.resource** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.resource*, %struct.resource** %7, align 8
  %16 = call i64 @rman_get_virtual(%struct.resource* %15)
  store i64 %16, i64* %13, align 8
  %17 = load %struct.resource*, %struct.resource** %7, align 8
  %18 = call i32 @rman_get_bustag(%struct.resource* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.resource*, %struct.resource** %7, align 8
  %20 = call i32 @rman_get_bushandle(%struct.resource* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %13, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %13, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @bus_space_subregion(i32 %24, i32 %25, i64 %26, i64 %27, i32* %11)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  br label %44

33:                                               ; preds = %4
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = load i64, i64* %13, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @rman_set_virtual(%struct.resource* %34, i8* %36)
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @rman_set_bustag(%struct.resource* %38, i32 %39)
  %41 = load %struct.resource*, %struct.resource** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @rman_set_bushandle(%struct.resource* %41, i32 %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %33, %31
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @rman_get_virtual(%struct.resource*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @bus_space_subregion(i32, i32, i64, i64, i32*) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i8*) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
