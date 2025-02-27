; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_execute_stack_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_execute_stack_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.dwarf_expr_context = type { i64, i32, i32, i32, i32 (%struct.frame_info*, i32)*, %struct.frame_info* }

@read_mem = common dso_local global i32 0, align 4
@no_get_frame_base = common dso_local global i32 0, align 4
@no_get_tls_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.frame_info*, i32)* @execute_stack_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_stack_op(i8* %0, i32 %1, %struct.frame_info* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.frame_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dwarf_expr_context*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.frame_info* %2, %struct.frame_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call %struct.dwarf_expr_context* (...) @new_dwarf_expr_context()
  store %struct.dwarf_expr_context* %11, %struct.dwarf_expr_context** %9, align 8
  %12 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %13 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %9, align 8
  %14 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %13, i32 0, i32 5
  store %struct.frame_info* %12, %struct.frame_info** %14, align 8
  %15 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %9, align 8
  %16 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %15, i32 0, i32 4
  store i32 (%struct.frame_info*, i32)* @read_reg, i32 (%struct.frame_info*, i32)** %16, align 8
  %17 = load i32, i32* @read_mem, align 4
  %18 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %9, align 8
  %19 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @no_get_frame_base, align 4
  %21 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %9, align 8
  %22 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @no_get_tls_address, align 4
  %24 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %9, align 8
  %25 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %9, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dwarf_expr_push(%struct.dwarf_expr_context* %26, i32 %27)
  %29 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %9, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dwarf_expr_eval(%struct.dwarf_expr_context* %29, i8* %30, i32 %31)
  %33 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %9, align 8
  %34 = call i32 @dwarf_expr_fetch(%struct.dwarf_expr_context* %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %9, align 8
  %36 = getelementptr inbounds %struct.dwarf_expr_context, %struct.dwarf_expr_context* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %4
  %40 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @read_reg(%struct.frame_info* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %39, %4
  %44 = load %struct.dwarf_expr_context*, %struct.dwarf_expr_context** %9, align 8
  %45 = call i32 @free_dwarf_expr_context(%struct.dwarf_expr_context* %44)
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local %struct.dwarf_expr_context* @new_dwarf_expr_context(...) #1

declare dso_local i32 @read_reg(%struct.frame_info*, i32) #1

declare dso_local i32 @dwarf_expr_push(%struct.dwarf_expr_context*, i32) #1

declare dso_local i32 @dwarf_expr_eval(%struct.dwarf_expr_context*, i8*, i32) #1

declare dso_local i32 @dwarf_expr_fetch(%struct.dwarf_expr_context*, i32) #1

declare dso_local i32 @free_dwarf_expr_context(%struct.dwarf_expr_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
