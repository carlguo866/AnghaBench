; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_sigabrt_child_handler.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_sigabrt_child_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"SIGABRT caught, terminating program\0A\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigabrt_child_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @kwrite(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 36)
  %4 = call i32 (...) @print_backtrace()
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SIG_DFL, align 4
  %7 = call i32 @signal(i32 %5, i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @raise(i32 %8)
  ret void
}

declare dso_local i32 @kwrite(i32, i8*, i32) #1

declare dso_local i32 @print_backtrace(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
