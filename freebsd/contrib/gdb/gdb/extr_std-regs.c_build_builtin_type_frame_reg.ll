; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_std-regs.c_build_builtin_type_frame_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_std-regs.c_build_builtin_type_frame_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@builtin_type_frame_reg = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@builtin_type_void_data_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @build_builtin_type_frame_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_builtin_type_frame_reg() #0 {
  %1 = load i32*, i32** @builtin_type_frame_reg, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %5 = call i32* @init_composite_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32* %5, i32** @builtin_type_frame_reg, align 8
  %6 = load i32*, i32** @builtin_type_frame_reg, align 8
  %7 = load i32, i32* @builtin_type_void_data_ptr, align 4
  %8 = call i32 @append_composite_type_field(i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32* @init_composite_type(i8*, i32) #1

declare dso_local i32 @append_composite_type_field(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
