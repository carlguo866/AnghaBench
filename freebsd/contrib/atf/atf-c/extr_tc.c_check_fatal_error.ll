; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_check_fatal_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_check_fatal_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"FATAL ERROR: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_fatal_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_fatal_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @atf_is_error(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %10 = call i32 @atf_error_format(i32 %8, i8* %9, i32 1024)
  %11 = load i32, i32* @stderr, align 4
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %13 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @atf_error_free(i32 %14)
  %16 = call i32 (...) @abort() #3
  unreachable

17:                                               ; preds = %1
  ret void
}

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_error_format(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @atf_error_free(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
