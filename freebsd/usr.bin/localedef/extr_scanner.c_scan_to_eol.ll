; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_scan_to_eol.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_scanner.c_scan_to_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"missing newline\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scan_to_eol() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = call i32 (...) @scanc()
  store i32 %3, i32* %1, align 4
  %4 = icmp ne i32 %3, 10
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @EOF, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = call i32 @errf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %17

11:                                               ; preds = %5
  br label %2

12:                                               ; preds = %2
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 10
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  br label %17

17:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @scanc(...) #1

declare dso_local i32 @errf(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
