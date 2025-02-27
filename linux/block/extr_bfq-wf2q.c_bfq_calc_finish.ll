; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_calc_finish.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_calc_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_entity = type { i32, i64, i32 }
%struct.bfq_queue = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"calc_finish: serv %lu, w %d\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"calc_finish: start %llu, finish %llu, delta %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_entity*, i64)* @bfq_calc_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_calc_finish(%struct.bfq_entity* %0, i64 %1) #0 {
  %3 = alloca %struct.bfq_entity*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_entity* %0, %struct.bfq_entity** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  %7 = call %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity* %6)
  store %struct.bfq_queue* %7, %struct.bfq_queue** %5, align 8
  %8 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  %9 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  %14 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @bfq_delta(i64 %12, i32 %15)
  %17 = add nsw i64 %11, %16
  %18 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  %19 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %21 = icmp ne %struct.bfq_queue* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %24 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  %29 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = call i32 (i32, %struct.bfq_queue*, i8*, i64, i64, ...) @bfq_log_bfqq(i32 %25, %struct.bfq_queue* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %31)
  %33 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %34 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %37 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  %38 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  %42 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  %46 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @bfq_delta(i64 %44, i32 %47)
  %49 = call i32 (i32, %struct.bfq_queue*, i8*, i64, i64, ...) @bfq_log_bfqq(i32 %35, %struct.bfq_queue* %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %43, i64 %48)
  br label %50

50:                                               ; preds = %22, %2
  ret void
}

declare dso_local %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity*) #1

declare dso_local i64 @bfq_delta(i64, i32) #1

declare dso_local i32 @bfq_log_bfqq(i32, %struct.bfq_queue*, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
