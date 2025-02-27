; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_break.c_db_set_breakpoints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_break.c_db_set_breakpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_3__* }

@db_breakpoints_inserted = common dso_local global i32 0, align 4
@db_breakpoint_list = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_set_breakpoints() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i32, i32* @db_breakpoints_inserted, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @db_breakpoint_list, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %1, align 8
  br label %6

6:                                                ; preds = %23, %4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @db_map_current(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @BKPT_WRITE(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %15, %9
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %1, align 8
  br label %6

27:                                               ; preds = %6
  store i32 1, i32* @db_breakpoints_inserted, align 4
  br label %28

28:                                               ; preds = %27, %0
  ret void
}

declare dso_local i64 @db_map_current(i32) #1

declare dso_local i32 @BKPT_WRITE(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
