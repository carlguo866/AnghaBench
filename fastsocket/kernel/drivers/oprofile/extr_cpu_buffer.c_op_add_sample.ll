; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_cpu_buffer.c_op_add_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_cpu_buffer.c_op_add_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oprofile_cpu_buffer = type { i32 }
%struct.op_entry = type { i32 }
%struct.op_sample = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oprofile_cpu_buffer*, i64, i64)* @op_add_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_add_sample(%struct.oprofile_cpu_buffer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.oprofile_cpu_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.op_entry, align 4
  %9 = alloca %struct.op_sample*, align 8
  store %struct.oprofile_cpu_buffer* %0, %struct.oprofile_cpu_buffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call %struct.op_sample* @op_cpu_buffer_write_reserve(%struct.op_entry* %8, i32 0)
  store %struct.op_sample* %10, %struct.op_sample** %9, align 8
  %11 = load %struct.op_sample*, %struct.op_sample** %9, align 8
  %12 = icmp ne %struct.op_sample* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %24

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.op_sample*, %struct.op_sample** %9, align 8
  %19 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.op_sample*, %struct.op_sample** %9, align 8
  %22 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = call i32 @op_cpu_buffer_write_commit(%struct.op_entry* %8)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.op_sample* @op_cpu_buffer_write_reserve(%struct.op_entry*, i32) #1

declare dso_local i32 @op_cpu_buffer_write_commit(%struct.op_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
