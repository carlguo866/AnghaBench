; ModuleID = '/home/carl/AnghaBench/streem/src/extr_string.c_strm_str_intern.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_string.c_strm_str_intern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strm_event_loop_started = common dso_local global i32 0, align 4
@sym_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strm_str_intern(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* @strm_event_loop_started, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @str_intern(i8* %14, i32 %15, i32 0)
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %2
  %18 = call i32 @pthread_mutex_lock(i32* @sym_mutex)
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @str_intern(i8* %19, i32 %20, i32 0)
  store i32 %21, i32* %6, align 4
  %22 = call i32 @pthread_mutex_unlock(i32* @sym_mutex)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @str_intern(i8*, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
