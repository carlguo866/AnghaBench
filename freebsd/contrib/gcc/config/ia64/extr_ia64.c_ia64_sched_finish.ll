; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_sched_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_sched_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"// Finishing schedule.\0A\00", align 1
@reload_completed = common dso_local global i64 0, align 8
@current_sched_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"//    finishing %d-%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ia64_sched_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_sched_finish(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i64, i64* @reload_completed, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %48

14:                                               ; preds = %10
  %15 = load i64, i64* @reload_completed, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @final_emit_insn_group_barriers(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_sched_info, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_sched_info, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bundling(i32* %20, i32 %21, i32 %24, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %17
  %32 = load i32*, i32** %3, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_sched_info, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @NEXT_INSN(i32 %38)
  %40 = call i32 @INSN_UID(i32 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_sched_info, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PREV_INSN(i32 %43)
  %45 = call i32 @INSN_UID(i32 %44)
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %34, %31, %17
  br label %48

48:                                               ; preds = %13, %47, %14
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @final_emit_insn_group_barriers(i32*) #1

declare dso_local i32 @bundling(i32*, i32, i32, i32) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local i32 @NEXT_INSN(i32) #1

declare dso_local i32 @PREV_INSN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
