; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_table_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_table_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"table name %s is invalid\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to swap table: check types\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to swap table: check limits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @table_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_swap(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @table_check_name(i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @EX_USAGE, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i32, i8*, ...) @errx(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @table_do_swap(i32* %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %28

19:                                               ; preds = %13
  %20 = load i32, i32* @errno, align 4
  switch i32 %20, label %27 [
    i32 128, label %21
    i32 129, label %24
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @EX_USAGE, align 4
  %23 = call i32 (i32, i8*, ...) @errx(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %21
  %25 = load i32, i32* @EX_USAGE, align 4
  %26 = call i32 (i32, i8*, ...) @errx(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @table_check_name(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @table_do_swap(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
