; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_function_base_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_function_base_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACHO_DYNAMIC_NO_PIC_P = common dso_local global i32 0, align 4
@function_base = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"<pic base>\00", align 1
@current_function_uses_pic_offset_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @machopic_function_base_name() #0 {
  %1 = load i32, i32* @MACHO_DYNAMIC_NO_PIC_P, align 4
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @gcc_assert(i32 %4)
  %6 = load i8*, i8** @function_base, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i64 @ggc_alloc_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 11)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @function_base, align 8
  br label %11

11:                                               ; preds = %8, %0
  store i32 1, i32* @current_function_uses_pic_offset_table, align 4
  %12 = load i8*, i8** @function_base, align 8
  ret i8* %12
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @ggc_alloc_string(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
