; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_err_sendstring.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_err_sendstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @err_sendstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @err_sendstring(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = call i64 (...) @in_error_recursion_trouble()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @pq_send_ascii_string(i32 %8, i8* %9)
  br label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @pq_sendstring(i32 %12, i8* %13)
  br label %15

15:                                               ; preds = %11, %7
  ret void
}

declare dso_local i64 @in_error_recursion_trouble(...) #1

declare dso_local i32 @pq_send_ascii_string(i32, i8*) #1

declare dso_local i32 @pq_sendstring(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
