; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_commands.c_find_handler_ex.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_commands.c_find_handler_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.cmd_handler = type { i32 }

@config = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_handler* (i8*, %struct.cmd_handler*, i64, %struct.cmd_handler*, i64, %struct.cmd_handler*, i64)* @find_handler_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_handler* @find_handler_ex(i8* %0, %struct.cmd_handler* %1, i64 %2, %struct.cmd_handler* %3, i64 %4, %struct.cmd_handler* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cmd_handler*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cmd_handler*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cmd_handler*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.cmd_handler*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.cmd_handler* %1, %struct.cmd_handler** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.cmd_handler* %3, %struct.cmd_handler** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.cmd_handler* %5, %struct.cmd_handler** %13, align 8
  store i64 %6, i64* %14, align 8
  store %struct.cmd_handler* null, %struct.cmd_handler** %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %7
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.cmd_handler*, %struct.cmd_handler** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call %struct.cmd_handler* @find_handler(i8* %21, %struct.cmd_handler* %22, i64 %23)
  store %struct.cmd_handler* %24, %struct.cmd_handler** %15, align 8
  br label %36

25:                                               ; preds = %7
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.cmd_handler*, %struct.cmd_handler** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call %struct.cmd_handler* @find_handler(i8* %31, %struct.cmd_handler* %32, i64 %33)
  store %struct.cmd_handler* %34, %struct.cmd_handler** %15, align 8
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %20
  %37 = load %struct.cmd_handler*, %struct.cmd_handler** %15, align 8
  %38 = icmp ne %struct.cmd_handler* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load %struct.cmd_handler*, %struct.cmd_handler** %15, align 8
  br label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.cmd_handler*, %struct.cmd_handler** %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = call %struct.cmd_handler* @find_handler(i8* %42, %struct.cmd_handler* %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %39
  %47 = phi %struct.cmd_handler* [ %40, %39 ], [ %45, %41 ]
  ret %struct.cmd_handler* %47
}

declare dso_local %struct.cmd_handler* @find_handler(i8*, %struct.cmd_handler*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
