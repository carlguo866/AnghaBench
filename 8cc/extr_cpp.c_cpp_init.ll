; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_cpp_init.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_cpp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpp_init() #0 {
  %1 = load i32, i32* @LC_ALL, align 4
  %2 = call i32 @setlocale(i32 %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @init_keywords()
  %4 = call i32 (...) @init_now()
  %5 = call i32 (...) @init_predefined_macros()
  ret void
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @init_keywords(...) #1

declare dso_local i32 @init_now(...) #1

declare dso_local i32 @init_predefined_macros(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
