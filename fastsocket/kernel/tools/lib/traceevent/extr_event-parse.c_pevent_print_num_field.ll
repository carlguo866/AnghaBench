; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_print_num_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_print_num_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.event_format = type { i32 }
%struct.pevent_record = type { i32 }
%struct.format_field = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"CAN'T FIND FIELD \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pevent_print_num_field(%struct.trace_seq* %0, i8* %1, %struct.event_format* %2, i8* %3, %struct.pevent_record* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.event_format*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pevent_record*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.format_field*, align 8
  %15 = alloca i64, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.event_format* %2, %struct.event_format** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.pevent_record* %4, %struct.pevent_record** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.event_format*, %struct.event_format** %10, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call %struct.format_field* @pevent_find_field(%struct.event_format* %16, i8* %17)
  store %struct.format_field* %18, %struct.format_field** %14, align 8
  %19 = load %struct.format_field*, %struct.format_field** %14, align 8
  %20 = icmp ne %struct.format_field* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %35

22:                                               ; preds = %6
  %23 = load %struct.format_field*, %struct.format_field** %14, align 8
  %24 = load %struct.pevent_record*, %struct.pevent_record** %12, align 8
  %25 = getelementptr inbounds %struct.pevent_record, %struct.pevent_record* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pevent_read_number_field(%struct.format_field* %23, i32 %26, i64* %15)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %35

30:                                               ; preds = %22
  %31 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %31, i8* %32, i64 %33)
  store i32 %34, i32* %7, align 4
  br label %43

35:                                               ; preds = %29, %21
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %35
  store i32 -1, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local %struct.format_field* @pevent_find_field(%struct.event_format*, i8*) #1

declare dso_local i64 @pevent_read_number_field(%struct.format_field*, i32, i64*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
