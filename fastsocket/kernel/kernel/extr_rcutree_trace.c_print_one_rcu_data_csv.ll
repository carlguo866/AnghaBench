; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree_trace.c_print_one_rcu_data_csv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree_trace.c_print_one_rcu_data_csv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rcu_data = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%d,%s,%ld,%ld,%d,%ld,%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\22N\22\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\22Y\22\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c",%lu,%lu\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c",%ld,%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.rcu_data*)* @print_one_rcu_data_csv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_one_rcu_data_csv(%struct.seq_file* %0, %struct.rcu_data* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.rcu_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.rcu_data* %1, %struct.rcu_data** %4, align 8
  %5 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %6 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %5, i32 0, i32 12
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %58

10:                                               ; preds = %2
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %13 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %16 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @cpu_is_offline(i32 %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %22 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %23 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %26 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %29 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %32 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %35 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.seq_file*, i8*, i32, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %40 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %43 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 (%struct.seq_file*, i8*, i32, i8*, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %50 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %53 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (%struct.seq_file*, i8*, i32, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %51, i8* %56)
  br label %58

58:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, ...) #1

declare dso_local i64 @cpu_is_offline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
