; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_output_check_banner.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_output_check_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@user_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PG_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"Performing Consistency Checks on Old Live Server\0A------------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Performing Consistency Checks\0A-----------------------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_check_banner(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_opts, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @PG_REPORT, align 4
  %10 = call i32 @pg_log(i32 %9, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0))
  br label %14

11:                                               ; preds = %5, %1
  %12 = load i32, i32* @PG_REPORT, align 4
  %13 = call i32 @pg_log(i32 %12, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @pg_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
