; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_auxv.c__initialize_auxv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_auxv.c__initialize_auxv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"auxv\00", align 1
@info_auxv_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [114 x i8] c"Display the inferior's auxiliary vector.\0AThis is information provided by the operating system at program startup.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_auxv() #0 {
  %1 = load i32, i32* @info_auxv_command, align 4
  %2 = call i32 @add_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %1, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @add_info(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
