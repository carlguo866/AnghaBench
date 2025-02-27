; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/kqueue/read/extr_t_file.c_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/kqueue/read/extr_t_file.c_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NLINES = common dso_local global i32 0, align 4
@FILENAME = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"open()\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"foo\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"write()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @sleep(i32 1)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %32, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @NLINES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load i32, i32* @FILENAME, align 4
  %11 = load i32, i32* @O_WRONLY, align 4
  %12 = load i32, i32* @O_APPEND, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open(i32 %10, i32 %13, i32 420)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  %19 = call i32 @err(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %9
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @write(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 @err(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @close(i32 %29)
  %31 = call i32 @sleep(i32 1)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %5

35:                                               ; preds = %5
  %36 = call i32 @_exit(i32 0) #3
  unreachable
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
