; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_watch.c_db_list_watchpoints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_watch.c_db_list_watchpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, %struct.TYPE_2__* }

@db_watchpoint_list = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"No watchpoints set\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c" Map                Address          Size\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s%16p  %16lx  %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @db_list_watchpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_list_watchpoints() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = load i64, i64* @db_watchpoint_list, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %40

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i64, i64* @db_watchpoint_list, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %1, align 8
  br label %10

10:                                               ; preds = %36, %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @db_map_current(i64 %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %20, i8* %24, i64 %27, i64 %34)
  br label %36

36:                                               ; preds = %13
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %1, align 8
  br label %10

40:                                               ; preds = %4, %10
  ret void
}

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i64 @db_map_current(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
