; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_d_path_exe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_d_path_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c" exe=\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" exe=(null)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_log_d_path_exe(%struct.audit_buffer* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %7 = icmp ne %struct.mm_struct* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %22

9:                                                ; preds = %2
  %10 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %11 = call %struct.file* @get_mm_exe_file(%struct.mm_struct* %10)
  store %struct.file* %11, %struct.file** %5, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = icmp ne %struct.file* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %22

15:                                               ; preds = %9
  %16 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = call i32 @audit_log_d_path(%struct.audit_buffer* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = call i32 @fput(%struct.file* %20)
  br label %25

22:                                               ; preds = %14, %8
  %23 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %24 = call i32 @audit_log_format(%struct.audit_buffer* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %15
  ret void
}

declare dso_local %struct.file* @get_mm_exe_file(%struct.mm_struct*) #1

declare dso_local i32 @audit_log_d_path(%struct.audit_buffer*, i8*, i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
