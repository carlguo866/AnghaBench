; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs-poll.c_touch_file.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs-poll.c_touch_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@touch_file.count = internal global i32 0, align 4
@FIXTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @touch_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @touch_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @FIXTURE, align 4
  %6 = call i32* @fopen(i32 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %3, align 8
  %7 = call i32 @ASSERT(i32* %6)
  %8 = load i32, i32* @touch_file.count, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @touch_file.count, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %14, %1
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @fputc(i8 signext 42, i32* %15)
  br label %10

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @fclose(i32* %18)
  ret void
}

declare dso_local i32 @ASSERT(i32*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
