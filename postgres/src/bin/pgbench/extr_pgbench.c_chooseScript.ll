; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_chooseScript.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_chooseScript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@num_scripts = common dso_local global i32 0, align 4
@total_weight = common dso_local global i64 0, align 8
@sql_script = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @chooseScript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chooseScript(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @num_scripts, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* @total_weight, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call i64 @getrand(i32* %11, i32 0, i64 %13)
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %25, %9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sql_script, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub nsw i64 %23, %22
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %15
  %26 = load i64, i64* %5, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %15, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @getrand(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
