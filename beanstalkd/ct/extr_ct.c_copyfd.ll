; ModuleID = '/home/carl/AnghaBench/beanstalkd/ct/extr_ct.c_copyfd.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/ct/extr_ct.c_copyfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @copyfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copyfd(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [1024 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %10 = call i64 @read(i32 %8, i8* %9, i32 1024)
  store i64 %10, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %14 = load i64, i64* %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @fwrite(i8* %13, i32 1, i64 %14, i32* %15)
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @die(i32 3, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %12
  br label %7

23:                                               ; preds = %7
  ret void
}

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @die(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
