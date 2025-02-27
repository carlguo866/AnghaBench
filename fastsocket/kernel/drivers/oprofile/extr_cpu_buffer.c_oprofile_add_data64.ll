; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_cpu_buffer.c_oprofile_add_data64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_cpu_buffer.c_oprofile_add_data64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oprofile_add_data64(%struct.op_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.op_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.op_entry* %0, %struct.op_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.op_entry*, %struct.op_entry** %4, align 8
  %7 = getelementptr inbounds %struct.op_entry, %struct.op_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

11:                                               ; preds = %2
  %12 = load %struct.op_entry*, %struct.op_entry** %4, align 8
  %13 = call i32 @op_cpu_buffer_get_size(%struct.op_entry* %12)
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %27

16:                                               ; preds = %11
  %17 = load %struct.op_entry*, %struct.op_entry** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @op_cpu_buffer_add_data(%struct.op_entry* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %27

22:                                               ; preds = %16
  %23 = load %struct.op_entry*, %struct.op_entry** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 32
  %26 = call i32 @op_cpu_buffer_add_data(%struct.op_entry* %23, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %21, %15, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @op_cpu_buffer_get_size(%struct.op_entry*) #1

declare dso_local i32 @op_cpu_buffer_add_data(%struct.op_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
